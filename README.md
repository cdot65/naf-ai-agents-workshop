# 🤖 LangGraph Workshop: Building AI Agents for Network Automation

> Learn to build production-ready AI agents for Palo Alto Networks Strata Cloud Manager using LangGraph, LangChain, and Claude

[![Python Version](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![LangGraph](https://img.shields.io/badge/LangGraph-0.2.50+-green.svg)](https://python.langchain.com/docs/langgraph)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/cdot65/naf-ai-agents-workshop.svg)](https://github.com/cdot65/naf-ai-agents-workshop/stargazers)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/cdot65/naf-ai-agents-workshop?quickstart=1)

---

## 📖 Table of Contents

- [Overview](#-overview)
- [GitHub Codespaces Setup](#-github-codespaces-setup)
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

This comprehensive workshop teaches network security engineers how to build AI-powered automation agents using LangGraph and Claude AI. Through **7 workshop notebooks** (101-106, 108, 110) delivered in **3-4 hours**, you'll master everything from type annotations to advanced ReAct agents, with **4 additional notebooks** available for self-study.

**Express Workshop Format (3-4 Hours):**

- **Survey/Exposure Approach**: Core concepts covered in workshop, mastery through self-study
- **Demo-Focused**: 70/30 instructor demonstrations with student follow-along
- **Production Patterns**: Real-world SCM automation examples
- **Cost-Aware**: Foundations (101-106) use mock data - no API costs
- **Flexible Learning**: All 11 notebooks available for comprehensive self-paced learning

**What Makes This Workshop Unique:**

- **Time-Efficient**: Complete in 3-4 hours with optional deep-dive content
- **Progressive Learning**: Start with fundamentals, build to advanced AI agents
- **Network-Focused**: All examples use real network automation scenarios
- **Dual-Path**: Express workshop + extended self-study materials

### Key Features

**11 comprehensive notebooks**

- Progressive learning from TypedDict basics to Human-in-the-Loop patterns
- Each notebook builds on previous concepts with hands-on exercises

**Real SCM integration**

- Address objects, address groups, and tags
- Security rules and NAT policies
- Production-ready API patterns with pan-scm-sdk

**Progressive complexity**

- Start with single-node graphs
- Build to multi-tool AI agents
- Master conditional routing and loops

**Cost-aware design**

- Phase 1 notebooks (101-107) use mock data - no API costs
- Phase 2 notebooks (108-111) optional LLM integration
- Learn fundamentals before spending on AI

**Production patterns**

- Error handling and validation
- State management best practices
- Retry logic and pagination

**Complete documentation**

- Detailed notebook summaries
- Comprehensive setup guides
- Real-world SCM examples

---

## ☁️ GitHub Codespaces Setup

**Zero-install development environment in your browser**

GitHub Codespaces provides a complete, pre-configured development environment without any local setup. This is the fastest way to get started with the workshop.

### Quick Setup (2 minutes)

1. **Fork this repository** to your own GitHub account
   - Click the "Fork" button at the top right of this page
   - This creates your own copy of the workshop

2. **Open in your Codespace**
   - From your forked repository, click the green "Code" button
   - Select the "Codespaces" tab
   - Click "Create codespace on main"
   - Wait 2-3 minutes for the environment to build

3. **Start learning**
   - Jupyter Lab automatically opens in your browser
   - Navigate to `notebooks/` and open `101_type_annotations.ipynb`
   - All dependencies are pre-installed and ready to use

### Benefits of GitHub Codespaces

✅ **No local setup required** - Everything runs in the cloud
✅ **Pre-configured environment** - Python, Jupyter, and all dependencies ready
✅ **Works anywhere** - Any device with a web browser
✅ **Free tier available** - 60 hours/month free for personal accounts
✅ **Your own workspace** - Make changes without affecting the original repo

### Adding Your API Key

For notebooks 108-111, you'll need to add your Anthropic API key:

```bash
# In the Codespace terminal
cp .env.template .env

# Edit .env and add your key
nano .env
```

### Alternative: Local Installation

If you prefer local development, see the [Installation](#%EF%B8%8F-installation) section below for complete setup instructions.

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

### Phase 2: LLM Integration (API Key Required)

- Integrate Claude AI into your workflows
- Build conversational agents with memory
- Create ReAct agents that use tools intelligently
- Implement human-in-the-loop collaboration patterns

---

## 🗂️ Project Structure

```text
naf-ai-agents-workshop/
├── .devcontainer/              # GitHub Codespaces configuration
│   ├── devcontainer.json
│   └── README.md
├── .github/                    # GitHub templates and workflows
│   └── ISSUE_TEMPLATE/
├── docs/                       # Workshop documentation
│   ├── examples/               # SCM Python examples
│   │   ├── address_objects.py
│   │   ├── address_groups.py
│   │   ├── security_policy.py
│   │   ├── nat_policy.py
│   │   ├── services.py
│   │   ├── service_groups.py
│   │   └── tags.py
│   ├── NOTEBOOK_CREATION_GUIDE.md
│   ├── STUDENT_SETUP_GUIDE.md
│   ├── TROUBLESHOOTING.md
│   ├── WORKSHOP_OUTLINE.md
│   └── llms.txt                # LLM-friendly documentation
├── notebooks/                  # Express Workshop notebooks (streamlined)
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
├── notebooks-extended/         # Comprehensive versions for deep-dive learning
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
├── scripts/                    # Utility scripts
│   ├── clean_notebook.py
│   └── setup_git_filters.sh
├── src/                        # Source code modules
│   ├── cli/                    # CLI application
│   │   ├── app.py
│   │   ├── __main__.py
│   │   └── commands/
│   ├── core/                   # Core functionality
│   │   ├── client.py
│   │   ├── config.py
│   │   └── state.py
│   ├── main.py                 # Monolithic workflow
│   └── README.md
├── .env.template               # Environment configuration template
├── .gitignore                  # Git ignore rules
├── .gitattributes              # Git attributes for notebook filtering
├── CLAUDE.md                   # Claude Code instructions
├── CONTRIBUTING.md             # Contribution guidelines
├── Makefile                    # Workshop automation commands
├── pyproject.toml              # Python project configuration
├── ruff.toml                   # Ruff linter configuration
├── WORKSHOP_FAQ.md             # Frequently asked questions
├── WORKSHOP_PLAN.md            # Workshop planning document
└── README.md                   # This file
```

---

## ⚙️ Installation

### System Requirements

- **Python 3.11+** ([download](https://www.python.org/downloads/))
- **uv** package manager (recommended) or pip

### Step 1: Clone the Repository

```bash
git clone https://github.com/cdot65/naf-ai-agents-workshop.git
cd naf-ai-agents-workshop
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

### Express Workshop Notebooks (7 notebooks, ~3-4 hours)

**Phase 1 - Foundations (No API Key Required)**

| # | Notebook | Duration | Format | Topics |
|---|----------|----------|--------|--------|
| **101** | [Type Annotations](notebooks/101_type_annotations.ipynb) | ~10-15 min | Demo | TypedDict essentials for LangGraph |
| **102** | [Core Concepts](notebooks/102_core_concepts.ipynb) | ~25 min | Hands-on | State, Nodes, Graphs, Edges (streamlined) |
| **103** | [Your First Graph](notebooks/103_your_first_graph.ipynb) | ~15 min | Demo | Building single-node graphs |
| **104** | [State Management](notebooks/104_state_management.ipynb) | ~25 min | Hands-on | Complex multi-field states (streamlined) |
| **106** | [Conditional Routing](notebooks/106_conditional_routing.ipynb) | ~30-35 min | Hands-on | Conditional routing patterns |

**Phase 2 - LLM Integration (API Key Required)**

| # | Notebook | Duration | Format | Topics |
|---|----------|----------|--------|--------|
| **108** | [First LLM Integration](notebooks/108_first_llm_integration.ipynb) | ~20-25 min | Demo | Claude integration, simple bots |
| **110** | [ReAct Agents with Tools](notebooks/110_react_agents_with_tools.ipynb) | ~30-35 min | Demo | Tools, reducers, ReAct pattern (capstone) |

**Total Workshop Time**: ~155-180 minutes + breaks = **3.1-3.5 hours**

### Self-Study Notebooks (4 notebooks, for mastery)

| # | Notebook | Duration | Level | Topics |
|---|----------|----------|-------|--------|
| **105** | [Sequential Workflows](notebooks/105_sequential_workflows.ipynb) | ~35 min | Extended | Multi-node pipelines (deep-dive) |
| **107** | [Looping Workflows](notebooks/107_looping_workflows.ipynb) | ~25 min | Advanced | Retry logic, pagination |
| **109** | [Conversational Memory](notebooks/109_conversational_memory.ipynb) | ~25 min | Extended | Message history (concepts in 110) |
| **111** | [Human-in-the-Loop](notebooks/111_human_in_the_loop.ipynb) | ~20 min | Advanced | Interactive collaboration patterns |

**Self-Study Path**: Additional ~2-3 hours for comprehensive mastery

---

## 📖 Extended Notebooks (Deep-Dive Learning)

For students who want to explore concepts in greater depth, the `notebooks-extended/` directory contains comprehensive versions of all workshop notebooks with:

- **Additional examples and exercises** - More hands-on practice with complex scenarios
- **Extended explanations** - Deeper coverage of advanced patterns and edge cases
- **Production patterns** - Additional real-world SCM automation examples
- **Alternative approaches** - Multiple ways to solve the same problems
- **Troubleshooting guides** - Common pitfalls and how to avoid them

### When to Use Extended Notebooks

**During the Workshop:**
- Stick to the `notebooks/` directory for the Express workshop experience
- Extended notebooks contain too much content for the 3-4 hour format

**After the Workshop:**
- Work through `notebooks-extended/` at your own pace for mastery
- Use them as reference material when building your own projects
- Ideal for self-paced learning or study groups

**Recommended Approach:**
1. Complete Express workshop using `notebooks/` (3-4 hours)
2. Build confidence with the core patterns
3. Return to `notebooks-extended/` for deeper understanding
4. Focus on notebooks relevant to your specific use cases

### Key Differences

| Feature | `notebooks/` (Express) | `notebooks-extended/` (Comprehensive) |
|---------|----------------------|-----------------------------------|
| Duration per notebook | 10-40 min | 30-60 min |
| Content focus | Core concepts, survey | Deep-dive, mastery |
| Examples | Essential patterns | Multiple approaches |
| Exercises | Guided practice | Challenge problems |
| Best for | Workshop delivery | Self-paced learning |

---

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
- Sequential patterns assumed from notebook 102

**Hands-On:**

- Build configuration change router (3-way routing)
- Implement environment-based routing (dev/stage/prod)
- Create address type validator with 3 validation paths

**Note**: This notebook focuses exclusively on conditional routing. Sequential workflow patterns are assumed knowledge from notebook 102.

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

## 🏗️ Workshop Structure

### Express Workshop (3-4 Hours)

**Format**: Instructor-led with 70/30 demo-focused delivery
**Target**: Survey/exposure to core concepts with hands-on for critical patterns

#### Session 1: Foundations (0:00-1:30, ~90 min)

**Notebooks**: 101-104 (No API Key Required)

- **101** (10-15 min): TypedDict essentials - Demo
- **102** (25 min): State, Nodes, Edges - Hands-on
- **103** (15 min): First graph - Demo
- **104** (25 min): Complex state - Hands-on
- Buffer: 10-15 min

**What You'll Learn**: Type-safe state management, building nodes and graphs

#### Break (1:30-1:45, 15 min)

#### Session 2: Routing (1:45-3:00, ~75 min)

**Notebooks**: 106 (No API Key Required)

- **106** (30-35 min): Conditional routing - Hands-on
- Buffer: 15 min

**What You'll Learn**: Conditional routing patterns (sequential patterns assumed from 102)

#### Break (3:00-3:15, 15 min)

*Setup API keys for Phase 2*

#### Session 3: AI Integration (3:15-4:30, ~75 min)

**Notebooks**: 108, 110 (API Key Required)

- **108** (20-25 min): LLM integration - Demo
- **110** (30-35 min): ReAct agents - Demo (capstone)
- Buffer/Q&A: 15-20 min

**What You'll Learn**: Claude AI integration, ReAct pattern with tools, reducers

**Express Workshop Checklist:**

- [ ] 101: TypedDict essentials
- [ ] 102: Core concepts (State, Nodes, Graphs, Edges) - streamlined
- [ ] 103: First single-node graph
- [ ] 104: Complex multi-field states - streamlined
- [ ] 106: Conditional routing patterns
- [ ] 108: First LLM integration
- [ ] 110: ReAct agents with tools

### Self-Study Path (Additional 2-3 Hours)

**For comprehensive mastery**, complete independently:

- [ ] **105** (35 min): Sequential workflows deep-dive
- [ ] **107** (25 min): Looping workflows (advanced)
- [ ] **109** (25 min): Conversational memory (extended)
- [ ] **111** (20 min): Human-in-the-loop (advanced)

**💡 Pro Tip**: After completing the self-study notebooks, explore `notebooks-extended/` for even deeper coverage with additional examples, exercises, and production patterns. See the [Extended Notebooks](#-extended-notebooks-deep-dive-learning) section for details.

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

- **Setup Guides**: See [docs/STUDENT_SETUP_GUIDE.md](docs/STUDENT_SETUP_GUIDE.md) for detailed setup instructions
- **Workshop Outline**: See [docs/WORKSHOP_OUTLINE.md](docs/WORKSHOP_OUTLINE.md) for session planning
- **SCM Examples**: Reference patterns in [docs/examples/](docs/examples/) for real API structures
- **Troubleshooting**: See [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) for common issues

### Community

- **GitHub Issues**: [Report bugs or request features](https://github.com/cdot65/naf-ai-agents-workshop/issues)
- **Discussions**: [Ask questions and share ideas](https://github.com/cdot65/naf-ai-agents-workshop/discussions)

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

### Express Workshop (3.1-3.5 Hours) ✓

- [ ] 101: Type Annotations - TypedDict essentials
- [ ] 102: Core Concepts - State, Nodes, Edges, Graphs (streamlined)
- [ ] 103: Your First Graph - Single-node workflow
- [ ] 104: State Management - Complex multi-field states (streamlined)
- [ ] 106: Conditional Routing - Decision-making workflows
- [ ] 108: First LLM - Claude integration demo
- [ ] 110: ReAct Agents - Tools, reducers, capstone

### Self-Study Path (Additional 2-3 Hours) ✓

- [ ] 105: Sequential Workflows - Deep-dive multi-node pipelines
- [ ] 107: Looping Workflows - Retry logic and pagination
- [ ] 109: Conversational Memory - Message history management
- [ ] 111: Human-in-the-Loop - Interactive collaboration

### Extended Learning (Optional, Self-Paced)

For deeper mastery, work through `notebooks-extended/` versions:
- [ ] Extended notebooks 101-111 - Comprehensive coverage with additional examples
- [ ] Complete challenge exercises in extended notebooks
- [ ] Explore alternative implementation approaches
- [ ] Study production patterns and troubleshooting guides

See [Extended Notebooks](#-extended-notebooks-deep-dive-learning) for when and how to use these materials.

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

[Get Started](#%EF%B8%8F-installation) · [View Notebooks](#-notebooks) · [Join Community](https://github.com/cdot65/naf-ai-agents-workshop/discussions)

---

⭐ **If you find this workshop helpful, please star the repository!** ⭐

Made with ❤️ for Network Security Engineers

</div>
