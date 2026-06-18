---
layout: concept
title: Span, Linear Combinations & Basis
permalink: /topics/phase-1-math-foundations/linear-algebra/span/
---
subtitle: Building spaces from vectors
source: https://www.3blue1brown.com/lessons/span/
source_title: 3Blue1Brown — Essence of Linear Algebra
---

> *"Mathematics requires a small dose, not of genius, but of an imaginative freedom which, in a larger dose, would be insanity."* — Angus K. Rodgers

After understanding vectors and their operations (addition, scaling), we can ask the central question: **what vectors can we actually reach?**

---

## 1. Coordinates as Scalars of Basis Vectors

### 1.1 The Unit Vectors

In the standard $xy$-coordinate system, two special vectors define everything:

- **$\hat{\imath}$** (i-hat) — unit vector pointing right: $\begin{bmatrix} 1 \\ 0 \end{bmatrix}$
- **$\hat{\jmath}$** (j-hat) — unit vector pointing up: $\begin{bmatrix} 0 \\ 1 \end{bmatrix}$

Together, they form the **basis** of the coordinate system.

![Unit vectors $\hat{\imath}$ and $\hat{\jmath}$]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span/unit-vectors.svg)

### 1.2 Coordinates Are Instructions for Scaling

Think of a vector's coordinates as **scalars** that scale the basis vectors:

$$\begin{bmatrix} 3 \\ -2 \end{bmatrix} = 3 \cdot \hat{\imath} + (-2) \cdot \hat{\jmath}$$

The x-coordinate scales $\hat{\imath}$ (stretch by 3), the y-coordinate scales $\hat{\jmath}$ (flip and stretch by 2), and the result is their sum.

![Coordinates as scalars of basis vectors]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span/coordinates-as-scalars.svg)

This reframing — coordinates as *scalars multiplying basis vectors* — is the key to understanding span.

---

## 2. Choosing Different Basis Vectors

You can pick **any** pair of vectors to define a new coordinate system.

Take two vectors pointing in different directions:
- One up and to the right
- One down and to the right

What vectors can you reach by scaling each and adding them? **Every 2D vector.** Different basis vectors give you a different way to go back and forth between pairs of numbers and vectors, but the association is different from the standard $\hat{\imath}$, $\hat{\jmath}$ basis.

![Choosing different basis vectors]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/different-basis/different-basis-vectors.svg)

![All 2D vectors are reachable]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/different-basis/all-vectors-reachable.svg)

$$\begin{bmatrix} -0.8 \\ 1.3 \end{bmatrix} \neq \begin{bmatrix} 3.1 \\ -2.9 \end{bmatrix}$$

The same point gets different coordinates depending on your choice of basis.

---

## 3. Linear Combinations

When you scale two vectors and add them, the result is a **linear combination**:

$$a\vec{\mathbf{v}} + b\vec{\mathbf{w}}$$

Where $a$ and $b$ are scalars.

### 3.1 Why "Linear"?

The word comes from what scalar multiplication produces:

Multiplying a scalar by a vector traces out an **infinite line through the origin**. A linear combination combines two such lines.

![Scalar multiplication traces lines]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-combination/scalar-lines.svg)

### 3.2 Three Cases

**Case 1 — General position (most pairs):** Let both scalars range freely, and you can reach **every point on the 2D plane**. Every 2D vector is within your grasp.

![Free scalars reach the full plane]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-combination/free-scalars.svg)

**Case 2 — Collinear (vectors line up):** The two lines from scalar multiplication are the *same* line. Adding them can't reach outside that line. You're stuck on a single line.

![Collinear vectors span only a line]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/linear-combination/dependent-vectors.svg)

**Case 3 — Zero vectors:** Both vectors are $\vec{0}$, and you're stuck at the origin.

---

## 4. Span

The **span** of a set of vectors is the set of *all possible linear combinations* of those vectors.

In other words: what are all the vectors you can reach using only addition and scaling?

![Visual definition of span]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span/span-visual.svg)

### 4.1 Span in 2D

