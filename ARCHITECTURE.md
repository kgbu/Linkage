Architecture
===========

Neuron and Synapse

* Neuron : (mostly) Fixed number of members. pool)
* Synapse : Dynamic pool. add(initial weight)/delete()/vanish(decay) by itself

Synapse is a "Neighborhood list(connection) of Neuron" with weight of infection

Scenarios
=========

* A neuron is excited -> neighbors receive signal via synapse(connection)
* Some neurons excited at the same time may become acquaintance at some rate; this is stochastic process. 
    * (Note) This mechanism shall be constructed by network structure itself, but still it is FIXME matter.

to be acquaintance process model : shout out loud case

1. A neuron is excited, and shout itself name on scoreboard : Scoreboard ! self()

2. May some other neuron shouts at the same time (maybe stimulated by the same reason)

3. That neuron immediately check scoreboard to who is shouting. : receive from Scoreboard after get-request.

4. If others are shouting, the neuron may know others name. 

5. If that synchronization summed and over threshold, linkage(synapse) is made between them. (this rule may look like that of Cell automata)


FIXME
=====

* How to sync and connect neurons by network structure itself.
* Determine positive but very small synapse weight value does work as a 'supressor' or not. Do we need negative weight?
* Dendrites（樹状突起）branch and supressive synapse connection can be mimiced by larger scale of connection (of Neuron)?
