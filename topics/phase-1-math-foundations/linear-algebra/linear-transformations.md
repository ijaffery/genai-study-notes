---
layout: concept
title: Linear Transformations & Matrices
permalink: /topics/phase-1-math-foundations/linear-algebra/linear-transformations/
subtitle: Seeing matrices as geometric warps of space
source: https://www.3blue1brown.com/lessons/linear-transformations/
source_title: 3Blue1Brown — Essence of Linear Algebra
---

> *"Unfortunately, no one can be told what the Matrix is. You have to see it for yourself."* — Morpheus, *The Matrix*

If there's one idea that makes all of linear algebra start to click, it's this: **think of matrices as transformations of space**, not as grids of numbers to crunch.

---

## 1. Transformations Are Functions

A **transformation** is essentially a fancy word for a function — something that takes inputs and produces outputs. In linear algebra, transformations take vectors in and spit out other vectors:

$$T\left( \begin{bmatrix} x \\ y \end{bmatrix} \right) = \begin{bmatrix} x' \\ y' \end{bmatrix}$$

So why say "transformation" instead of "function"? Because it suggests a way to **visualize** the input-output relationship: **movement**.

If a transformation takes an input vector to an output vector, imagine that input vector **moving** to its output:

![Single vector transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/vector-transformation.svg)

To understand the transformation as a whole, imagine **every possible vector** moving to its corresponding output:

![All vectors transform]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/transform-vectors.svg)

It gets very crowded with all vectors as arrows, so let's represent each vector as **a single point** — the point where its tip sits. Now we watch every point in space move to some other point:

![Many-point transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/many-points-transformation.svg)

For 2D transformations, we use an **infinite grid** to get a feel for the shape of the transformation. A static copy of the original grid helps track where everything ends up:

![Grid transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/transform-grid.svg)

This visualization technique can reveal beautiful patterns:

![Example: parabolic transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/example-parabola.jpg)
![Example: circular transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/transformations-are-functions/example-circle.jpg)

---

## 2. What Makes a Transformation "Linear"?

Not all transformations are equal. Linear algebra restricts itself to a special type that's easier to understand: **linear transformations**.

Visually, a transformation is **linear** if it satisfies two conditions:

1. **All lines must remain lines** — they don't get curved
2. **The origin must remain fixed** in place

![Lines remain lines, origin fixed]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/lines-remain-lines-origin-fixed.jpg)

Examples of non-linear transformations:

- **Curved lines:** Lines get bent → not linear
  ![Non-linear: curved]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/nonlinear-curved.jpg)

- **Moving origin:** The origin shifts position → not linear
  ![Non-linear: origin moves]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/nonlinear-origin-moves.jpg)

- **Hidden curvature:** Horizontal and vertical lines look straight, but diagonal lines curve → not linear
  ![Non-linear: diagonal curves]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/nonlinear-diagonal.jpg)
  ![Diagonal lines get curved]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/nonlinear-diagonal-curved.jpg)

A linear transformation **keeps grid lines parallel and evenly spaced**, though it can change angles between perpendicular lines:

![Parallel, evenly-spaced grid lines]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/grid-lines-parallel.jpg)

A simple example: **rotation about the origin**:

![Rotation about origin]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/example-rotate.jpg)

**Which of the following are linear transformations?**

![Question: identify linear transforms]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/what-makes-linear/question1.jpg)

---

## 3. Matrices: Describing Transformations Numerically

### 3.1 The Key Insight: Track the Basis Vectors

How do you describe a transformation numerically? If you wanted to program an animation, what formula tells you where a given vector lands?

![How to describe a transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/how-to-describe.svg)

Here's the stunning insight: **you only need to record where the two basis vectors $\hat{\imath}$ and $\hat{\jmath}$ go**, and everything else follows automatically.

![Record where basis vectors land]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/record-basis.svg)

### 3.2 Why Tracking Basis Vectors Is Enough

