# Start here to test the policy-compliance model
using Pkg
Pkg.activate(".")

# load other packages
using Agents

# Load submodules of the simulations
include(joinpath("..", "src", "PolicyCompliance.jl"))

include("../src/simulation/simulation.jl")


# run the actual simulation


abm = initialize_model()
(data, mdata) = runsimulation(abm)

#data_export tbd
