# Abstract network definition


# Networks in agents.jl have nodes, and nodes have lists of AgentIDs

using Agents
using LightGraphs


function generateSpace(properties::Dict)

    if properties["type"] == "barabasi"
        n = properties["n"]
        k = properties["k"]
        n0 = properties["n0"]

        return GraphSpace(LightGraphs.barabasi_albert(n, n0, k))

    end

    if properties["type"] == "watts"
        n = properties["n"]
        k = properties["k"]
        β = properties["beta"]

        return GraphSpace(LightGraphs.watts_strogatz(n,k,β))

    end
end



# this is test, move to tests directory
props = Dict("type" => "barabasi",
             "n" => 100,
             "k" => 2,
             "n0" => 10
)
generateSpace(props)
