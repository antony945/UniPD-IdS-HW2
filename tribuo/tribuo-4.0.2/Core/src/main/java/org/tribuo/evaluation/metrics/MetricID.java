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

package org.tribuo.evaluation.metrics;

import com.oracle.labs.mlrg.olcut.util.Pair;
import org.tribuo.Output;
import org.tribuo.evaluation.Evaluation;

/**
 * Just an easier-to-read alias for {@code Pair<MetricTarget<T>, String>}.
 * <p>
 * Used as a key in metric result maps. See {@link Evaluation#asMap()}.
 * <p>
 * @param <T> The type of output.
 */
public final class MetricID<T extends Output<T>> extends Pair<MetricTarget<T>, String> {
    private static final long serialVersionUID = 1L;

    public MetricID(MetricTarget<T> target, String metricName) {
        super(target, metricName);
    }

    @Override
    public String toString() {
        String targetStr = (getA().getOutputTarget().isPresent()) ?
                getA().getOutputTarget().get().toString() :
                getA().getAverageTarget().get().name();
        return String.format("MetricID{metric==%s target=%s}", getB(), targetStr);
    }
}