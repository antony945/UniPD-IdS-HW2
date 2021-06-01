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

package org.tribuo.clustering.evaluation;

import org.tribuo.Model;
import org.tribuo.Prediction;
import org.tribuo.clustering.ClusterID;
import org.tribuo.evaluation.AbstractEvaluator;
import org.tribuo.evaluation.Evaluator;
import org.tribuo.evaluation.metrics.EvaluationMetric.Average;
import org.tribuo.evaluation.metrics.MetricID;
import org.tribuo.evaluation.metrics.MetricTarget;
import org.tribuo.provenance.EvaluationProvenance;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * A {@link Evaluator} for clustering using {@link ClusterID}s.
 */
public class ClusteringEvaluator extends AbstractEvaluator<ClusterID, ClusteringMetric.Context, ClusteringEvaluation, ClusteringMetric> {

    @Override
    protected Set<ClusteringMetric> createMetrics(Model<ClusterID> model) {
        Set<ClusteringMetric> metrics = new HashSet<>();

        // Just using Average.micro here arbitrarily, NMI/AMI don't actually need targets
        MetricTarget<ClusterID> target = new MetricTarget<>(Average.MICRO);
        metrics.add(ClusteringMetrics.NORMALIZED_MI.forTarget(target));
        metrics.add(ClusteringMetrics.ADJUSTED_MI.forTarget(target));

        return metrics;
    }

    @Override
    protected ClusteringMetric.Context createContext(Model<ClusterID> model, List<Prediction<ClusterID>> predictions) {
        return new ClusteringMetric.Context(model, predictions);
    }

    @Override
    protected ClusteringEvaluation createEvaluation(ClusteringMetric.Context context,
                                                    Map<MetricID<ClusterID>, Double> results,
                                                    EvaluationProvenance provenance) {
        return new ClusteringEvaluationImpl(results, context, provenance);
    }
}