---
layout: page
permalink: /2016/summer/edge-directions/
title: Edge direction sets of graphs
---

This web page is evolving.

## The setup and questions

Given a finite simple graph $$G=(V,E)$$ and a dimension $$d$$, we can 
look at all the injective placements $$p : V\to \mathbb{A}^d$$.

Here,  $$\mathbb{A}^d$$ is affine $$d$$-space, which we 
identify with a ``standard affine patch'' of projective space, 
i.e., points with homogeneous coordinates $$[\cdots : 1]$$.

For any $$p$$, we have a derived point set of $$e(i,j) := p(j) - p(i)$$ 
``edge directions'', which we can think of as a point configuration 
at infinity (since the difference vector has last coordinate $$0$$).

The question we are looking at is: what, for a fixed $$G$$, does the 
set look like?

$$\left\{ e : \text{$e$ is the edge directions for some $p$}\right\}$$

Call this the *edge direction set* of $$p$$

For example, we know there are some small graphs where $$e$$ is always on a 
quadric surface.  We want to work out which these are.

## Some references

A good reference for realization space related problems is the book [*Realization spaces of Polytopes*][rspjrg]
by [Jürgen Richter-Gebert][jrg]

[jrg]: https://www-m10.ma.tum.de/bin/view/Lehrstuhl/RichterGebert
[rspjrg]: http://geometry50.ma.tum.de/foswiki/pub/Lehrstuhl/PublikationenJRG/19_RealizationSpaces.pdf

There is a theorem that lets us compute the dimension of the edge direction set (even without
explict reference to $$p$$).  See Theorem 8.2.2 in the [survey paper][matroidssurvey] by Walter Whiteley.

[matroidssurvey]: /assets/2016/summer/Whiteley - Matroids Survey.pdf

Another starting point for us is that minimum degree $d$$ is enough to make the edge direction
set avoid a quadric.  This is Proposition 4.3 of Bob Connelly's paper on [Generic global rigidity][bobggr].
(You will need to be on campus or use the library proxy to get this.)

[bobggr]: http://www.ams.org/mathscinet-getitem?mr=2132290
