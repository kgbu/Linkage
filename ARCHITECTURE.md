Architcture
===========

Neuron and Synapse

-Neuron : (mostly) Fixed number of members. pool)
-Synapse : Dynamic pool. add/delete/vanish

Synapse is a "Neighbor list(connection) of Neuron" with weight of infection

Scenarios

-A neuron is excited -> neighbor receive signal via synapse(connection)

-Some neurons excited at the sametime may become acquaintance at some rate; this is stochastic process. This mechanism shall be constructed by network structure itself, but still it is FIXME matter.

to be acquaintance process model : shout out loud case

1) A neuron is excited, and shout itself name on scoreboard : Scoreboard ! self()

1.b) May some other neuron shouts at the same time (maybe stimulated by the same reason)

2) That neuron immediately check scoreboard to who is shouting. : receive from Scoreboard after get-request.

3) If others are shouting, the neuron may know others name. 

4) If that synchronization summed and over threshold, linkage(synapse) is made between them. (this rule may look like that of Cell automata)
