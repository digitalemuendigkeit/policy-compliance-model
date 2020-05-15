# Create model
function initialize_model()
    abm = AgentBasedModel(getAgentType(), getSpace())
    agent = SimplePolicyAgent(0,0,(0,0))
    add_agent!(agent, abm)

    abm
end