Consider a vector $\vec{\mathbf{v}}$ with coordinates $\begin{bmatrix}-1\\2\end{bmatrix}$, meaning it equals $-1\hat{\imath} + 2\hat{\jmath}$:

![Linear transformation setup]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/linear-setup.svg)

Apply some transformation and follow all three vectors. The defining property of linear transformations — **grid lines remain parallel and evenly spaced** — has a powerful consequence:

The place where $\vec{\mathbf{v}}$ lands will be **$(-1)$ times the vector where $\hat{\imath}$ landed, plus $2$ times the vector where $\hat{\jmath}$ landed**:

![The transformation in action]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/linear-transformation.svg)

In other words: **$\vec{\mathbf{v}}$ started as a linear combination of $\hat{\imath}$ and $\hat{\jmath}$, and it ends up at the same linear combination of where those two basis vectors landed**:

![Same linear combination after transform]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/linear-combination.svg)

This gives us a technique to deduce where any vector lands **without needing to watch the transformation directly**:

![Technique for finding output]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/technique.svg)

This works for **any** vector. Given a transformation that maps $\hat{\imath} \to \begin{bmatrix} 1 \\ -2 \end{bmatrix}$ and $\hat{\jmath} \to \begin{bmatrix} 3 \\ 0 \end{bmatrix}$:

![Many vectors transform]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/many-vectors.svg)

For a general vector with coordinates $(x, y)$:

$$L(\vec{\mathbf{v}}) = x\begin{bmatrix} 1 \\ -2 \end{bmatrix} + y\begin{bmatrix} 3 \\ 0 \end{bmatrix} = \begin{bmatrix} 1x + 3y \\ -2x + 0y \end{bmatrix}$$

Given any vector, you can tell where it lands using this formula.

### 3.3 The Matrix: Packaging Four Numbers

The incredible fact: **a 2D linear transformation is completely described by just four numbers** — the two coordinates of where $\hat{\imath}$ lands, and the two coordinates of where $\hat{\jmath}$ lands.

We package these four numbers into a **2×2 matrix**, where the **columns** are the transformed basis vectors:

$$\begin{bmatrix} \uparrow & \uparrow \\ \left|\phantom{\begin{smallmatrix}\uparrow\end{smallmatrix}}\right| & \left|\phantom{\begin{smallmatrix}\uparrow\end{smallmatrix}}\right| \\ \hat{\imath}_{\text{new}} & \hat{\jmath}_{\text{new}} \\ \left|\phantom{\begin{smallmatrix}\downarrow\end{smallmatrix}}\right| & \left|\phantom{\begin{smallmatrix}\downarrow\end{smallmatrix}}\right| \\ \downarrow & \downarrow \end{bmatrix}$$

![Matrix notation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/matrix-notation.svg)

To find where a vector goes, **multiply its coordinates by the corresponding column, then add**:

![Matrix input-output]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/matrix-input-output.svg)

For a general matrix $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$ and vector $\begin{bmatrix} x \\ y \end{bmatrix}$:

$$\begin{bmatrix} a & b \\ c & d \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = x\begin{bmatrix} a \\ c \end{bmatrix} + y\begin{bmatrix} b \\ d \end{bmatrix} = \begin{bmatrix} ax + by \\ cx + dy \end{bmatrix}$$

![General formula]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/matrix-general.svg)

The old way: high schoolers memorize "multiply across rows, down columns" with no intuition.

![Traditional view]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/matrix-intuition.svg)

The new way: **columns are transformed basis vectors, and the result is a linear combination of those columns**. This is *actual understanding*.

![Visual intuition]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/matrices/matrix-intuition-visual.svg)

---

## 4. Examples

### 4.1 Rotation

Rotate all of space **90° counterclockwise**:

- $\hat{\imath} \to \begin{bmatrix} 0 \\ 1 \end{bmatrix}$
- $\hat{\jmath} \to \begin{bmatrix} -1 \\ 0 \end{bmatrix}$