| Vectors | Span |
|---------|------|
| Two vectors in general position (not collinear) | The entire 2D plane |
| Two collinear vectors (pointing in the same/opposite direction) | A single line through the origin |
| Both are zero vectors | Just the origin (a point) |

### 4.2 Span in 3D

The idea becomes even more interesting in three dimensions:

**Two vectors in 3D:** Their span is a **flat sheet (plane) passing through the origin**. You can imagine turning two knobs to change the two scalars — the tip of the resulting vector traces out this flat sheet.

![Two vectors span a plane in 3D]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/two-vectors-span.svg)

**Adding a third vector** has two possibilities:

1. **Third vector is already on the plane** — the span doesn't change. You're trapped on that same sheet. The third vector is redundant.

![Third vector already on the plane]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/third-on-plane.svg)

2. **Third vector points in a new direction** — it unlocks access to *every possible 3D vector*. As you scale the third vector, it sweeps the plane through all of space.

![Third vector sweeps through all of 3D space]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/third-off-plane.svg)

This is why:
- 2 linearly independent vectors in 3D → span a **plane**
- 3 linearly independent vectors in 3D → span all of **3D space**

![Linear combination of three vectors]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/three-vectors.svg)

---

## 5. Linear Dependence & Independence

### 5.1 Linearly Dependent

Whenever you have multiple vectors and you could **remove one without reducing their span**, they are **linearly dependent**.

In practical terms: one vector (or more) is redundant — it can be expressed as a linear combination of the others. It's already in their span.

**Examples of dependent vectors:**
- Two collinear vectors (one is a scaled version of the other)
- Three vectors in 3D where one lies on the plane of the other two
- Any set containing the zero vector

![Linearly dependent vectors in 3D]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/dependent-3d.svg)

![One vector expressible as linear combination of others]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/dependent-3d-expr.svg)

### 5.2 Linearly Independent

If **each vector adds another dimension to the span** — none is redundant — they are **linearly independent**.

**Examples of independent vectors:**
- Two non-collinear vectors in 2D (span the whole plane)
- Three vectors in 3D not all lying on one plane (span all of 3D space)
- $\hat{\imath}$ and $\hat{\jmath}$ in 2D
- $\hat{\imath}$, $\hat{\jmath}$, $\hat{k}$ in 3D

![Linearly independent vectors in 3D]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/span-3d/independent-3d.svg)

---

## 6. Vectors vs Points

A practical convention for thinking about span:

- **A single vector** → think of it as an **arrow** (has direction + magnitude)

![Vectors as arrows vs. points]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/introduction/magnitude-direction.svg)

- **A collection of vectors** → think of them as **points** (tips of vectors)

When dealing with collections (like all vectors whose tips sit on a line), it's more convenient to represent each vector as the point at its tip. Then:
- A line of vectors → just that **line itself**
- All 2D vectors → the entire **plane**

This convention simplifies mental pictures when reasoning about spans.

---

## Key Takeaways

1. **Coordinates are scalars** that scale basis vectors. The basis determines what those scalars mean.
2. **Linear combination** = scale each vector and add the results: $a\vec{\mathbf{v}} + b\vec{\mathbf{w}}$.
3. **Span** = all possible linear combinations. It's the "reachable space" from a set of vectors.
4. **Two vectors in 2D** → either span the whole plane (independent) or a line (dependent).
5. **In 3D**, two vectors span a plane; three independent vectors span all of 3D space.
6. **Linearly dependent** = at least one vector is redundant (already in the span of others).
7. **Linearly independent** = every vector adds a new dimension to the span.

---

## Exercises

{% exercise "Linear Combination" %}
Compute the linear combination:

$$3 \cdot \begin{bmatrix} 2 \\ -1 \end{bmatrix} + 4 \cdot \begin{bmatrix} -1 \\ 3 \end{bmatrix}$$

{% hint %}Scale each vector separately, then add component-wise.{% endhint %}
{% solution %}
$$3 \cdot \begin{bmatrix} 2 \\ -1 \end{bmatrix} = \begin{bmatrix} 6 \\ -3 \end{bmatrix}$$

