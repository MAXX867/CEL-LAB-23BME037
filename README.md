---

# 🔥 Industrial Furnace Temperature Model

### Euler Method vs Exact Solution (MATLAB)

---

## 📘 Project Description

This project models the temperature rise of a steel furnace using a first-order differential equation. The solution is obtained using:

* ✅ Euler’s Method (Numerical)
* ✅ Exact Analytical Solution
* ✅ Error Comparison

The goal is to understand how temperature changes over time and how numerical methods approximate real physical systems.

---

## 🏭 Physical Model

The furnace temperature is governed by:

[
\frac{dT}{dt} = 10 - 0.05T
]

Where:

* (T(t)) = Furnace temperature (°C)
* (t) = Time (minutes)
* Initial condition: (T(0) = 30^\circ C)

---

## 🔥 Physical Interpretation

* The term **10** represents constant heating input.
* The term **0.05T** represents heat loss proportional to temperature.

As temperature increases:

* Heat loss increases.
* Net heating reduces.
* Temperature eventually stabilizes.

---

## 🎯 Steady-State Temperature

Steady state occurs when:

[
\frac{dT}{dt} = 0
]

So,

[
10 - 0.05T = 0
]

[
T = 200^\circ C
]

### Meaning:

At 200°C:

* Heat supplied = 10 units
* Heat lost = 0.05 × 200 = 10 units

So,

> Heat gained = Heat lost → Temperature becomes constant.

---

## 🧮 Methods Used

### 1️⃣ Euler Method (Numerical Approximation)

Uses iterative formula:

[
T_{n+1} = T_n + h(10 - 0.05T_n)
]

* Step size (h = 1)
* Simple and easy to implement
* Introduces small numerical error

---

### 2️⃣ Exact Analytical Solution

The exact solution is:

[
T(t) = 200 + (30 - 200)e^{-0.05t}
]

* 100% mathematically accurate
* Used for comparison

---

## 📊 Output

The program generates:

* Temperature vs Time plot (Euler vs Exact)
* Percentage Error vs Time
* Steady-state temperature display

---

## 📌 Key Learning Outcomes

* Understanding first-order linear ODEs
* Numerical solution using Euler’s Method
* Comparison between exact and numerical solutions
* Error analysis in numerical methods
* Behavior of thermal systems in manufacturing

---

## 🧠 Engineering Insight

This model behaves like:

* RC charging circuit
* Newton’s Law of Cooling
* Industrial heating systems
* First-order control systems

It demonstrates how real systems gradually approach equilibrium.

---