The rotation matrix has these as columns:

$$\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$$

![Rotation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/rotation.svg)

Any vector after 90° CCW rotation = multiply by this matrix:

![Rotation matrix applied]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/rotation-matrix.svg)

### 4.2 Shear

A **shear** transformation — one column stays fixed, the other shifts:

- $\hat{\imath} \to \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ (stays put)
- $\hat{\jmath} \to \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (slides right)

$$\begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$$

![Shear]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/shear.svg)

![Shear matrix]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/shear-matrix.svg)
![Shear matrix formula]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/shear-matrix-tex.svg)

### 4.3 Reading a Matrix as a Transformation

Given a matrix with columns $\begin{bmatrix} 1 \\ 2 \end{bmatrix}$ and $\begin{bmatrix} 3 \\ 1 \end{bmatrix}$, the transformation moves $\hat{\imath}$ to $\begin{bmatrix} 1 \\ 2 \end{bmatrix}$ and $\hat{\jmath}$ to $\begin{bmatrix} 3 \\ 1 \end{bmatrix}$. Every other vector follows by the same linear combination rule.

### 4.4 Linearly Dependent Columns

If the two columns of a matrix are **linearly dependent** (one is a scaled version of the other), the transformation **squishes all of 2D space onto a single line** — the 1D span of those two vectors:

![Linearly dependent columns]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/examples/linearly-dependent.svg)

This is a geometric interpretation of linear dependence: **the transformation collapses dimensions**.

---

## 5. Formal Properties

Linearly dependent columns collapse the space. The two algebraic properties of linear transformations make this inevitable:

$$T(\vec{\mathbf{u}} + \vec{\mathbf{v}}) = T(\vec{\mathbf{u}}) + T(\vec{\mathbf{v}})$$
$$T(c\vec{\mathbf{v}}) = cT(\vec{\mathbf{v}})$$

**Preserves sums:** The transform of a sum = the sum of the transforms.

**Preserves scaling:** Scaling the input, then transforming, = transforming, then scaling.

These two properties explain **why** tracking basis vectors is enough. Write any vector as a linear combination:

$$\vec{\mathbf{v}} = \begin{bmatrix} -1 \\ 2 \end{bmatrix} = -1\hat{\imath} + 2\hat{\jmath}$$

Apply the transformation, using both properties:

$$T(\vec{\mathbf{v}}) = T(-1\hat{\imath} + 2\hat{\jmath}) = -1 \cdot T(\hat{\imath}) + 2 \cdot T(\hat{\jmath})$$

![Linear combination before]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/formal-properties/linear-comb-before.svg)
![Linear combination after]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/formal-properties/linear-comb-after.svg)

The transformation of any vector = the same linear combination of the **transformed basis vectors**.

This is why the formal algebraic properties and the geometric notion of "linearity" are two sides of the same coin. Both imply: **if you know where $\hat{\imath}$ and $\hat{\jmath}$ land, you know everything**.

![Applying the transformation]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-transformations/formal-properties/applying-transformation.svg)

---

## Key Takeaways

1. **Transformations = functions that move vectors.** Visualize them as warping a grid, not as formulas.
2. **Linear = grid lines stay parallel + evenly spaced + origin stays fixed.** No curves, no shifting.
3. **A 2×2 matrix is a compact description of a transformation.** Its columns are where $\hat{\imath}$ and $\hat{\jmath}$ land.
4. **Matrix-vector multiplication** = scale the columns by the vector's coordinates, then add. The columns *are* the transformed basis vectors.
5. **Linearly dependent columns** = the transformation collapses space onto a line (or point).
6. **Two formal properties** ($T(\vec{u}+\vec{v}) = T(\vec{u})+T(\vec{v})$ and $T(c\vec{v}) = cT(\vec{v})$) are the algebraic expression of "linearity" — they guarantee that tracking basis vectors is sufficient.