$$4 \cdot \begin{bmatrix} -1 \\ 3 \end{bmatrix} = \begin{bmatrix} -4 \\ 12 \end{bmatrix}$$

$$\begin{bmatrix} 6 \\ -3 \end{bmatrix} + \begin{bmatrix} -4 \\ 12 \end{bmatrix} = \begin{bmatrix} 2 \\ 9 \end{bmatrix}$$
{% endsolution %}
{% endexercise %}

{% exercise "Which Span?" (MCQ) %}
**What is the span of $\begin{bmatrix} 3 \\ -2 \end{bmatrix}$ and $\begin{bmatrix} -6 \\ 4 \end{bmatrix}$?**

{% quiz %}
- A: A point
- B: A line ✔
- C: The full 2D plane
{% endquiz %}

{% hint %}Are the two vectors collinear? Check if one is a scalar multiple of the other.{% endhint %}
{% solution %}
Notice that $\begin{bmatrix} -6 \\ 4 \end{bmatrix} = -2 \cdot \begin{bmatrix} 3 \\ -2 \end{bmatrix}$. The vectors are collinear.

Their span is a **line through the origin** in the direction of $\begin{bmatrix} 3 \\ -2 \end{bmatrix}$ (or equivalently, $\begin{bmatrix} -6 \\ 4 \end{bmatrix}$).
{% endsolution %}
{% endexercise %}

{% exercise "Dependent or Independent?" (MCQ) %}
**Which pair of vectors is linearly dependent?**

{% quiz %}
- A: $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} -1 \\ -1.5 \end{bmatrix}$ ✔
- B: $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} 3 \\ 2 \end{bmatrix}$
- C: $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} -3 \\ 2 \end{bmatrix}$
- D: $\begin{bmatrix} 2 \\ 3 \end{bmatrix}$ and $\begin{bmatrix} 1 \\ 2 \end{bmatrix}$
{% endquiz %}

{% hint %}Dependent vectors are collinear — one is a scalar multiple of the other.{% endhint %}
{% solution %}
**A is the answer.** Notice:

$$\begin{bmatrix} 2 \\ 3 \end{bmatrix} = -2 \cdot \begin{bmatrix} -1 \\ -1.5 \end{bmatrix}$$

They are scalar multiples → collinear → linearly dependent. Their span is a line, not a plane.

For the others, check that no scalar $k$ satisfies $\vec{v} = k \cdot \vec{w}$.
{% endsolution %}
{% endexercise %}

{% exercise "Span in 3D" %}
Two vectors in 3D:

$$\vec{a} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \quad \vec{b} = \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$$

What is their span? Is adding $\vec{c} = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$ linearly dependent or independent?

{% hint %}What geometric shape do the first two span? Can $\vec{c}$ be written as a combination of $\vec{a}$ and $\vec{b}$?{% endhint %}
{% solution %}
**Span of $\vec{a}$ and $\vec{b}$:** These span the $xy$-plane (all vectors of the form $\begin{bmatrix} x \\ y \\ 0 \end{bmatrix}$).

**Is $\vec{c}$ dependent?** To be dependent, $\vec{c}$ must be expressible as $s \cdot \vec{a} + t \cdot \vec{b}$:

$$s \cdot \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} + t \cdot \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} = \begin{bmatrix} s \\ t \\ 0 \end{bmatrix}$$

The z-component is always $0$, so we can never get $\begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$. Therefore $\vec{c}$ is **linearly independent** of $\vec{a}$ and $\vec{b}$.

With all three, we now span all of 3D space.
{% endsolution %}
{% endexercise %}

{% exercise "Reconstructing Coordinates" %}
Given the linear combination illustrated below where two basis vectors form an orthogonal grid:

![Orthogonal basis grid]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/questions/orthogonal-basis.svg)

**What are the scalar values $a$ and $b$ that form the vector $\begin{bmatrix} 7 \\ 4 \end{bmatrix}$?**

{% quiz %}
- A: $a = 1, b = -2$
- B: $a = -1, b = 2$
- C: $a = 7, b = 4$ ✔
- D: $a = -2, b = -1$
{% endquiz %}

