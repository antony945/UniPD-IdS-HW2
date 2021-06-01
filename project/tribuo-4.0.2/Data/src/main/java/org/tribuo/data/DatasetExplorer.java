/*
 * Copyright (c) 2015-2020, Oracle and/or its affiliates. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.tribuo.data;

import com.oracle.labs.mlrg.olcut.command.Command;
import com.oracle.labs.mlrg.olcut.command.CommandGroup;
import com.oracle.labs.mlrg.olcut.command.CommandInterpreter;
import com.oracle.labs.mlrg.olcut.config.ConfigurationManager;
import com.oracle.labs.mlrg.olcut.config.Option;
import com.oracle.labs.mlrg.olcut.config.Options;
import org.tribuo.Dataset;
import org.tribuo.VariableInfo;
import org.tribuo.data.csv.CSVSaver;
import org.jline.builtins.Completers;
import org.jline.reader.Completer;
import org.jline.reader.impl.completer.NullCompleter;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * A CLI for exploring a serialised {@link Dataset}.
 */
public final class DatasetExplorer implements CommandGroup {
    private static final Logger logger = Logger.getLogger(DatasetExplorer.class.getName());

    protected CommandInterpreter shell;

    private Dataset<?> dataset;

    public DatasetExplorer() {
        shell = new CommandInterpreter();
        shell.setPrompt("dataset sh% ");
    }

    @Override
    public String getName() {
        return "Dataset Explorer";
    }

    @Override
    public String getDescription() {
        return "Commands for inspecting a Dataset.";
    }

    public Completer[] fileCompleter() {
        return new Completer[]{
                new Completers.FileNameCompleter(),
                new NullCompleter()
        };
    }

    /**
     * Start the command shell
     */
    public void startShell() {
        shell.add(this);
        shell.start();
    }

    @Command(usage = "<filename> - Load a dataset from disk.", completers="fileCompleter")
    public String loadDataset(CommandInterpreter ci, File path) {
        try (ObjectInputStream ois = new ObjectInputStream(new BufferedInputStream(new FileInputStream(path)))) {
            dataset = (Dataset<?>) ois.readObject();
        } catch (ClassNotFoundException e) {
            logger.log(Level.SEVERE,"Failed to load class from stream " + path.getAbsolutePath(),e);
            return "Failed to load dataset";
        } catch (FileNotFoundException e) {
            logger.log(Level.SEVERE,"Failed to open file " + path.getAbsolutePath(),e);
            return "Failed to load dataset";
        } catch (IOException e) {
            logger.log(Level.SEVERE,"IOException when reading from file " + path.getAbsolutePath(),e);
            return "Failed to load dataset";
        }

        return "Loaded dataset from path " + path.toString();
    }

    @Command(usage="Shows the information on a particular feature")
    public String featureInfo(CommandInterpreter ci, String featureName) {
        VariableInfo f = dataset.getFeatureMap().get(featureName);
        if (f != null) {
            return "" + f.toString();
        } else {
            return "Feature " + featureName + " not found.";
        }
    }

    @Command(usage="Shows the output information.")
    public String outputInfo(CommandInterpreter ci) {
        return dataset.getOutputInfo().toReadableString();
    }

    @Command(usage="Shows the number of rows in the dataset")
    public String numExamples(CommandInterpreter ci) {
        return ""+dataset.getData().size();
    }

    @Command(usage="Shows the number of features in the dataset")
    public String numFeatures(CommandInterpreter ci) {
        return ""+dataset.getFeatureMap().size();
    }

    @Command(usage="<min count> - Shows the number of features that occurred more than min count times.")
    public String minCount(CommandInterpreter ci, int minCount) {
        int counter = 0;
        for (VariableInfo f : dataset.getFeatureMap()) {
            if (f.getCount() > minCount) {
                counter++;
            }
        }
        return counter + " features occurred more than " + minCount + " times.";
    }

    @Command(usage="Shows the output statistics")
    public String showLabelStats(CommandInterpreter ci) {
        return "Label histogram : \n" + dataset.getOutputInfo().toReadableString();
    }

    @Command(usage="Saves out the data as a CSV.")
    public String saveCSV(CommandInterpreter ci, String path) {
        CSVSaver saver = new CSVSaver();
        try {
            saver.save(Paths.get(path),dataset,CSVSaver.DEFAULT_RESPONSE);
            return "Saved";
        } catch (IOException e) {
            e.printStackTrace(ci.out);
            return "Failed to save to CSV.";
        }
    }

    @Command(usage="Shows the dataset provenance")
    public String showProvenance(CommandInterpreter ci) {
        return dataset.getProvenance().toString();
    }

    public static class DatasetExplorerOptions implements Options {
        @Option(charName='f',longName="filename",usage="Dataset file to load. Optional.")
        public String modelFilename;
    }

    public static void main(String[] args) {
        DatasetExplorerOptions options = new DatasetExplorerOptions();
        ConfigurationManager cm = new ConfigurationManager(args,options,false);
        DatasetExplorer driver = new DatasetExplorer();
        if (options.modelFilename != null) {
            logger.log(Level.INFO,driver.loadDataset(driver.shell, new File(options.modelFilename)));
        }
        driver.startShell();
    }
}