---

## Exercises

{% exercise "Rotate by Matrix" %}
Compute the result of multiplying the vector $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ by the 90° CCW rotation matrix $\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$:

$$\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 \\ 3 \end{bmatrix}$$

{% quiz %}
- A: $\begin{bmatrix} -3 \\ 2 \end{bmatrix}$ ✔
- B: $\begin{bmatrix} -2 \\ 3 \end{bmatrix}$
- C: $\begin{bmatrix} 3 \\ 2 \end{bmatrix}$
- D: $\begin{bmatrix} 3 \\ -2 \end{bmatrix}$
{% endquiz %}

{% hint %}Matrix-vector multiplication: first column scaled by x (2) + second column scaled by y (3).{% endhint %}
{% solution %}
$$\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 \\ 3 \end{bmatrix} = 2 \cdot \begin{bmatrix} 0 \\ 1 \end{bmatrix} + 3 \cdot \begin{bmatrix} -1 \\ 0 \end{bmatrix} = \begin{bmatrix} 0 - 3 \\ 2 + 0 \end{bmatrix} = \begin{bmatrix} -3 \\ 2 \end{bmatrix}$$

As expected for a 90° CCW rotation: $(x, y) \to (-y, x)$.
{% endsolution %}
{% endexercise %}

{% exercise "Find the Output" %}
Given the transformation described by the matrix $\begin{bmatrix} 1 & -6 \\ 4 & 2 \end{bmatrix}$, what vector is the input $\begin{bmatrix} 3 \\ -4 \end{bmatrix}$ transformed to?

$$\begin{bmatrix} 1 & -6 \\ 4 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -4 \end{bmatrix} = \text{?}$$

{% quiz %}
- A: $\begin{bmatrix} 28 \\ 8 \end{bmatrix}$
- B: $\begin{bmatrix} -22 \\ 10 \end{bmatrix}$
- C: $\begin{bmatrix} 27 \\ 4 \end{bmatrix}$ ✔
- D: $\begin{bmatrix} 22 \\ 10 \end{bmatrix}$
{% endquiz %}

{% hint %}First column × 3 + second column × (-4).{% endhint %}
{% solution %}
$$\begin{bmatrix} 1 & -6 \\ 4 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -4 \end{bmatrix} = 3 \cdot \begin{bmatrix} 1 \\ 4 \end{bmatrix} + (-4) \cdot \begin{bmatrix} -6 \\ 2 \end{bmatrix} = \begin{bmatrix} 3 + 24 \\ 12 - 8 \end{bmatrix} = \begin{bmatrix} 27 \\ 4 \end{bmatrix}$$

Each component: $3 \times 1 + (-4) \times (-6) = 27$ (first), $3 \times 4 + (-4) \times 2 = 4$ (second).
{% endsolution %}
{% endexercise %}

{% exercise "Basis Vector Tracking" %}
A transformation has the effect:

$$\hat{\imath} \to \begin{bmatrix} -1 \\ 1 \end{bmatrix}, \quad \hat{\jmath} \to \begin{bmatrix} -2 \\ -1 \end{bmatrix}$$

How will this transform the input vector $\begin{bmatrix} -3 \\ -1 \end{bmatrix}$?

{% quiz %}
- A: $\begin{bmatrix} 5 \\ -2 \end{bmatrix}$ ✔
- B: $\begin{bmatrix} 4 \\ -1 \end{bmatrix}$
- C: $\begin{bmatrix} -5 \\ 2 \end{bmatrix}$
- D: $\begin{bmatrix} 5 \\ 1 \end{bmatrix}$
{% endquiz %}

