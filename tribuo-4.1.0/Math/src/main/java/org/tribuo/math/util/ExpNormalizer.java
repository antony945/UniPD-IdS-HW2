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

package org.tribuo.math.util;

import java.io.Serializable;
import java.util.Arrays;

/**
 * Normalizes the exponential values of the input array. Used when the input is in log space.
 */
public class ExpNormalizer implements VectorNormalizer, Serializable {
    private static final long serialVersionUID = 1L;

    @Override
    public double[] normalize(double[] input) {
        double[] output = Arrays.copyOf(input, input.length);
        normalizeInPlace(output);
        return output;
    }

    @Override
    public void normalizeInPlace(double[] input) {
        double max = -Double.MAX_VALUE;
        for (int i = 0; i < input.length; i++) {
            if (max < input[i]) {
                max = input[i];
            }
        }
        double sum = 0.0;
        for (int i = 0; i < input.length; i++) {
            input[i] = Math.exp(input[i] - max);
            sum += input[i];
        }
        for (int i = 0; i < input.length; i++) {
            input[i] /= sum;
        }
    }

}
