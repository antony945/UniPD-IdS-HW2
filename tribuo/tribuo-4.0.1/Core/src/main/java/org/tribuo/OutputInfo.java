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

package org.tribuo;

import com.oracle.labs.mlrg.olcut.util.Pair;

import java.io.Serializable;
import java.util.Set;

/**
 * Tracks relevant properties of the appropriate {@link Output} subclass.
 * <p>
 * Can generate a {@link ImmutableOutputInfo} which contains id numbers, and
 * a {@link MutableOutputInfo} for repeated training with more data.
 */
public interface OutputInfo<T extends Output<T>> extends Serializable {

    /**
     * Returns a set of {@link Output} which represent the space of possible
     * values the {@link Output} has taken.
     * <p>
     * For real values this set represents the number of dimensions observed.
     *
     * @return A Set of {@code T}.
     */
    public Set<T> getDomain();

    /**
     * Returns the number of possible values this OutputInfo knows about.
     * <p>
     * For real values this is the number of dimensions observed.
     * @return An int representing the size of the domain.
     */
    public int size();

    /**
     * Returns the number of unknown {@link Output} instances (generated by {@link OutputFactory#getUnknownOutput()})
     * that this OutputInfo has seen.
     *
     * @return The number of unknown outputs observed.
     */
    public int getUnknownCount();

    /**
     * Generates an {@link ImmutableOutputInfo} which has a copy of the data
     * in this {@code OutputInfo}, but also has id values and is immutable.
     * @return An immutable copy of this OutputInfo.
     */
    public ImmutableOutputInfo<T> generateImmutableOutputInfo();

    /**
     * Generates a mutable copy of this {@code OutputInfo}.
     * @return A mutable copy of this OutputInfo.
     */
    public MutableOutputInfo<T> generateMutableOutputInfo();

    /**
     * Generates a copy of this OutputInfo, including it's mutability.
     * @return A copy of the OutputInfo.
     */
    public OutputInfo<T> copy();

    /**
     * Generates a String form of this OutputInfo.
     * <p>
     * This String can contain newlines, tabs and other formatting.
     * @return A formatted String representing this OutputInfo.
     */
    public String toReadableString();

    /**
     * An Iterable over the possible outputs and the number of times they were observed.
     * <p>
     * Provides similar functionality to an iterator over the entrySet of a Map, though this
     * is a copy of the data and immutable.
     *
     * @return Lambda wrapping an iterator over Pairs.
     */
    public Iterable<Pair<String,Long>> outputCountsIterable();

}
