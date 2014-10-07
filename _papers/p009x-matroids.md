---
layout: paper
type: preprint
arxiv: 1403.0873
authors:
    - franz
    - louis
title: Matroid regression
year: 2014
---

We propose an algebraic combinatorial method for solving large sparse linear systems of
equations locally - that is, a method which can compute single evaluations of the signal
without computing the whole signal. The method scales only in the sparsity of the system
and not in its size, and allows to provide error estimates for any solution method. At
the heart of our approach is the so-called regression matroid, a combinatorial object
associated to sparsity patterns, which allows to replace inversion of the large matrix
with the inversion of a kernel matrix that is constant size. We show that our method
provides the best linear unbiased estimator (BLUE) for this setting and the minimum
variance unbiased estimator (MVUE) under Gaussian noise assumptions, and furthermore we
show that the size of the kernel matrix which is to be inverted can be traded off with
accuracy.
