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

package org.tribuo.multilabel.evaluation;

import org.tribuo.Model;
import org.tribuo.Prediction;
import org.tribuo.evaluation.AbstractEvaluator;
import org.tribuo.evaluation.Evaluator;
import org.tribuo.evaluation.metrics.EvaluationMetric.Average;
import org.tribuo.evaluation.metrics.MetricID;
import org.tribuo.evaluation.metrics.MetricTarget;
import org.tribuo.multilabel.MultiLabel;
import org.tribuo.provenance.EvaluationProvenance;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * An {@link Evaluator} for {@link MultiLabel} problems.
 */
public class MultiLabelEvaluator extends AbstractEvaluator<MultiLabel, MultiLabelMetric.Context, MultiLabelEvaluation, MultiLabelMetric> {

    @Override
    protected Set<MultiLabelMetric> createMetrics(Model<MultiLabel> model) {
        Set<MultiLabelMetric> metrics = new HashSet<>();
        //
        // Populate labelwise values
        for (MultiLabel label : model.getOutputIDInfo().getDomain()) {
            MetricTarget<MultiLabel> tgt = new MetricTarget<>(label);
            metrics.add(MultiLabelMetrics.TP.forTarget(tgt));
            metrics.add(MultiLabelMetrics.FP.forTarget(tgt));
            metrics.add(MultiLabelMetrics.TN.forTarget(tgt));
            metrics.add(MultiLabelMetrics.FN.forTarget(tgt));
            metrics.add(MultiLabelMetrics.PRECISION.forTarget(tgt));
            metrics.add(MultiLabelMetrics.RECALL.forTarget(tgt));
            metrics.add(MultiLabelMetrics.F1.forTarget(tgt));
        }

        //
        // Populate averaged values.
        for (Average avg : Average.values()) {
            MetricTarget<MultiLabel> tgt = new MetricTarget<>(avg);
            metrics.add(MultiLabelMetrics.TP.forTarget(tgt));
            metrics.add(MultiLabelMetrics.FP.forTarget(tgt));
            metrics.add(MultiLabelMetrics.TN.forTarget(tgt));
            metrics.add(MultiLabelMetrics.FN.forTarget(tgt));
            metrics.add(MultiLabelMetrics.PRECISION.forTarget(tgt));
            metrics.add(MultiLabelMetrics.RECALL.forTarget(tgt));
            metrics.add(MultiLabelMetrics.F1.forTarget(tgt));
        }

        // Target doesn't matter for balanced error rate, so we just use Average.macro
        // as it's the macro average of the recalls.
        MetricTarget<MultiLabel> dummy = new MetricTarget<>(Average.MACRO);
        metrics.add(MultiLabelMetrics.BALANCED_ERROR_RATE.forTarget(dummy));

        return metrics;
    }

    @Override
    protected MultiLabelMetric.Context createContext(Model<MultiLabel> model, List<Prediction<MultiLabel>> predictions) {
        return MultiLabelMetric.buildContext(model, predictions);
    }

    @Override
    protected MultiLabelEvaluation createEvaluation(MultiLabelMetric.Context context,
                                                        Map<MetricID<MultiLabel>, Double> results,
                                                        EvaluationProvenance provenance) {
        return new MultiLabelEvaluationImpl(results, context, provenance);
    }
}