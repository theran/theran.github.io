---
layout: paper
type: conference
doi: 10.1145/1377676.1377715
conference: socg
authors:
    - ileana
    - louis
title: Combinatorial genericitity and minimal rigidity
year: 2008
conferenceprocname: SoCG’08
---

A well studied geometric problem, with applications ranging from molecular structure
determination to sensor networks, asks for the reconstruction of a set $$P$$ of $$n$$
unknown points from a finite set of pairwise distances (up to Euclidean isometries). We
are concerned here with a related problem: which sets of distances are minimal with the
property that they allow for the reconstruction of $$P$$, up to a finite set of
possibilities? In the planar case, the answer is known *generically* via the landmark
Maxwell-Laman Theorem from Rigidity Theory, and it leads to a combinatorial answer: the
underlying structure of such a generic minimal collection of distances is a *minimally
rigid* (or Laman) graph, for which very efficient combinatorial decision algorithms
exist. For non-generic cases the situation appears to be dramatically different, with the
best known algorithms relying on exponential-time Gröbner base methods, and some specific
instances known to be NP-hard. Understanding what makes a point set *generic* emerges as
an intriguing geometric question with practical algorithmic consequences.

Several definitions (some but not all equivalent) of genericity appear in the rigidity
literature, and they have either a measure theoretic, topologic or algebraic-geometric
flavor. Some generic point sets appear to be highly degenerate, and still turn out to be
generic. All existing proofs of Laman's Theorem make use at some point of one or another
of these *geometric* genericity assumptions.

The main result of this paper is the first purely combinatorial proof of Laman's theorem,
together with some interesting consequences. Genericity is characterized in terms of a
certain determinant being not identically-zero as a formal polynomial. We relate its
monomial expansion to certain colorings and orientations of the graph and show that these
terms cannot all cancel exactly when the underlying graph is Laman. As a surprising
consequence, genericity emerges as a purely combinatorial concept.
