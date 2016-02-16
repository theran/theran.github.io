---
layout: seminartalk
speaker: Michael Mathioudakis
speakerinst: HIIT
speakershortinst: HIIT
speakerurl: http://www.mmathioudakis.com/
talktitle: "Bump hunting in the dark - Local discrepancy maximization on graphs"
talkdate: 23.10.2014
talktime: 14.15 (sharp!)
talkterm: fall2014
talkplace: TUAS 5
dinnerplace: Bar № 9
dinnertime: "19.00"
dinnerurl: http://bar9.net
title: "Large Structures Seminar - Michael Mathioudakis"
---

We study the problem of discrepancy maximization on graphs:
given a set of nodes $$Q$$ of an underlying graph $$G$$, we aim
to identify a connected subgraph of $$G$$ that contains many
more nodes from $$Q$$ than other nodes. This variant of the
discrepancy-maximization problem extends the well-known
notion of "bump hunting" in the Euclidean space.

We consider the problem under two access models.
In the unrestricted-access model, the whole graph $$G$$ is
given as input, while in the local-access model
we can only retrieve the neighbors of a given node in $$G$$
using a possibly slow and costly interface.

We prove that the basic problem of discrepancy maximization
on graphs is NP-hard, and empirically evaluate the
performance of four heuristics for solving it.
For the local-access model we consider three different
algorithms that aim to recover a part of $$G$$ large enough
to contain an optimal solution, while using only a
small number of calls to the neighbor-function interface.
We perform a thorough experimental evaluation in order to
understand the trade offs between the proposed methods and
their dependencies on characteristics of the input graph.
