---
layout: concept
title: Vectors
subtitle: Three perspectives, coordinate systems, and operations
source: https://www.3blue1brown.com/lessons/vectors/
source_title: 3Blue1Brown — Essence of Linear Algebra
---

> *"The introduction of numbers as coordinates is an act of violence."* — Hermann Weyl

The fundamental building block of linear algebra is the **vector**. Before any calculations, we need to understand what a vector *is*.

---

## 1. Three Interpretations of Vectors

### 1.1 Physics — Arrows in Space

A vector is an **arrow** defined by:
- **Magnitude** (length)
- **Direction**

Same length + same direction = same vector, regardless of position.

![Magnitude and direction](/topics/phase-1-math-foundations/linear-algebra/images/introduction/magnitude-direction.svg)

2D vectors in a plane; 3D vectors in our space:

![2D vs 3D vectors](/topics/phase-1-math-foundations/linear-algebra/images/introduction/2d-3d-vectors.jpg)

### 1.2 Computer Science — Ordered Lists

A vector is an **ordered list** of numbers.

```
[square footage, price] = [2600, 300000]
```

"Dimension" = length of the list. Order matters.

### 1.3 Mathematician — Addition & Scaling

A vector is **anything** where you can sensibly:
1. **Add** two vectors together
2. **Multiply** a vector by a number (scalar)

Most abstract view. Hints that addition and scaling are the core operations.

![Three perspectives](/topics/phase-1-math-foundations/linear-algebra/images/introduction/perspectives.svg)

---

## 2. Coordinate Systems

### 2.1 Building a Coordinate System

1. **Two axes** — horizontal x-axis, vertical y-axis
2. **Origin** — intersection point; "home base" for all vectors
3. **Unit distance** — defines what "1" means
4. **Tick marks** — spaced by the unit
5. **Grid lines** — extending tick marks across the plane

![Axes](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/axes.svg)
![Origin](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/origin.svg)
![Tick marks](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/tick-marks.svg)
![Grid](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/grid.svg)

### 2.2 Vectors as Arrows from the Origin

**Convention:** Picture every vector as an arrow **starting at the origin**.

![Vector as arrow from origin](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/vector-arrow.svg)

Coordinates $(x, y)$ are *instructions*:
- Walk $x$ units along the x-axis (right = positive, left = negative)
- Then walk $y$ units parallel to the y-axis (up = positive, down = negative)

![Coordinates as instructions](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/coordinates.svg)

Vectors written **vertically** with brackets:

$$\begin{bmatrix} x \\ y \end{bmatrix}$$

Every pair of numbers → exactly one vector. Every vector → exactly one pair.

**3D:** Add a z-axis perpendicular to both x and y. Vectors become triplets:

$$\begin{bmatrix} x \\ y \\ z \end{bmatrix}$$

![3D coordinates](/topics/phase-1-math-foundations/linear-algebra/images/coordinate-systems/coordinates-3d.svg)

---

## 3. Vector Operations

*Every topic in linear algebra revolves around these two operations.*

### 3.1 Vector Addition

**Geometric rule (tip-to-tail):**
1. Slide vector **b** so its *tail* touches the *tip* of vector **a**
2. The sum **a + b** = arrow from origin to tip of moved **b**

![Addition prep](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/addition-prep.svg)

![Sum of two vectors](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/addition.svg)

**Why:** Each vector = a movement. Move along **a**, then **b**, equals moving along **a + b** directly. (Same idea as $2 + 5 = 7$ on a number line.)

![Number line analogy](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/number-line.svg)

**Numerical rule — add component-wise:**

$$\begin{bmatrix} x_1 \\ y_1 \end{bmatrix} + \begin{bmatrix} x_2 \\ y_2 \end{bmatrix} = \begin{bmatrix} x_1 + x_2 \\ y_1 + y_2 \end{bmatrix}$$

Example:

$$\begin{bmatrix} 1 \\ 2 \end{bmatrix} + \begin{bmatrix} 3 \\ -1 \end{bmatrix} = \begin{bmatrix} 4 \\ 1 \end{bmatrix}$$

Walk 1 right, 2 up, 3 right, 1 down → reorganize to $(1+3)$ right, $(2-1)$ up = **4 right, 1 up**.

![Component-wise addition](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/addition-components.svg)

### 3.2 Scaling (Multiplying by a Scalar)

Multiplying a vector by a number **scales** it — stretching, squishing, or flipping:

| Example | Effect |
|---------|--------|
| $2 \cdot \vec{v}$ | Stretches the vector to **2×** its original length |
| $\frac{1}{3} \cdot \vec{v}$ | Squishes it down to **one-third** its original length |
| $-1.5 \cdot \vec{v}$ | **Flips** the vector around, then stretches by a factor of **1.5** |

![Scaling by 2x](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/scaling-2x.svg)
![Scaling by 1/3](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/scaling-thirds.svg)
![Scaling by -1.5](/topics/phase-1-math-foundations/linear-algebra/images/vector-operations/scaling-negative.svg)

