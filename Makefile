.PHONY: help test-all clean setup test-phase1 test-phase2 test-workshop test-self-study jupyter dev lint format studio studio-install studio-check workflow-01 workflow-02 workflow-03 workflow-04 workflow-05

# Load environment variables from .env
ifneq (,$(wildcard .env))
    include .env
    export
endif

# Notebook paths - Phase 1: Foundations (No API Key Required)
NB_101 = notebooks/101_type_annotations.ipynb
NB_102 = notebooks/102_core_concepts.ipynb
NB_103 = notebooks/103_your_first_graph.ipynb
NB_104 = notebooks/104_state_management.ipynb
NB_105 = notebooks/105_sequential_workflows.ipynb
NB_106 = notebooks/106_conditional_routing.ipynb
NB_107 = notebooks/107_looping_workflows.ipynb

# Notebook paths - Phase 2: LLM Integration (API Key Required)
NB_108 = notebooks/108_first_llm_integration.ipynb
NB_109 = notebooks/109_conversational_memory.ipynb
NB_110 = notebooks/110_react_agents_with_tools.ipynb
NB_111 = notebooks/111_human_in_the_loop.ipynb

# All notebooks
PHASE1_NOTEBOOKS = $(NB_101) $(NB_102) $(NB_103) $(NB_104) $(NB_105) $(NB_106) $(NB_107)
PHASE2_NOTEBOOKS = $(NB_108) $(NB_109) $(NB_110) $(NB_111)
ALL_NOTEBOOKS = $(PHASE1_NOTEBOOKS) $(PHASE2_NOTEBOOKS)

# Default target
help:
	@echo "🤖 LangGraph Workshop - Building AI Agents for Network Automation"
	@echo ""
	@echo "⚡ Express Workshop (3-4 hours, 7 notebooks):"
	@echo "  make test-workshop           Run all 7 workshop notebooks (101-106, 108, 110)"
	@echo "  make test-self-study         Run 4 self-study notebooks (105, 107, 109, 111)"
	@echo ""
	@echo "📚 Phase 1: Foundations (No API Key Required):"
	@echo "  make test-101                101: Type Annotations (~10-15 min)"
	@echo "  make test-102                102: Core Concepts (~25 min)"
	@echo "  make test-103                103: Your First Graph (~15 min)"
	@echo "  make test-104                104: State Management (~25 min)"
	@echo "  make test-105                105: Sequential Workflows (~35 min, self-study)"
	@echo "  make test-106                106: Sequential + Conditional (~35-40 min)"
	@echo "  make test-107                107: Looping Workflows (~25 min, self-study)"
	@echo "  make test-phase1             Run all Phase 1 notebooks (101-107)"
	@echo ""
	@echo "🧠 Phase 2: LLM Integration (API Key Required):"
	@echo "  make test-108                108: First LLM Integration (~20-25 min)"
	@echo "  make test-109                109: Conversational Memory (~25 min, self-study)"
	@echo "  make test-110                110: ReAct Agents (~30-35 min)"
	@echo "  make test-111                111: Human-in-the-Loop (~20 min, self-study)"
	@echo "  make test-phase2             Run all Phase 2 notebooks (108-111)"
	@echo ""
	@echo "🛠️  Development & Utilities:"
	@echo "  make setup                   Install dependencies and configure environment"
	@echo "  make jupyter                 Launch Jupyter Lab"
	@echo "  make test-all                Run ALL notebooks (Phase 1 + Phase 2)"
	@echo "  make clean                   Clear all notebook outputs"
	@echo "  make clean-phase1            Clear Phase 1 notebook outputs"
	@echo "  make clean-phase2            Clear Phase 2 notebook outputs"
	@echo "  make dev                     Install with dev dependencies"
	@echo "  make format                  Format code with black"
	@echo "  make lint                    Run flake8 linting"
	@echo ""
	@echo "🎨 LangGraph Studio (Visual Workflow Development):"
	@echo "  make studio                  Launch LangGraph Studio (browser-based)"
	@echo "  make studio-install          Install LangGraph CLI for Studio"
	@echo "  make studio-check            Check if Studio dependencies are installed"
	@echo "  make workflow-01             Run workflow 01 (Sequential Config)"
	@echo "  make workflow-02             Run workflow 02 (NLP Basic)"
	@echo "  make workflow-03             Run workflow 03 (NLP CRUD)"
	@echo "  make workflow-04             Run workflow 04 (NLP Batch)"
	@echo "  make workflow-05             Run workflow 05 (Enhanced UX)"
	@echo ""
	@echo "💡 Quickstart:"
	@echo "  1. make setup                # Install everything"
	@echo "  2. Edit .env with your API key (only needed for Phase 2)"
	@echo "  3. make test-101             # Start with Type Annotations"
	@echo "  4. make jupyter              # Or work interactively"

