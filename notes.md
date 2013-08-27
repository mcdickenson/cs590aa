# Applied Algorithms: CS 590.06 #

Fall 2013, Duke University

## Lecture 1: Algorithm Design

The process of algorithm design:

1. What is the problem you want to solve?
2. What are the computational constraints (at the machine level: memory and time)?
3. Is there a naive algorithm that works for small input size?
4. What are likely input sizes?
5. What are output sizes?

(aka, two step process: goal and assumptions)

### Fibonacci

1. Goal: compute Fibonacci numbers
2. Assumptions: TI calculator
3. Naive algorithm: recursion
4. Assume input size of $10^9$
5. The growth rate of Fibonacci numbers (memory size) grows *exponentially*

#### Naive algorithm: recursion

Here we encounter a problem with the naive algorithm: the recursive method is O($m^2$), where n is an m-bit integer. For n=$10^9$, this will take $10^16$ milliseconds, or about 317 years. 

#### Non-naive algorithm: power method

**put in tex notes with proof, powering trick**

Non-naive algorithm:

1. Compute $M, M^2, ..., M^2^{log n}$ by power method 
2. If $n=2^{j_1}+2^{j_2}+...+2^{j_k}$, then $M^n = \Pi_{i \leq k} M^{2^{j_i}}$
3. Output $F_n$ = upper-right of $M^n$

This is nice, but let's do a time analysis. Our non-naive method requires multiplying an $m=.7n$ bit integer. But the elementary school method of multiplication takes $m^2$ operations... so we're back at 317 years. We need to multiply faster!

#### Fast multiplication

With fast multiplication, we can reduce $O(m^2)$ to $O(m^3)$.

### Summary

We have learned three tricks for Fibonacci:
1. Reduce the computation to matrix multiplications
2. Reduce $n$ to a base-2 number, for fewer multiplication steps
3. Use fast multiplication (and there are even faster ones than we've discussed here, for large-m)

By combining old tricks, new tricks, and careful (not exact) analysis, we can go from something that would take many lifetimes to a task that takes only a few days. In practice, foolish algorithms might not kill you but they could be the death of your startup. 
