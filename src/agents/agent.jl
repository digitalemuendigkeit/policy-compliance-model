# Abstract agent definitions
using Agents


abstract type PolicyAgent <: AbstractAgent end


mutable struct SimplePolicyAgent <: PolicyAgent
    id::Int # The identifier number of the agent
    pos::Tuple{Int,Int} # The x, y location of the agent on a 2D grid
end


# Agent Perception
# SEIIHDR in their local 1kmGrid
# SEIIHDR in the global environment
# SEIIHDR from Network
# Opinion of other Agents
# Media Response

# Agent Opinions
# Vector of opinions
# Media (TV, RADIO, NEWSPAPER, Social Media)

# Description of Agent Behavior
# Opinion shapes behavior
# Mask Wearing
# Social Distancing
# keep 1.5 Distance
# Work/School
#

# Dampening on Virus output
# Function of Behavior.



## MynotesAndré


## EndnotsAndré
