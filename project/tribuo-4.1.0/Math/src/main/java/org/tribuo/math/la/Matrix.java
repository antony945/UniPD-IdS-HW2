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

package org.tribuo.math.la;

/**
 * Interface for 2 dimensional {@link Tensor}s.
 * <p>
 * Matrices have immutable sizes and immutable indices (so {@link DenseSparseMatrix} can't grow).
 */
public interface Matrix extends Tensor, Iterable<MatrixTuple> {

    /**
     * Gets an element from this {@link Matrix}.
     * @param i The index for the first dimension.
     * @param j The index for the second dimension.
     * @return The value at matrix[i][j].
     */
    public double get(int i, int j);

    /**
     * Sets an element at the supplied location.
     * @param i The index for the first dimension.
     * @param j The index for the second dimension.
     * @param value The value to be stored at matrix[i][j].
     */
    public void set(int i, int j, double value);

    /**
     * Adds the argument value to the value at the supplied index.
     * @param i The index for the first dimension.
     * @param j The index for the second dimension.
     * @param value The value to add.
     */
    public void add(int i, int j, double value);

    /**
     * The size of the first dimension.
     * @return The size of the first dimension.
     */
    public int getDimension1Size();

    /**
     * The size of the second dimension.
     * @return The size of the second dimension.
     */
    public int getDimension2Size();

    /**
     * The number of non-zero elements in that row.
     * <p>
     * An element could be active and zero, if it was active on construction.
     *
     * @param row The index of the row.
     * @return The number of non-zero elements.
     */
    public int numActiveElements(int row);

    /**
     * Multiplies this Matrix by a {@link SGDVector} returning a vector of the appropriate size.
     * <p>
     * The input must have dimension equal to {@link Matrix#getDimension2Size()}.
     * @param input The input vector.
     * @return A new {@link SGDVector} of size {@link Matrix#getDimension1Size()}.
     */
    public SGDVector leftMultiply(SGDVector input);

    /**
     * Multiplies this Matrix by a {@link SGDVector} returning a vector of the appropriate size.
     * <p>
     * The input must have dimension equal to {@link Matrix#getDimension1Size()}.
     * @param input The input vector.
     * @return A new {@link SGDVector} of size {@link Matrix#getDimension2Size()}.
     */
    public SGDVector rightMultiply(SGDVector input);

    /**
     * Multiplies this Matrix by another {@link Matrix} returning a matrix of the appropriate size.
     * <p>
     * The input must have dimension 1 equal to {@link Matrix#getDimension2Size()}.
     * @param input The input matrix.
     * @return A new {@link Matrix} of size {@link Matrix#getDimension1Size()}, {@code input.getDimension2Size()}.
     */
    public Matrix matrixMultiply(Matrix input);

    /**
     * Multiplies this Matrix by another {@link Matrix} returning a matrix of the appropriate size.
     * <p>
     * Must obey the rules of matrix multiplication after the transposes are applied.
     * @param input The input matrix.
     * @param transposeThis Implicitly transposes this matrix just for the multiplication.
     * @param transposeOther Implicitly transposes other just for the multiplication.
     * @return A new {@link Matrix}.
     */
    public Matrix matrixMultiply(Matrix input, boolean transposeThis, boolean transposeOther);

    /**
     * Generates a {@link DenseVector} representing the sum of each row.
     * @return A new {@link DenseVector} of size {@link Matrix#getDimension1Size()}.
     */
    public DenseVector rowSum();

    /**
     * Scales each row by the appropriate value in the {@link DenseVector}.
     * @param scalingCoefficients A {@link DenseVector} with size {@link Matrix#getDimension1Size()}.
     */
    public void rowScaleInPlace(DenseVector scalingCoefficients);

    /**
     * Extract a row as an {@link SGDVector}.
     * <p>
     * This refers to the same values as the matrix, so updating this vector will update the matrix.
     * @param i The index of the row to extract.
     * @return An {@link SGDVector}.
     */
    public SGDVector getRow(int i);

}