{% hint %}In the standard basis, what are the coefficients that produce $\begin{bmatrix} 7 \\ 4 \end{bmatrix}$?{% endhint %}
{% solution %}
In the standard basis $\hat{\imath} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ and $\hat{\jmath} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$:

$$\begin{bmatrix} 7 \\ 4 \end{bmatrix} = 7 \cdot \begin{bmatrix} 1 \\ 0 \end{bmatrix} + 4 \cdot \begin{bmatrix} 0 \\ 1 \end{bmatrix}$$

So $a = 7$ and $b = 4$. This is why the coordinates *are* the scalars — they tell you how to scale the basis vectors to reconstruct any target vector.
{% endsolution %}
{% endexercise %}

{% exercise "Conceptual" %}
**The technical definition of "basis" is: a set of linearly independent vectors that span the space.**

Why does this definition make sense, given what you've learned about span and linear independence?

{% hint %}What would go wrong if the vectors weren't independent? If they didn't span?{% endhint %}
{% solution %}
Both conditions are necessary:

1. **Linearly independent:** Ensures no redundancy. Every vector in the basis contributes something unique. If they were dependent, you'd have extra vectors that don't add new dimensions — the description isn't minimal.

2. **Span the space:** Ensures completeness. Every possible vector in the space can be reached. If they don't span, there are vectors you can't represent with that basis.

Together, these conditions give you a **minimal, complete** set of directions to describe every vector in the space. The coordinates relative to this basis are unique — no other combination of scalars produces the same result.
{% endsolution %}
{% endexercise %}

{% exercise "Dependence in 3D" (MCQ) %}
**Given the span of two vectors $\begin{bmatrix} 0 \\ 3 \\ 2 \end{bmatrix}$ and $\begin{bmatrix} 0 \\ 1 \\ -2 \end{bmatrix}$ illustrated below, which of the following vectors is linearly dependent on them?**

![3D dependent or independent]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/images/questions/dependent-or-independent.svg)

{% quiz %}
- A: $\begin{bmatrix} 1 \\ 0 \\ 4 \end{bmatrix}$
- B: $\begin{bmatrix} -2 \\ 4 \\ 0 \end{bmatrix}$
- C: $\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}$
- D: $\begin{bmatrix} 0 \\ -2 \\ 4 \end{bmatrix}$ ✔
{% endquiz %}

{% hint %}Both given vectors have x = 0. Any dependent vector must also have x = 0 (it lies in their span). Check which option is a linear combination of the two.{% endhint %}
{% solution %}
**D is the answer.** First, both given vectors have $x = 0$, so any linear combination will also have $x = 0$. Options A, B, and C all have non-zero x-components, so they're definitely independent.

For D: Check if $\begin{bmatrix} 0 \\ -2 \\ 4 \end{bmatrix}$ is a linear combination:

$$-2 \cdot \begin{bmatrix} 0 \\ 3 \\ 2 \end{bmatrix} + (-2) \cdot \begin{bmatrix} 0 \\ 1 \\ -2 \end{bmatrix} = \begin{bmatrix} 0 \\ -6-2 \\ -4+4 \end{bmatrix} = \begin{bmatrix} 0 \\ -8 \\ 0 \end{bmatrix}$$

Try: $1 \cdot \begin{bmatrix} 0 \\ 3 \\ 2 \end{bmatrix} + (-5) \cdot \begin{bmatrix} 0 \\ 1 \\ -2 \end{bmatrix} = \begin{bmatrix} 0 \\ 3-5 \\ 2+10 \end{bmatrix} = \begin{bmatrix} 0 \\ -2 \\ 12 \end{bmatrix}$

Or simply: $\begin{bmatrix} 0 \\ -2 \\ 4 \end{bmatrix} = -2 \cdot \begin{bmatrix} 0 \\ 1 \\ -2 \end{bmatrix}$. So it's just $-2$ times the second vector — clearly in the span.
{% endsolution %}
{% endexercise %}

---

## What's Next

[Linear Transformations & Matrices](linear-transformations/) — Seeing matrices as geometric warps of space.