# Setup and Environment
setup:
	@echo "🔧 Setting up workshop environment..."
	@command -v uv >/dev/null 2>&1 || { echo "📦 Installing uv..."; curl -LsSf https://astral.sh/uv/install.sh | sh; }
	@echo "📦 Installing dependencies with uv..."
	@uv sync
	@echo "🔧 Setting up git filters..."
	@bash scripts/setup_git_filters.sh
	@test -f .env || { echo "⚠️  Creating .env from template..."; cp .env.template .env; echo "⚠️  Edit .env and add your ANTHROPIC_API_KEY (required for Phase 2 notebooks 108-111)"; }
	@echo ""
	@echo "✅ Setup complete!"
	@echo ""
	@echo "📝 Next steps:"
	@echo "  1. Edit .env with your Anthropic API key (optional for Phase 1)"
	@echo "  2. Run 'make test-101' to start with Type Annotations"
	@echo "  3. Or run 'make jupyter' for interactive learning"

dev:
	@echo "📦 Installing with dev dependencies..."
	@uv sync --extra dev
	@echo "✅ Development environment ready"

jupyter:
	@echo "🚀 Launching Jupyter Lab..."
	@echo "💡 Navigate to notebooks/ and start with 101_type_annotations.ipynb"
	@uv run jupyter lab

# Phase 1: Foundations (No API Key Required)
test-101:
	@echo "📓 Testing 101: Type Annotations..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_101)
	@echo "✅ 101 complete"

test-102:
	@echo "📓 Testing 102: Core Concepts..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_102)
	@echo "✅ 102 complete"

test-103:
	@echo "📓 Testing 103: Your First Graph..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_103)
	@echo "✅ 103 complete"

test-104:
	@echo "📓 Testing 104: State Management..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_104)
	@echo "✅ 104 complete"

test-105:
	@echo "📓 Testing 105: Sequential Workflows..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_105)
	@echo "✅ 105 complete"

test-106:
	@echo "📓 Testing 106: Conditional Routing..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_106)
	@echo "✅ 106 complete"

test-107:
	@echo "📓 Testing 107: Looping Workflows..."
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_107)
	@echo "✅ 107 complete"

test-phase1: test-101 test-102 test-103 test-104 test-105 test-106 test-107
	@echo ""
	@echo "🎉 Phase 1 Complete: All foundations notebooks executed successfully!"
	@echo "📚 You've mastered: State, Nodes, Graphs, Sequential/Conditional/Looping patterns"
	@echo "🚀 Ready for Phase 2? Make sure you have your Anthropic API key in .env"
	@echo "💡 Next: make test-108 (First LLM Integration)"

# Phase 2: LLM Integration (API Key Required)
test-108:
	@echo "📓 Testing 108: First LLM Integration..."
	@test -n "$(ANTHROPIC_API_KEY)" || { echo "❌ Error: ANTHROPIC_API_KEY not found in .env"; exit 1; }
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_108)
	@echo "✅ 108 complete"

test-109:
	@echo "📓 Testing 109: Conversational Memory..."
	@test -n "$(ANTHROPIC_API_KEY)" || { echo "❌ Error: ANTHROPIC_API_KEY not found in .env"; exit 1; }
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_109)
	@echo "✅ 109 complete"

test-110:
	@echo "📓 Testing 110: ReAct Agents with Tools..."
	@test -n "$(ANTHROPIC_API_KEY)" || { echo "❌ Error: ANTHROPIC_API_KEY not found in .env"; exit 1; }
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_110)
	@echo "✅ 110 complete"

test-111:
	@echo "📓 Testing 111: Human-in-the-Loop..."
	@test -n "$(ANTHROPIC_API_KEY)" || { echo "❌ Error: ANTHROPIC_API_KEY not found in .env"; exit 1; }
	@uv run jupyter nbconvert --to notebook --execute --inplace --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_cell_tags='["skip-execution"]' $(NB_111)
	@echo "✅ 111 complete"

test-phase2: test-108 test-109 test-110 test-111
	@echo ""
	@echo "🎉 Phase 2 Complete: All LLM integration notebooks executed successfully!"
	@echo "🧠 You've mastered: Claude integration, conversational memory, ReAct agents, HITL patterns"
	@echo "🏆 Workshop Complete! You're ready to build production AI agents for network automation"

# Express Workshop targets (7 notebooks)
test-workshop: test-101 test-102 test-103 test-104 test-106 test-108 test-110
	@echo ""
	@echo "🎉 Express Workshop Complete: All 7 workshop notebooks executed successfully!"
	@echo "📚 You've mastered: TypedDict, State/Nodes/Edges, Routing, ReAct agents"
	@echo "🚀 Next steps: Self-study notebooks (105, 107, 109, 111) for comprehensive mastery"
	@echo "💡 Run: make test-self-study"

# Self-study targets (4 notebooks)
test-self-study: test-105 test-107 test-109 test-111
	@echo ""
	@echo "🎉 Self-Study Complete: All 4 additional notebooks executed successfully!"
	@echo "🧠 You've completed: Sequential deep-dive, Looping, Memory, HITL patterns"
	@echo "🏆 Full workshop mastery achieved! Ready for production AI agents"

