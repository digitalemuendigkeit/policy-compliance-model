#

# The simulation gets some input from other simulations
# Every x step ?
#
# DataFrame
# Time
# susceptible
# Infected (?)
# Symptomatic
# Hospitalized
# Dead
# Recovered
#
# only SEII2R have compliance because HD are fully-compliant
# E is only knowable from "Nowcasting" or similar things
#


# Every agent has an agent-state from SEIIHDR, but not all are knowable for
# other agents

# From the delta between time stamps recreate the states in our agents.

using Agents


include("../agents/agent.jl")
include("../spaces/network.jl")
include("../dataimport/modelproperties.jl")
include("stepping.jl")
include("evaluation.jl")
include("../dataimport/loadmodel.jl")

# to allow a unique signature of the model configurtion
# the getAgentType function will determine the agent type
# from a configuration file.

mprops = getModelProperties()

function getAgentType()
    return SimplePolicyAgent
end



# same as above
function getSpace()
        props = Dict("type" => "barabasi",
                     "n" => 100,
                     "k" => 2,
                     "n0" => 10
        )
    generateSpace(props)
end


function getSpace()
        props = Dict("type" => "watts",
                     "n" => 100,
                     "k" => 2,
                     "beta" => 0.5
        )
    generateSpace(props)
end





# method for running
function runsimulation(abm)

 run!(abm, agents_step!, 100;
    adata =  a_data_props,
    mdata = m_data_props,
    replicates = 10,
    parallel = true)


end

# run the actual simulation


abm = initialize_model()
(data, mdata) = runsimulation(abm)

#data_export tbd
