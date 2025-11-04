# 🤖 LangGraph Workshop: Building AI Agents for Network Automation

> Learn to build production-ready AI agents for Palo Alto Networks Strata Cloud Manager using LangGraph, LangChain, and Claude

[![Python Version](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![LangGraph](https://img.shields.io/badge/LangGraph-0.2.50+-green.svg)](https://python.langchain.com/docs/langgraph)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/cdot65/langgraph-workshop-notebooks.svg)](https://github.com/cdot65/langgraph-workshop-notebooks/stargazers)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/cdot65/langgraph-workshop-notebooks?quickstart=1)

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Who This Is For](#-who-this-is-for)
- [Learning Path](#%EF%B8%8F-learning-path)
- [Project Structure](#%EF%B8%8F-project-structure)
- [Installation](#%EF%B8%8F-installation)
- [Quick Start](#-quick-start)
- [Notebooks](#-notebooks)
- [Workshop Phases](#%EF%B8%8F-workshop-phases)
- [Key Patterns](#-key-patterns)
- [Contributing](#-contributing)
- [Resources](#-resources)
- [License](#%EF%B8%8F-license)
- [Acknowledgements](#-acknowledgements)

---

## 🎯 Overview

This comprehensive workshop teaches network security engineers how to build AI-powered automation agents using LangGraph and Claude AI. Through 11 progressive notebooks (101-111), you'll master everything from basic type annotations to advanced human-in-the-loop patterns, all while building practical automation for Palo Alto Networks Strata Cloud Manager.

**What Makes This Workshop Unique:**

- **Progressive Learning**: Start with fundamentals, build to advanced AI agents
- **Network-Focused**: All examples use real network automation scenarios
- **Production-Ready**: Learn patterns used in real-world deployments
- **Hands-On**: Every notebook includes practical exercises with SCM configurations
- **No LLM Required for Foundations**: Learn core graph patterns without API costs (notebooks 101-107)

### Key Features

✅ **11 comprehensive notebooks** covering TypedDict to Human-in-the-Loop patterns
✅ **Real SCM integration** with address objects, security rules, and NAT policies
✅ **Progressive complexity** from single-node graphs to multi-tool AI agents
✅ **Cost-aware design** with mock data for foundations, optional LLM for advanced topics
✅ **Production patterns** including error handling, validation, and state management
✅ **Complete documentation** with transcripts and detailed summaries

---

## 🎓 Who This Is For

### Primary Audience: Network Security Engineers

If you work with Palo Alto Networks firewalls and want to leverage AI for automation, this workshop is for you:

- Network administrators managing firewall configurations
- Security engineers building automation workflows
- DevOps/NetOps professionals implementing Infrastructure as Code
- Anyone interested in AI-powered network automation

### Prerequisites

**Required Knowledge:**

- Basic Python syntax (variables, functions, loops, dictionaries)
- Familiarity with Palo Alto Networks concepts (zones, policies, address objects)
- Understanding of network security fundamentals

**Required for Advanced Notebooks (108-111):**

- Anthropic API key (get one at [console.anthropic.com](https://console.anthropic.com/settings/keys))
- Budget awareness: ~$0.25 per 1M tokens for Claude Haiku

**NOT Required:**

- Prior LangGraph or LangChain experience
- Deep machine learning knowledge
- Advanced Python programming skills

---

## 🗺️ Learning Path

The workshop follows a carefully designed progression:

```text
Foundations (101-107)          LLM Integration (108-111)
     ↓                                  ↓
Type Annotations         →    First LLM Integration
Core Concepts           →    Conversational Memory
Your First Graph        →    ReAct Agents with Tools
State Management        →    Human-in-the-Loop
Sequential Workflows
Conditional Routing
Looping Workflows
```

### Phase 1: Foundations (No API Key Required)

- Master LangGraph fundamentals with pure workflow mechanics
- Build confidence with real SCM automation patterns
- Learn state management, routing, and loops
- Duration: ~8-10 hours

### Phase 2: LLM Integration (API Key Required)

- Integrate Claude AI into your workflows
- Build conversational agents with memory
- Create ReAct agents that use tools intelligently
- Implement human-in-the-loop collaboration patterns
- Duration: ~6-8 hours

---

## 🗂️ Project Structure

```text
langgraph-workshop-notebooks/
├── notebooks/                  # Main workshop notebooks
│   ├── 101_type_annotations.ipynb
│   ├── 102_core_concepts.ipynb
│   ├── 103_your_first_graph.ipynb
│   ├── 104_state_management.ipynb
│   ├── 105_sequential_workflows.ipynb
│   ├── 106_conditional_routing.ipynb
│   ├── 107_looping_workflows.ipynb
│   ├── 108_first_llm_integration.ipynb
│   ├── 109_conversational_memory.ipynb
│   ├── 110_react_agents_with_tools.ipynb
│   └── 111_human_in_the_loop.ipynb
├── transcripts/                # Instructor-led narrative transcripts
│   ├── 101-type-annotations-transcript.md
│   ├── 102-core-concepts-transcript.md
│   └── ...
├── legacy/                     # Original workshop notebooks (archived)
│   ├── 01_state_and_graphs.ipynb
│   ├── 02_conversational_agents.ipynb
│   ├── 03_tools_and_react.ipynb
│   └── 04_advanced_patterns.ipynb
├── .env.template              # Environment configuration template
├── pyproject.toml             # Python project configuration
├── Makefile                   # Workshop automation commands
├── NOTEBOOK_SUMMARY.md        # Comprehensive notebook documentation
├── CONTRIBUTING.md            # Contribution guidelines
└── README.md                  # This file
```

---

## ⚙️ Installation

### System Requirements

- **Python 3.11+** ([download](https://www.python.org/downloads/))
- **uv** package manager (recommended) or pip

### Step 1: Clone the Repository

```bash
git clone https://github.com/cdot65/langgraph-workshop-notebooks.git
cd langgraph-workshop-notebooks
```

### Step 2: Install Dependencies

**Using uv (recommended):**

```bash
# Install uv if you don't have it
curl -LsSf https://astral.sh/uv/install.sh | sh

# Setup the workshop environment
make setup
```

**Using pip:**

```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# Install dependencies
pip install -e .
```

### Step 3: Configure Environment

```bash
# Copy the environment template
cp .env.template .env

# Edit .env and add your Anthropic API key
# (Only needed for notebooks 108-111)
```

**For notebooks 101-107**: No API key required - you can start learning immediately!

**For notebooks 108-111**: Get your API key from [Anthropic Console](https://console.anthropic.com/settings/keys)

### Step 4: Launch Jupyter

```bash
# Start Jupyter Lab
make jupyter

# Jupyter will open automatically in your browser
# Navigate to notebooks/ and open 101_type_annotations.ipynb to begin!
```

---

## 🚀 Quick Start

### Complete Workshop Setup (2 minutes)

```bash
# One-command setup
make setup

# Edit .env with your API key (for notebooks 108-111 only)
nano .env

# Launch Jupyter Lab for interactive learning
make jupyter
```

### Interactive Learning Path (Recommended)

```bash
# Setup environment
make setup

# Launch Jupyter Lab
make jupyter

# In Jupyter, navigate to notebooks/ and start with:
# 101_type_annotations.ipynb
```

### Automated Testing (For CI/CD or Validation)

```bash
# Test individual notebooks
make test-101              # Notebook 101: Type Annotations
make test-102              # Notebook 102: Core Concepts
make test-103              # Notebook 103: Your First Graph
make test-104              # Notebook 104: State Management
make test-105              # Notebook 105: Sequential Workflows
make test-106              # Notebook 106: Conditional Routing
make test-107              # Notebook 107: Looping Workflows

# Test all Phase 1 notebooks
make test-phase1

# Test Phase 2 notebooks (requires API key)
make test-108              # Notebook 108: First LLM Integration
make test-109              # Notebook 109: Conversational Memory
make test-110              # Notebook 110: ReAct Agents with Tools
make test-111              # Notebook 111: Human-in-the-Loop

# Test all Phase 2 notebooks
make test-phase2

# Test everything
make test-all

# Clean outputs
make clean
make clean-phase1          # Clean only Phase 1 outputs
make clean-phase2          # Clean only Phase 2 outputs
```

### Available Make Commands

```bash
# Setup and Environment
make setup                 # Install dependencies and configure environment
make dev                   # Install with dev dependencies
make jupyter               # Launch Jupyter Lab

# Testing Notebooks
make test-101 through test-111  # Test individual notebooks
make test-phase1           # Test all Phase 1 notebooks (101-107)
make test-phase2           # Test all Phase 2 notebooks (108-111)
make test-all              # Test all notebooks

# Utilities
make clean                 # Clear all notebook outputs
make clean-phase1          # Clear Phase 1 notebook outputs
make clean-phase2          # Clear Phase 2 notebook outputs
make format                # Format code with black
make lint                  # Run flake8 linting
make help                  # Show all available commands
```

---

## 📚 Notebooks

### Foundation Notebooks (Phase 1 - No API Key Required)

| # | Notebook | Duration | Difficulty | Topics |
|---|----------|----------|------------|--------|
| **101** | [Type Annotations](notebooks/101_type_annotations.ipynb) | ~5 min | Beginner | TypedDict, Union, Optional, Lambda |
| **102** | [Core Concepts](notebooks/102_core_concepts.ipynb) | ~30 min | Beginner | State, Nodes, Graphs, Edges |
| **103** | [Your First Graph](notebooks/103_your_first_graph.ipynb) | ~20 min | Beginner | Building single-node graphs |
| **104** | [State Management](notebooks/104_state_management.ipynb) | ~20 min | Beginner | Complex multi-field states |
| **105** | [Sequential Workflows](notebooks/105_sequential_workflows.ipynb) | ~30 min | Intermediate | Multi-node pipelines |
| **106** | [Conditional Routing](notebooks/106_conditional_routing.ipynb) | ~20 min | Intermediate | Branching logic, decision trees |
| **107** | [Looping Workflows](notebooks/107_looping_workflows.ipynb) | ~25 min | Intermediate | Retry logic, pagination |

### LLM Integration Notebooks (Phase 2 - API Key Required)

| # | Notebook | Duration | Difficulty | Topics |
|---|----------|----------|------------|--------|
| **108** | [First LLM Integration](notebooks/108_first_llm_integration.ipynb) | ~30 min | Intermediate | Claude integration, simple bots |
| **109** | [Conversational Memory](notebooks/109_conversational_memory.ipynb) | ~45 min | Intermediate | Message history, state management |
| **110** | [ReAct Agents with Tools](notebooks/110_react_agents_with_tools.ipynb) | ~60 min | Advanced | Tools, reducers, reasoning-acting loop |
| **111** | [Human-in-the-Loop](notebooks/111_human_in_the_loop.ipynb) | ~45 min | Advanced | Interactive collaboration, approval workflows |

### Detailed Notebook Descriptions

<details>
<summary>**101: Type Annotations** - Foundation for type-safe automation</summary>

**Learning Objectives:**

- Master TypedDict for structured dictionary schemas
- Use Union and Optional types effectively
- Apply Lambda functions for data transformation
- Build SCM address object and security rule structures

**Key Takeaways:**

- TypedDict is critical for LangGraph state definitions
- Type annotations prevent configuration errors before runtime
- Real SCM API structures match your TypedDict schemas exactly

**Hands-On:**

- Build address object TypedDict with 4 fields
- Create security policy state schema with validation
- Use lambda to filter rules by action, tags, zones

</details>

<details>
<summary>**102: Core Concepts** - Understanding LangGraph fundamentals</summary>

**Learning Objectives:**

- Define State schemas using TypedDict patterns
- Create Nodes that process and update state
- Build StateGraph structures connecting nodes
- Use Edges to define workflow execution order

**Key Takeaways:**

- State is shared data that flows through your graph
- Nodes are Python functions that update state
- Graphs compile into executable applications

**Hands-On:**

- Build 3-node address object pipeline (parse → validate → format)
- Design security policy state schema with 10+ fields
- Add error handling to workflows

</details>

<details>
<summary>**103: Your First Graph** - Building your first LangGraph application</summary>

**Learning Objectives:**

- Create simple single-node graphs
- Compile and invoke graphs with initial state
- Understand state flow through nodes
- Visualize graph structure with mermaid diagrams

**Key Takeaways:**

- START → node → END is the simplest pattern
- Nodes return partial state updates
- Graph.compile() creates executable applications

**Hands-On:**

- Build extended address validation workflow with 3 fields
- Add folder validation to workflow
- Create multi-field state with validation tracking

</details>

<details>
<summary>**104: State Management** - Working with complex data structures</summary>

**Learning Objectives:**

- Design multi-field state schemas with diverse data types
- Implement safe state access patterns
- Handle optional fields and defaults
- Build complex nested SCM structures

**Key Takeaways:**

- State can hold strings, lists, integers, booleans, dictionaries
- Only read fields that were provided or set by previous nodes
- Progressive complexity: start simple, scale up

**Hands-On:**

- Build address type validator supporting IP/FQDN/Range types
- Create advanced metrics calculator
- Design complete SCM workflow state with 10+ fields

</details>

<details>
<summary>**105: Sequential Workflows** - Multi-node automation pipelines</summary>

**Learning Objectives:**

- Chain nodes together using add_edge()
- Implement error handling across workflow steps
- Build complete SCM workflows (Tag → Address → Group)
- Manage dependencies between steps

**Key Takeaways:**

- Sequential execution via explicit edge connections
- State accumulates through pipeline
- Error propagation across nodes

**Hands-On:**

- Build 3-node SCM address object workflow
- Add comprehensive error handling
- Implement retry logic for failed API calls

</details>

<details>
<summary>**106: Conditional Routing** - Decision-making workflows</summary>

**Learning Objectives:**

- Use add_conditional_edges() for dynamic routing
- Create router functions with Literal return types
- Implement branching based on state conditions
- Apply network ACL analogy to routing logic

**Key Takeaways:**

- Router functions decide path without modifying state
- Lambda passthrough pattern for router nodes
- Path maps connect edge names to destination nodes

**Hands-On:**

- Build configuration change router (3-way routing)
- Implement environment-based routing (dev/stage/prod)
- Create address type validator with 3 validation paths

</details>

<details>
<summary>**107: Looping Workflows** - Retry and iteration patterns</summary>

**Learning Objectives:**

- Create self-referencing edges for loops
- Implement retry logic with counter-based termination
- Build pagination patterns for API responses
- Design safe termination conditions

**Key Takeaways:**

- Loop pattern: initialize → process → check → [loop or exit]
- ALWAYS check max counter BEFORE success condition
- Four essential elements: counter, processor, router, conditional edge

**Hands-On:**

- Build SCM address list pagination workflow
- Implement retry logic with exponential backoff
- Create HA sync status polling workflow

</details>

<details>
<summary>**108: First LLM Integration** - Adding AI to your workflows</summary>

**Learning Objectives:**

- Integrate Claude AI into LangGraph workflows
- Define state structures for handling AI messages
- Initialize and invoke Anthropic models
- Understand limitations of stateless bots

**Key Takeaways:**

- LangChain and LangGraph work together seamlessly
- HumanMessage represents user input
- Simple bots don't remember conversation context

**Hands-On:**

- Build PAN-OS query bot for firewall questions
- Test bot with various configuration scenarios
- Demonstrate the memory problem with multi-turn conversations

</details>

<details>
<summary>**109: Conversational Memory** - Building stateful AI agents</summary>

**Learning Objectives:**

- Use HumanMessage and AIMessage for conversation tracking
- Implement manual conversation history management
- Understand token costs and conversation growth
- Apply trimming strategies to control costs

**Key Takeaways:**

- Union[HumanMessage, AIMessage] for mixed message lists
- Manual append of AI responses to state
- Token costs grow linearly with conversation length
- Trimming trade-offs: cost savings vs. context loss

**Hands-On:**

- Build multi-turn conversation with context retention
- Implement JSON persistence and loading
- Add window trimming with configurable size
- Calculate token costs for long conversations

</details>

<details>
<summary>**110: ReAct Agents with Tools** - Reasoning and Acting pattern</summary>

**Learning Objectives:**

- Master add_messages reducer for automatic state management
- Create custom tools with @tool decorator
- Build tool-calling agents with LLM decision-making
- Implement multi-tool workflows

**Key Takeaways:**

- Annotated[Sequence[BaseMessage], add_messages] eliminates manual state management
- Tool docstrings are critical for LLM tool selection
- ReAct pattern: Reasoning (LLM decides) + Acting (tools execute)

**Hands-On:**

- Create tools for PAN-OS version checking and upgrade planning
- Build agent that chains multiple tool calls intelligently
- Implement error handling in tools
- Add configuration validation tools

</details>

<details>
<summary>**111: Human-in-the-Loop** - Interactive AI collaboration</summary>

**Learning Objectives:**

- Implement human-in-the-loop patterns for AI collaboration
- Build interactive configuration drafting assistant
- Create approval workflows with explicit human control
- Route based on tool selection (update vs. save)

**Key Takeaways:**

- HITL vs ReAct: different routing for update/save tools
- Interactive input() within node functions
- Iterative refinement until human approves
- Global state management for learning purposes

**Hands-On:**

- Build NAT policy drafting workflow
- Implement configuration validation before save
- Create multi-step configuration wizard
- Add error detection and suggestions

</details>

---

## 🏗️ Workshop Phases

### Phase 1: Foundations (Notebooks 101-107)

**Duration:** 8-10 hours
**API Key Required:** No
**Focus:** Core LangGraph patterns without LLM integration

**What You'll Learn:**

- Type-safe state management with TypedDict
- Building and connecting nodes in graphs
- Sequential, conditional, and looping workflows
- Real SCM automation patterns for address objects and security rules

**Why Start Here:**

- Build strong foundations in LangGraph concepts
- No API costs while learning fundamentals
- Immediate hands-on practice with network automation
- Confidence building before adding AI complexity

**Completion Checklist:**

- [ ] Notebook 101: Master TypedDict, Union, Optional
- [ ] Notebook 102: Understand State, Nodes, Edges, Graphs
- [ ] Notebook 103: Build single-node validation workflow
- [ ] Notebook 104: Handle complex multi-field states
- [ ] Notebook 105: Build multi-node pipelines
- [ ] Notebook 106: Implement branching logic
- [ ] Notebook 107: Build retry and pagination patterns

### Phase 2: LLM Integration (Notebooks 108-111)

**Duration:** 6-8 hours
**API Key Required:** Yes (Anthropic)
**Focus:** Adding AI capabilities to your workflows

**What You'll Learn:**

- Integrating Claude AI into LangGraph applications
- Managing conversation memory and context
- Building ReAct agents that use tools intelligently
- Implementing human-in-the-loop collaboration patterns

**Why Continue Here:**

- Transform workflows into intelligent AI agents
- Build conversational interfaces for network automation
- Create tools that Claude can use to interact with SCM
- Master production-ready patterns for AI-powered automation

**Completion Checklist:**

- [ ] Notebook 108: Build simple bot, discover memory problem
- [ ] Notebook 109: Implement manual history management
- [ ] Notebook 110: Master tools, reducers, ReAct pattern
- [ ] Notebook 111: Build interactive collaboration workflows

---

## 🔑 Key Patterns

### Essential LangGraph Patterns You'll Master

#### 1. Basic Graph (Notebook 103)

```python
graph = StateGraph(State)
graph.add_node("process", process_function)
graph.set_entry_point("process")
graph.set_finish_point("process")
app = graph.compile()
```

#### 2. Sequential Pipeline (Notebook 105)

```python
graph.add_edge(START, "validate")
graph.add_edge("validate", "create")
graph.add_edge("create", "verify")
graph.add_edge("verify", END)
```

#### 3. Conditional Routing (Notebook 106)

```python
graph.add_node("router", lambda state: state)
graph.add_conditional_edges(
    source="router",
    path=router_function,
    path_map={"path_a": "node_a", "path_b": "node_b"}
)
```

#### 4. Looping (Notebook 107)

```python
def should_continue(state) -> Literal["loop", "exit"]:
    if state["counter"] >= state["max"]:
        return "exit"  # Safety!
    return "loop"

graph.add_conditional_edges("check", should_continue,
    {"loop": "process", "exit": END})
```

#### 5. ReAct Agent (Notebook 110)

```python
messages: Annotated[Sequence[BaseMessage], add_messages]

@tool
def my_tool(param: str) -> str:
    """Docstring critical for LLM!"""
    return result

model_with_tools = llm.bind_tools([my_tool])
```

#### 6. Human-in-the-Loop (Notebook 111)

```python
def should_continue(state):
    if save_tool_called:
        return END
    return "agent"  # Continue feedback loop
```

---

## 🤝 Contributing

Contributions are welcome! This workshop is designed to help network security engineers learn LangGraph effectively.

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-improvement`)
3. **Make your changes**
4. **Test thoroughly** (run notebooks to verify)
5. **Commit your changes** (`git commit -m 'Add amazing improvement'`)
6. **Push to the branch** (`git push origin feature/amazing-improvement`)
7. **Open a Pull Request**

### Contribution Guidelines

- **Maintain workshop structure**: Keep progressive complexity
- **Test all changes**: Ensure notebooks execute without errors
- **Update documentation**: Keep README and summaries current
- **Follow existing patterns**: Match the teaching style
- **Focus on clarity**: Network engineers are the audience

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📖 Resources

### Official Documentation

- **LangGraph Documentation**: [python.langchain.com/docs/langgraph](https://python.langchain.com/docs/langgraph)
- **LangChain Documentation**: [python.langchain.com/docs](https://python.langchain.com/docs)
- **Anthropic Claude API**: [docs.anthropic.com](https://docs.anthropic.com/)
- **pan-scm-sdk**: [GitHub Repository](https://github.com/cdot65/pan-scm-sdk)

### Workshop Resources

- **Notebook Summaries**: See [NOTEBOOK_SUMMARY.md](NOTEBOOK_SUMMARY.md) for comprehensive details
- **Transcripts**: Located in `transcripts/` directory for instructor-led narratives
- **SCM Examples**: Reference patterns in notebooks for real API structures

### Community

- **GitHub Issues**: [Report bugs or request features](https://github.com/cdot65/langgraph-workshop-notebooks/issues)
- **Discussions**: [Ask questions and share ideas](https://github.com/cdot65/langgraph-workshop-notebooks/discussions)

---

## ⚖️ License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgements

### Technologies

- **LangGraph** by LangChain - The framework powering these AI agent workflows
- **Anthropic Claude** - The LLM providing intelligent automation capabilities
- **Palo Alto Networks** - Strata Cloud Manager platform and pan-scm-sdk

### Inspiration

This workshop builds upon patterns and best practices from:

- LangGraph official tutorials and documentation
- LangChain community examples and guides
- Real-world network automation deployments
- Feedback from network security engineers

### Author

**Calvin Remsburg** ([@cdot65](https://github.com/cdot65))

Email: [calvin@cdot.io](mailto:calvin@cdot.io)

---

## 📋 Workshop Completion Checklist

Track your progress through the complete workshop:

### Phase 1: Foundations ✓

- [ ] 101: Type Annotations - Master TypedDict, Union, Optional
- [ ] 102: Core Concepts - Understand State, Nodes, Edges, Graphs
- [ ] 103: Your First Graph - Build single-node validation workflow
- [ ] 104: State Management - Handle complex multi-field states
- [ ] 105: Sequential Workflows - Build multi-node pipelines
- [ ] 106: Conditional Routing - Implement branching logic
- [ ] 107: Looping Workflows - Build retry and pagination patterns

### Phase 2: LLM Integration ✓

- [ ] 108: First LLM Integration - Build simple bot, discover memory problem
- [ ] 109: Conversational Memory - Implement manual history management
- [ ] 110: ReAct Agents - Master tools, reducers, reasoning-acting pattern
- [ ] 111: Human-in-the-Loop - Build interactive collaboration workflows

### Capstone Project Ideas

After completing all notebooks, build your own project:

1. **SCM Configuration Manager**: Complete CRUD operations for address objects and security rules
2. **Firewall Migration Assistant**: AI agent that helps migrate configurations between environments
3. **Compliance Checker**: Tool that validates security policies against best practices
4. **Interactive Policy Builder**: Human-in-the-loop workflow for creating complex security policies
5. **Change Management Bot**: AI agent that reviews and validates configuration changes

---

<div align="center">

**Ready to build AI-powered network automation?**

[Get Started](#%EF%B8%8F-installation) · [View Notebooks](#-notebooks) · [Join Community](https://github.com/cdot65/langgraph-workshop-notebooks/discussions)

---

⭐ **If you find this workshop helpful, please star the repository!** ⭐

Made with ❤️ for Network Security Engineers

</div>