This process of stretching, squishing, and sometimes reversing direction is called *scaling*. When a number like `2`, `1/3`, or `-1.5` acts this way — scaling some vector — it's called a *scalar*. In linear algebra, *scalar* is used interchangeably with *number*, since one of the main things numbers do is scale vectors.

**Numerical rule — multiply every component:**

$$k \cdot \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} kx \\ ky \end{bmatrix}$$

Example:

$$2 \cdot \begin{bmatrix} 3 \\ -1 \end{bmatrix} = \begin{bmatrix} 6 \\ -2 \end{bmatrix}$$

---

## Key Takeaways

1. **Three views** of vectors — arrows, lists, abstract objects. Power of linear algebra = translating between them.
2. **Coordinate systems** give numerical representation of geometric arrows.
3. **Vectors start at the origin** by convention.
4. **Addition** = component-wise + geometrically tip-to-tail.
5. **Scaling** = multiply every component by a number.

---

## Exercises

{% exercise "Coordinates" %}
What vector represents **4 units down** and **7 units to the right**?

{% quiz %}
- A: $$\begin{bmatrix}-4 \\ 7\end{bmatrix}$$
- B: $$\begin{bmatrix}-7 \\ 4\end{bmatrix}$$
- C: $$\begin{bmatrix} 7 \\ -4 \end{bmatrix}$$ ✔
- D: $$\begin{bmatrix} 4 \\ 7 \end{bmatrix}$$
{% endquiz %}

{% hint %}Positive x is right, negative y is down.{% endhint %}
{% solution %}
7 units right = positive x → $x = 7$. 4 units down = negative y → $y = -4$.

$$\begin{bmatrix} 7 \\ -4 \end{bmatrix}$$
{% endsolution %}
{% endexercise %}

{% exercise "Addition" %}
Compute the sum:

$$\begin{bmatrix} 4 \\ -2 \end{bmatrix} + \begin{bmatrix} 6 \\ 2 \end{bmatrix}$$

{% hint %}Add component-wise: $(x_1 + x_2,\; y_1 + y_2)$.{% endhint %}
{% solution %}
$$\begin{bmatrix} 4 + 6 \\ -2 + 2 \end{bmatrix} = \begin{bmatrix} 10 \\ 0 \end{bmatrix}$$

The sum is a 10-unit rightward vector with no vertical displacement.
{% endsolution %}
{% endexercise %}

{% exercise "Scaling" %}
Compute:

$$\frac{1}{3} \cdot \begin{bmatrix} 12 \\ 9 \end{bmatrix}$$

{% hint %}Multiply every component by the scalar.{% endhint %}
{% solution %}
$$\begin{bmatrix} 12 \cdot \frac{1}{3} \\ 9 \cdot \frac{1}{3} \end{bmatrix} = \begin{bmatrix} 4 \\ 3 \end{bmatrix}$$
{% endsolution %}
{% endexercise %}

{% exercise "Mixed" %}
Solve each:

1. $$\begin{bmatrix} -3 \\ 5 \end{bmatrix} + \begin{bmatrix} 7 \\ -2 \end{bmatrix}$$
2. $$-2 \cdot \begin{bmatrix} 3 \\ -4 \end{bmatrix}$$
3. $$\begin{bmatrix} 0 \\ 0 \end{bmatrix} + \begin{bmatrix} 1 \\ -5 \end{bmatrix}$$
4. $$\frac{2}{3} \cdot \begin{bmatrix} 9 \\ 15 \end{bmatrix}$$

{% solution %}
**1.** Component-wise addition:

$$\begin{bmatrix} -3 + 7 \\ 5 + (-2) \end{bmatrix} = \begin{bmatrix} 4 \\ 3 \end{bmatrix}$$

**2.** Scale every component:

$$\begin{bmatrix} -2 \cdot 3 \\ -2 \cdot (-4) \end{bmatrix} = \begin{bmatrix} -6 \\ 8 \end{bmatrix}$$

**3.** The zero vector is the additive identity:

$$\begin{bmatrix} 0 + 1 \\ 0 + (-5) \end{bmatrix} = \begin{bmatrix} 1 \\ -5 \end{bmatrix}$$

**4.** Scale every component:

$$\begin{bmatrix} 9 \cdot \frac{2}{3} \\ 15 \cdot \frac{2}{3} \end{bmatrix} = \begin{bmatrix} 6 \\ 10 \end{bmatrix}$$
{% endsolution %}
{% endexercise %}

{% exercise "Conceptual" %}
**Q:** Why doesn't a vector's position matter in the physics perspective?

{% hint %}What does a vector represent? A fixed point in space? Or something else?{% endhint %}
{% solution %}
A vector represents a *movement* (distance + direction), not a *location*. Walking 3 steps north then 4 steps east lands you at the same destination regardless of where you started. Only the displacement matters — not the starting point.

This is why we conventionally draw vectors **starting from the origin**: it makes coordinates easy to read, but the vector itself is defined by its components, not its position.
{% endsolution %}
{% endexercise %}

---

## What's Next

[Span, Linear Combinations & Basis](span/) — What vectors can you actually reach?
