---
layout: paper
type: preprint
arxiv: "2007.06550"
authors:
    - bob
    - shlomo
    - louis
title: Reconstruction in one dimension from unlabeled Euclidean lengths
year: 2020
---

Let $$G$$ be a $$3$$-connected graph with $$n$$ vertices and $$m$$ edges. Let $$\mathbf{p}$$ be a randomly chosen mapping of these $$n$$ vertices to the integer range $$[1..2^b]$$ for $$b\ge m2$$. Let $$\mathbf{l}$$ be the vector of $$m$$ Euclidean lengths of $$G$$'s edges under $$\mathbf{p}$$. In this paper, we show that, WHP over $$\mathbf{p}$$, we can efficiently reconstruct both $$G$$ and $$\mathbf{p}$$ from $$\mathbf{l}$$. In contrast to this average case complexity, this reconstruction problem is NP-HARD in the worst case. In fact, even the labeled version of this problem (reconstructing $$\mathbf{p}$$ given both $$G$$ and $$\mathbf{l}$$) is NP-HARD. We also show that our results stand in the presence of small amounts of error in $$\mathbf{l}$$, and in the real setting with approximate length measurements. 

Our method is based on older ideas that apply lattice reduction to solve certain SUBSET-SUM problems, WHP. We also rely on an algorithm of Seymour that can efficiently reconstruct a graph given an independence oracle for its matroid.