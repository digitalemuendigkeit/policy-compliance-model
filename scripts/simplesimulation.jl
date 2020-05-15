# Start here to test the policy-compliance model
using Pkg
Pkg.activate(".")

# load other packages
using Agents

# Load submodules of the simulations
include(joinpath("..", "src", "PolicyCompliance.jl"))