{% hint %}The input $\begin{bmatrix} -3 \\ -1 \end{bmatrix} = -3\hat{\imath} + (-1)\hat{\jmath}$. Apply the same linear combination to the transformed basis vectors.{% endhint %}
{% solution %}
$$L\left(\begin{bmatrix} -3 \\ -1 \end{bmatrix}\right) = -3 \cdot \begin{bmatrix} -1 \\ 1 \end{bmatrix} + (-1) \cdot \begin{bmatrix} -2 \\ -1 \end{bmatrix} = \begin{bmatrix} 3 \\ -3 \end{bmatrix} + \begin{bmatrix} 2 \\ 1 \end{bmatrix} = \begin{bmatrix} 5 \\ -2 \end{bmatrix}$$

Each component: $-3 \times (-1) + (-1) \times (-2) = 5$ (first), $-3 \times 1 + (-1) \times (-1) = -2$ (second).
{% endsolution %}
{% endexercise %}

{% exercise "Rotation Matrix" %}
What is the rotation matrix that rotates all of space **90° counterclockwise**?

{% quiz %}
- A: $\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$ ✔
- B: $\begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$
- C: $\begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$
- D: $\begin{bmatrix} -1 & 0 \\ 0 & 1 \end{bmatrix}$
{% endquiz %}

{% hint %}Where do $\hat{\imath} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ and $\hat{\jmath} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$ land after 90° CCW rotation?{% endhint %}
{% solution %}
After 90° CCW rotation:
- $\hat{\imath} = \begin{bmatrix} 1 \\ 0 \end{bmatrix} \to \begin{bmatrix} 0 \\ 1 \end{bmatrix}$ (points up)
- $\hat{\jmath} = \begin{bmatrix} 0 \\ 1 \end{bmatrix} \to \begin{bmatrix} -1 \\ 0 \end{bmatrix}$ (points left)

The matrix with these columns is:

$$\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$$
{% endsolution %}
{% endexercise %}

{% exercise "Shear Matrix" %}
A shear transformation slides points horizontally proportional to their y-coordinate. It keeps $\hat{\imath}$ fixed and moves $\hat{\jmath}$ to $\begin{bmatrix} 1 \\ 1 \end{bmatrix}$. What is the matrix?

{% solution %}
- $\hat{\imath} \to \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ (first column)
- $\hat{\jmath} \to \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (second column)

$$\begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$$

This matrix transforms $\begin{bmatrix} x \\ y \end{bmatrix}$ into $\begin{bmatrix} x + y \\ y \end{bmatrix}$ — each point is shifted right by its y-coordinate. The horizontal grid lines slide by different amounts, creating the shear effect.
{% endsolution %}
{% endexercise %}

{% exercise "Reverse Engineering a Matrix" %}
A transformation maps:

$$\begin{bmatrix} 2 \\ 3 \end{bmatrix} \to \begin{bmatrix} 8 \\ 1 \end{bmatrix}, \quad \begin{bmatrix} -2 \\ 1 \end{bmatrix} \to \begin{bmatrix} 0 \\ 3 \end{bmatrix}$$

Which of the following could be the matrix?

{% quiz %}
- A: $\begin{bmatrix} 1 & 2 \\ -1 & 1 \end{bmatrix}$ ✔
- B: $\begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}$
- C: $\begin{bmatrix} 1 & -2 \\ -1 & 1 \end{bmatrix}$
- D: $\begin{bmatrix} 1 & 2 \\ 1 & -1 \end{bmatrix}$
{% endquiz %}

{% hint %}Test each matrix by applying it to $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} -2 \\ 1 \end{bmatrix}$.{% endhint %}
{% solution %}
Testing **A**: $\begin{bmatrix} 1 & 2 \\ -1 & 1 \end{bmatrix}$:

$$\begin{bmatrix} 1 & 2 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 2 \\ 3 \end{bmatrix} = \begin{bmatrix} 2 + 6 \\ -2 + 3 \end{bmatrix} = \begin{bmatrix} 8 \\ 1 \end{bmatrix} \quad \checkmark$$