# Run all notebooks
test-all: test-phase1 test-phase2
	@echo ""
	@echo "🚀 ALL WORKSHOP NOTEBOOKS EXECUTED SUCCESSFULLY!"
	@echo "🏆 You've completed the entire LangGraph workshop (14-18 hours of content)"
	@echo "💡 Next steps:"
	@echo "  - Build your own AI agent project"
	@echo "  - Check out the capstone project ideas in README.md"
	@echo "  - Explore pan-scm-sdk for production SCM automation"

# Clean outputs
clean:
	@echo "🧹 Cleaning all notebook outputs..."
	@uv run jupyter nbconvert --clear-output --inplace $(ALL_NOTEBOOKS)
	@echo "✅ All notebook outputs cleared"

clean-phase1:
	@echo "🧹 Cleaning Phase 1 notebook outputs..."
	@uv run jupyter nbconvert --clear-output --inplace $(PHASE1_NOTEBOOKS)
	@echo "✅ Phase 1 notebook outputs cleared"

clean-phase2:
	@echo "🧹 Cleaning Phase 2 notebook outputs..."
	@uv run jupyter nbconvert --clear-output --inplace $(PHASE2_NOTEBOOKS)
	@echo "✅ Phase 2 notebook outputs cleared"

# Development tools
format:
	@echo "🎨 Formatting code with black..."
	@uv run black notebooks/
	@echo "✅ Code formatted"

lint:
	@echo "🔍 Running flake8 linting..."
	@uv run flake8 notebooks/
	@echo "✅ Linting complete"

# LangGraph Studio targets
studio-check:
	@echo "🔍 Checking LangGraph Studio dependencies..."
	@command -v langgraph >/dev/null 2>&1 && echo "✅ langgraph-cli: Installed" || echo "❌ langgraph-cli: Not installed (run 'make studio-install')"
	@test -f workflows/langgraph.json && echo "✅ langgraph.json: Found" || echo "❌ langgraph.json: Missing"
	@test -f .env && echo "✅ .env: Found" || echo "⚠️  .env: Missing (required for SCM credentials)"
	@python -c "import langgraph; print('✅ langgraph package: Installed')" 2>/dev/null || echo "❌ langgraph package: Not installed"
	@python -c "import langgraph_api; print('✅ langgraph-api: Installed')" 2>/dev/null || echo "❌ langgraph-api: Not installed (run 'make studio-install')"
	@python -c "import langchain_anthropic; print('✅ langchain-anthropic: Installed')" 2>/dev/null || echo "❌ langchain-anthropic: Not installed"
	@echo ""
	@echo "💡 If any dependencies are missing, run: make studio-install"

studio-install:
	@echo "📦 Installing LangGraph Studio CLI with full features..."
	@uv pip install -U "langgraph-cli[inmem]"
	@echo ""
	@echo "✅ LangGraph Studio CLI installed!"
	@echo "✅ In-memory runtime installed!"
	@echo ""
	@echo "🚀 To launch Studio, run: make studio"

studio:
	@echo "🎨 Launching LangGraph Studio..."
	@echo ""
	@echo "📍 Opening workflows directory..."
	@echo "🌐 Studio will be available at: http://localhost:8123"
	@echo ""
	@echo "💡 Available workflows:"
	@echo "   - scm_config_workflow          (Sequential configuration)"
	@echo "   - nlp_scm_workflow             (NLP basic)"
	@echo "   - nlp_scm_workflow_crud        (NLP with CRUD)"
	@echo "   - nlp_scm_workflow_batch       (NLP with batch operations)"
	@echo "   - nlp_scm_workflow_enhanced_ux (Enhanced UX - NEW!)"
	@echo ""
	@echo "⏸️  Press Ctrl+C to stop the server"
	@echo ""
	@cd workflows && uv run langgraph dev

# Individual workflow runners (CLI execution)
workflow-01:
	@echo "🤖 Running Workflow 01: Sequential SCM Configuration"
	@echo "💡 This workflow uses structured JSON input for sequential object creation"
	@echo ""
	@uv run python workflows/01_scm_config_workflow.py --example

workflow-02:
	@echo "🤖 Running Workflow 02: NLP SCM Basic"
	@echo "💡 This workflow accepts natural language prompts"
	@echo ""
	@uv run python workflows/02_nlp_scm_workflow.py --interactive

workflow-03:
	@echo "🤖 Running Workflow 03: NLP SCM with CRUD"
	@echo "💡 This workflow supports Create, Read, Update, Delete operations"
	@echo ""
	@uv run python workflows/03_nlp_scm_workflow_crud.py --interactive

workflow-04:
	@echo "🤖 Running Workflow 04: NLP SCM with Batch Operations"
	@echo "💡 This workflow handles bulk operations efficiently"
	@echo ""
	@uv run python workflows/04_nlp_scm_workflow_batch.py --interactive

workflow-05:
	@echo "🤖 Running Workflow 05: Enhanced UX"
	@echo "💡 This workflow includes enhanced user experience features"
	@echo ""
	@uv run python workflows/05_nlp_scm_workflow_enhanced_ux.py --interactive