$$\begin{bmatrix} 1 & 2 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} -2 \\ 1 \end{bmatrix} = \begin{bmatrix} -2 + 2 \\ 2 + 1 \end{bmatrix} = \begin{bmatrix} 0 \\ 3 \end{bmatrix} \quad \checkmark$$

Both mappings match. Answer is **A**.

**Bonus: how to find the columns directly?** We need to express the inputs as linear combinations of $\hat{\imath}$ and $\hat{\jmath}$ (which they already are), so the transformed basis vectors are the columns. Since $\begin{bmatrix} 2 \\ 3 \end{bmatrix} = 2\hat{\imath} + 3\hat{\jmath}$, and the transform preserves linear combinations:

$$L(2\hat{\imath} + 3\hat{\jmath}) = 2L(\hat{\imath}) + 3L(\hat{\jmath}) = \begin{bmatrix} 8 \\ 1 \end{bmatrix}$$

With two inputs, we get two equations in four unknowns — solvable as a system. The columns of A are $L(\hat{\imath}) = \begin{bmatrix} 1 \\ -1 \end{bmatrix}$ and $L(\hat{\jmath}) = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$.
{% endsolution %}
{% endexercise %}

{% exercise "Dependent Columns" %}
If a 2×2 matrix has columns $\begin{bmatrix} 3 \\ -1 \end{bmatrix}$ and $\begin{bmatrix} -6 \\ 2 \end{bmatrix}$, what does the transformation do to 2D space?

{% hint %}Are the columns linearly dependent? What is their span?{% endhint %}
{% solution %}
Check: $\begin{bmatrix} -6 \\ 2 \end{bmatrix} = -2 \cdot \begin{bmatrix} 3 \\ -1 \end{bmatrix}$. The columns are **linearly dependent** (collinear).

Since both transformed basis vectors lie on the same line through the origin, **every vector in 2D gets squished onto this line**. The transformation collapses the full 2D plane onto a 1D line — the span of $\begin{bmatrix} 3 \\ -1 \end{bmatrix}$.

Any point $(x, y)$ maps to:

$$x\begin{bmatrix} 3 \\ -1 \end{bmatrix} + y\begin{bmatrix} -6 \\ 2 \end{bmatrix} = (x - 2y)\begin{bmatrix} 3 \\ -1 \end{bmatrix}$$

The output is always a scalar multiple of $\begin{bmatrix} 3 \\ -1 \end{bmatrix}$.
{% endsolution %}
{% endexercise %}

{% exercise "Conceptual" %}
**Why must the origin stay fixed under a linear transformation?** Prove it using the two formal properties:

$$T(\vec{\mathbf{u}} + \vec{\mathbf{v}}) = T(\vec{\mathbf{u}}) + T(\vec{\mathbf{v}}) \quad \text{and} \quad T(c\vec{\mathbf{v}}) = cT(\vec{\mathbf{v}})$$

{% hint %}What is the zero vector? Can you express it using scaling?{% endhint %}
{% solution %}
The zero vector satisfies $0 \cdot \vec{\mathbf{v}} = \vec{0}$ for any $\vec{\mathbf{v}}$. Using the scaling property:

$$T(\vec{0}) = T(0 \cdot \vec{\mathbf{v}}) = 0 \cdot T(\vec{\mathbf{v}}) = \vec{0}$$

**Therefore, the zero vector (the origin) must always map to itself.** This is why the "origin stays fixed" condition in the geometric definition is actually a consequence of the algebraic properties — not an additional requirement.

Alternatively, using the sum property:

$$T(\vec{0}) = T(\vec{0} + \vec{0}) = T(\vec{0}) + T(\vec{0})$$

Subtract $T(\vec{0})$ from both sides: $T(\vec{0}) = \vec{0}$.
{% endsolution %}
{% endexercise %}

---

## What's Next

[Matrix multiplication as composition →](https://www.3blue1brown.com/lessons/matrix-multiplication/) — What happens when you apply two transformations in sequence?
