# Complete Guide: Creating a Jupyter Notebook from Scratch

This guide walks you through the entire process of creating a high-quality educational Jupyter notebook for the LangGraph workshop.

---

## Table of Contents

1. [Phase 1: Create the Notebook File](#phase-1-create-the-notebook-file-2-minutes)
2. [Phase 2: Build the Header Section](#phase-2-build-the-header-section-5-minutes)
3. [Phase 3: Setup Section](#phase-3-setup-section-5-minutes)
4. [Phase 4: Core Content](#phase-4-core-content-30-minutes)
5. [Phase 5: Exercises Section](#phase-5-exercises-section-10-minutes)
6. [Phase 6: Summary Section](#phase-6-summary-section-5-minutes)
7. [Phase 7: Final Steps](#phase-7-final-steps-3-minutes)
8. [Quick Reference](#quick-reference-cell-types--shortcuts)

---

## Phase 1: Create the Notebook File (2 minutes)

### Step 1: Create New Notebook in Cursor IDE

1. **Open Command Palette**:
   - Mac: `Cmd + Shift + P`
   - Windows/Linux: `Ctrl + Shift + P`

2. **Search and select**: Type `"Jupyter: Create New Jupyter Notebook"`

3. **Save immediately**:
   - Click "File" → "Save As"
   - Navigate to: `/Users/cdot/development/cdot65/naf-ai-agents-workshop/notebooks/`
   - Name it: `05_your_topic.ipynb` (use appropriate number and topic)
   - Click "Save"

4. **Verify kernel**:
   - Look at top-right corner of notebook
   - Should show your `.venv` Python interpreter
   - If not, click "Select Kernel" → "Python Environments" → Select `.venv`

✅ **You now have an empty notebook ready to fill!**

---

## Phase 2: Build the Header Section (5 minutes)

### Step 2: Create Title Cell

Click in the first cell (should be markdown by default, if not change it with `M` key or dropdown).

**Cell 1** (Markdown):

```markdown
# 05: [Your Topic Name]

**Workshop**: LangGraph Foundations
**Duration**: ~45 minutes
**Difficulty**: Beginner/Intermediate/Advanced

## Learning Objectives

By completing this notebook, you will:
- [Objective 1 - specific and measurable]
- [Objective 2 - what skill they'll gain]
- [Objective 3 - what they'll build]
- [Objective 4 - advanced concept]
- [Objective 5 - real-world application]

## Prerequisites

- **Completed Notebooks**: [List previous notebooks needed, e.g., "01, 02"]
- **Knowledge**: [Required background, e.g., "Python dictionaries, type hints, basic LangGraph"]
- **Setup**: Anthropic API key configured in `.env` file

## Table of Contents

1. [Introduction](#1-introduction)
2. [Core Concept Name](#2-core-concept-name)
3. [Hands-On Examples](#3-hands-on-examples)
4. [Advanced Patterns](#4-advanced-patterns)
5. [Real-World Application](#5-real-world-application)
6. [Exercises](#6-exercises)
7. [Summary](#7-summary)

---
```

**Run the cell**: `Shift + Enter`

💡 **Tip**: The cell will render as formatted markdown. Double-click to edit again.

---

### Step 3: Create Introduction Cell

**Cell 2** (Markdown):

```markdown
## 1. Introduction

[1-2 paragraphs explaining what this notebook covers and why it matters]

### Why [Topic] Matters

Without [this concept]:
- [Problem 1]
- [Problem 2]
- [Problem 3]

With [this concept]:
- [Benefit 1]
- [Benefit 2]
- [Benefit 3]

### What We'll Build

In this notebook, we'll create:
1. [Simple example to introduce concept]
2. [Medium complexity example]
3. [Real-world application example]

Let's get started! 🚀
```

**Run**: `Shift + Enter`

---

## Phase 3: Setup Section (5 minutes)

### Step 4: Dependencies Check Cell

**Cell 3** (Code):

```python
# Verify required packages are installed
import sys

required_packages = [
    'langgraph',
    'langchain_anthropic',
    'python-dotenv',
    'anthropic'
]

missing = []
for pkg in required_packages:
    try:
        __import__(pkg.replace('-', '_'))
    except ImportError:
        missing.append(pkg)

if missing:
    print(f"❌ Missing packages: {', '.join(missing)}")
    print("\n🔧 Fix: Run 'make setup' or 'uv sync' in terminal")
else:
    print("✅ All required packages installed")
    print(f"   Python version: {sys.version.split()[0]}")
```

**Run**: `Shift + Enter`

---

### Step 5: Imports Section

**Cell 4** (Markdown):

```markdown
### 1.1 Import Dependencies

Let's import everything we'll need for this notebook.
```

**Cell 5** (Code):

```python
# Core imports
from typing import TypedDict, Annotated, Sequence
import operator
from pprint import pprint

# LangGraph
from langgraph.graph import StateGraph, START, END
from langgraph.graph.message import add_messages
from langgraph.checkpoint.memory import MemorySaver

# Anthropic
from anthropic import Anthropic

# Environment variables
from dotenv import load_dotenv
import os

# Visualization
from IPython.display import Image, display

# Load environment
load_dotenv()

print("✅ Imports successful")
```

**Run**: `Shift + Enter`

---

### Step 6: Environment Check Cell

**Cell 6** (Code):

```python
# Verify API key is configured
api_key = os.getenv('ANTHROPIC_API_KEY')

if not api_key:
    print("❌ ANTHROPIC_API_KEY not found")
    print("\n🔧 Fix:")
    print("   1. Copy .env.template to .env")
    print("   2. Add your API key to .env")
    print("   3. Restart this notebook")
elif not api_key.startswith('sk-ant-api03-'):
    print("⚠️  API key format looks incorrect")
    print("   Should start with: sk-ant-api03-")
else:
    print("✅ API key configured")
    print(f"   Key preview: {api_key[:20]}...")

# Initialize client
client = Anthropic()
```

**Run**: `Shift + Enter`

---

## Phase 4: Core Content (30 minutes)

This is where you teach the main concepts. Follow this pattern for each major section:

### Pattern for Each Concept

#### Step 7: Concept Explanation (Markdown)

**Cell N** (Markdown):

```markdown
---

## 2. [Concept Name]

### What is [Concept]?

[Clear definition in 1-2 sentences]

### Key Points

- **Point 1**: [Explanation]
- **Point 2**: [Explanation]
- **Point 3**: [Explanation]

### How It Works

[Diagram or step-by-step breakdown]

```

[Optional: ASCII art or code example showing concept]

```

### Visual Example

[If applicable, describe what they'll see]
```

---

#### Step 8: Simple Code Example

**Cell N+1** (Markdown):

```markdown
### 2.1 Example: [Simple Use Case]

Let's see [concept] in action with a basic example.
```

**Cell N+2** (Code):

```python
# Define your example
# Include detailed comments explaining each step

# Example structure:
class YourState(TypedDict):
    """State schema for this example."""
    field1: str  # What this field represents
    field2: int  # What this field represents

def your_node(state: YourState) -> dict:
    """
    Brief description of what this node does.

    Args:
        state: Current state

    Returns:
        Updated state
    """
    # Implementation with comments
    result = do_something(state)
    return {"field1": result}

# Build graph
graph = StateGraph(YourState)
graph.add_node("node_name", your_node)
graph.add_edge(START, "node_name")
graph.add_edge("node_name", END)

# Compile
app = graph.compile()

print("✅ Example created successfully")
```

**Run**: `Shift + Enter`

---

#### Step 9: Visualize the Example

**Cell N+3** (Markdown):

```markdown
Let's visualize the graph structure:
```

**Cell N+4** (Code):

```python
# Visualize
display(Image(app.get_graph().draw_mermaid_png()))

print("\nGraph structure:")
print("- Blue boxes: Processing nodes")
print("- Arrows: Flow direction")
```

**Run**: `Shift + Enter`

---

#### Step 10: Run and Demonstrate

**Cell N+5** (Markdown):

```markdown
Now let's run it and see the results:
```

**Cell N+6** (Code):

```python
# Execute the graph
print("Running example...\n")

result = app.invoke({
    "field1": "initial_value",
    "field2": 0
})

print("📊 Results:")
pprint(result)

# Validate results
assert "field1" in result, "Field1 should be in result"
print("\n✅ Example executed successfully!")
```

**Run**: `Shift + Enter`

---

#### Step 11: Explain the Output

**Cell N+7** (Markdown):

```markdown
### Understanding the Output

The output shows:
- **field1**: [What this represents and why it has this value]
- **field2**: [Explanation]

Key observations:
1. [Important point about the output]
2. [Another insight]
3. [Pattern or behavior to note]
```

---

### Repeat Pattern for Each Major Concept

For each new concept in your notebook:

1. Markdown explanation
2. Code example
3. Visualization (if applicable)
4. Run and demonstrate
5. Explain output

**Typical structure**:

- **Section 2**: Core concept (simple example)
- **Section 3**: Intermediate example with more complexity
- **Section 4**: Advanced patterns or variations
- **Section 5**: Real-world application combining everything

---

## Phase 5: Exercises Section (10 minutes)

### Step 12: Create Practice Exercises

**Cell X** (Markdown):

```markdown
---

## 6. Exercises

Time to practice what you've learned!

### Exercise 1: [Exercise Name]

**Challenge**: [Clear description of what to build]

**Requirements**:
- [ ] Requirement 1
- [ ] Requirement 2
- [ ] Requirement 3

**Expected Behavior**:
```python
# Show example input/output
input_state = {"field": "value"}
expected_output = {"field": "transformed_value"}
```

**Starter Code**:

```

**Run**: `Shift + Enter`

---

**Cell X+1** (Code):
```python
# Your solution here

# TODO: Implement the required functionality

# Test your implementation
# (Provide basic test structure)
```

**Run**: `Shift + Enter`

---

**Cell X+2** (Markdown):

```markdown
<details>
<summary>💡 Hint 1 (click to reveal)</summary>

[First hint - general direction]

</details>

<details>
<summary>💡 Hint 2 (click to reveal)</summary>

[More specific hint with code snippet]

```python
# Example pattern to use
def example_pattern():
    # Helpful code structure
    pass
```

</details>

<details>
<summary>💡 Hint 3 (click to reveal)</summary>

[Very specific guidance, almost giving away the solution]

</details>

<details>
<summary>✅ Complete Solution (click to reveal)</summary>

```python
# Full working solution with detailed comments

def complete_solution(state: YourState) -> dict:
    """
    Full implementation with explanation.
    """
    # Step 1: [Explanation]
    step1 = process_input(state)

    # Step 2: [Explanation]
    step2 = transform(step1)

    # Step 3: [Explanation]
    return {"field": step2}

# Complete graph setup
graph = StateGraph(YourState)
graph.add_node("solution", complete_solution)
graph.add_edge(START, "solution")
graph.add_edge("solution", END)

app = graph.compile()

# Test it
result = app.invoke({"field": "test"})
assert result["field"] == "expected", "Solution should work correctly"
print("✅ Solution working!")
```

**Explanation**: [Why this solution works and key concepts used]

</details>
```

**Run**: `Shift + Enter`

---

### Add 2-3 Exercises

Create exercises that:

- Start simple, increase in difficulty
- Reinforce key concepts from the notebook
- Encourage experimentation
- Provide complete solutions with explanations

---

## Phase 6: Summary Section (5 minutes)

### Step 13: Create Comprehensive Summary

**Cell Y** (Markdown):

```markdown
---

## 7. Summary

Congratulations! You've completed [Notebook Topic].

### Key Takeaways

✅ **[Key Concept 1]** - [Brief explanation]

✅ **[Key Concept 2]** - [Brief explanation]

✅ **[Key Concept 3]** - [Brief explanation]

✅ **[Key Concept 4]** - [Brief explanation]

✅ **[Key Concept 5]** - [Brief explanation]

### Design Patterns Learned

1. **[Pattern 1]**: [When and how to use it]
2. **[Pattern 2]**: [When and how to use it]
3. **[Pattern 3]**: [When and how to use it]

### Code Patterns

```python
# Pattern 1: [Name]
# [When to use this pattern]

# Pattern 2: [Name]
# [When to use this pattern]
```

### Common Pitfalls Avoided

⚠️ **Pitfall 1**: [What to avoid and why]
✅ **Solution**: [Correct approach]

⚠️ **Pitfall 2**: [What to avoid and why]
✅ **Solution**: [Correct approach]

### Next Steps

📚 **Continue Learning**:

- **Notebook [N+1]**: [Topic and why it's next]
- **Notebook [N+2]**: [Topic]
- **Documentation**: [Relevant official docs link]

🛠️ **Practice Projects**:

- [Project idea 1 applying these concepts]
- [Project idea 2]
- [Project idea 3]

💬 **Questions?** Review the exercises or check the [LangGraph documentation](https://langchain-ai.github.io/langgraph/)!

---

### What You Can Build Now

With the skills from this notebook, you can:

- ✅ [Capability 1]
- ✅ [Capability 2]
- ✅ [Capability 3]

### Resources

- [LangGraph Official Docs](https://langchain-ai.github.io/langgraph/)
- [Anthropic Claude Docs](https://docs.anthropic.com/)
- [Project GitHub Repository](https://github.com/cdot65/naf-ai-agents-workshop)

---

**Great work!** 🎉 You're ready to move on to [next topic]!

```

**Run**: `Shift + Enter`

---

## Phase 7: Final Steps (3 minutes)

### Step 14: Test Your Notebook

1. **Save your work**: `Cmd/Ctrl + S`

2. **Restart kernel and run all**:
   - Click "Kernel" menu → "Restart Kernel and Run All Cells"
   - Watch all cells execute in order
   - Fix any errors that appear

3. **Verify**:
   - ✅ All cells run without errors?
   - ✅ All outputs look correct?
   - ✅ Visualizations display properly?
   - ✅ Assertions pass?
   - ✅ No hardcoded secrets visible?

### Step 15: Test with Make Command

Open a terminal and run:

```bash
# Test your specific notebook
make test-foundations-5  # Or whatever number you used

# Or create a new make target in the Makefile
```

### Step 16: Commit (Optional)

The git filter will automatically strip outputs when you commit:

```bash
# Add your notebook
git add notebooks/05_your_topic.ipynb

# Commit (outputs will be auto-stripped)
git commit -m "Add notebook 05: [Your Topic]"

# Push if desired
git push
```

---

## Quick Reference: Cell Types & Shortcuts

### Cell Types

- **Markdown**: Press `M` key (in command mode) or use dropdown menu
- **Code**: Press `Y` key (in command mode) or use dropdown menu

### Essential Shortcuts

**Running Cells**:

- `Shift + Enter` - Run cell and move to next
- `Ctrl + Enter` - Run cell and stay on it
- `Alt + Enter` - Run cell and insert new cell below

**Adding Cells**:

- `B` - Add cell below (command mode)
- `A` - Add cell above (command mode)

**Deleting Cells**:

- `DD` - Delete cell (press D twice in command mode)

**Modes**:

- `Enter` - Enter edit mode (to type in cell)
- `Esc` - Enter command mode (to use shortcuts)

**Other Useful**:

- `M` - Convert to markdown (command mode)
- `Y` - Convert to code (command mode)
- `Z` - Undo cell deletion
- `Shift + M` - Merge selected cells

---

## Best Practices Checklist

Before finalizing your notebook, verify:

### Structure

- [ ] Title cell with all metadata present
- [ ] Learning objectives clearly stated
- [ ] Prerequisites listed
- [ ] Table of contents with working links
- [ ] Introduction explains "why" not just "what"

### Content

- [ ] All imports in setup section
- [ ] Environment variables loaded properly
- [ ] Every code concept has markdown explanation first
- [ ] Code cells are focused and concise (<50 lines)
- [ ] Examples show actual output
- [ ] Visualizations included where helpful

### Learning

- [ ] Progressive complexity (simple → advanced)
- [ ] Working examples for every concept
- [ ] Exercises with multiple hints
- [ ] Complete solutions provided
- [ ] Summary section reviews key concepts

### Quality

- [ ] Executes cleanly from top to bottom
- [ ] No hardcoded secrets or API keys
- [ ] Assertions validate key concepts
- [ ] Error handling demonstrated
- [ ] Consistent with other notebooks in series

### Polish

- [ ] Clear, concise language
- [ ] Code comments explain non-obvious parts
- [ ] Markdown formatting consistent
- [ ] Links work correctly
- [ ] No typos or grammatical errors

---

## Common Notebook Patterns

### Pattern 1: State Definition

```python
from typing import TypedDict, Annotated
from langgraph.graph.message import add_messages

class MyState(TypedDict):
    """Clear docstring explaining this state."""
    messages: Annotated[list, add_messages]  # Message history
    user_info: dict  # User context
    counter: int  # Some metric
```

### Pattern 2: Node Function

```python
def my_node(state: MyState) -> dict:
    """
    One-line description of what this node does.

    Args:
        state: Current graph state

    Returns:
        Dictionary with state updates
    """
    # Process state
    result = process(state)

    # Return updates (not full state)
    return {"field": result}
```

### Pattern 3: Graph Construction

```python
from langgraph.graph import StateGraph, START, END

# Create graph
graph = StateGraph(MyState)

# Add nodes
graph.add_node("node1", node1_function)
graph.add_node("node2", node2_function)

# Add edges
graph.add_edge(START, "node1")
graph.add_edge("node1", "node2")
graph.add_edge("node2", END)

# Compile
app = graph.compile()
```

### Pattern 4: Visualization

```python
from IPython.display import Image, display

# Show graph structure
display(Image(app.get_graph().draw_mermaid_png()))
```

### Pattern 5: Execution with Output

```python
# Run the graph
print("Executing graph...\n")
result = app.invoke({"initial": "state"})

# Display results
print("📊 Results:")
pprint(result)

# Validate
assert "expected_field" in result
print("\n✅ Success!")
```

---

## Example Topics for New Notebooks

If you need inspiration:

### Foundations Series

- State reducers and custom merge logic
- Conditional routing and dynamic edges
- Streaming responses and real-time updates
- Checkpointing and conversation memory
- Subgraphs and modular design
- Human-in-the-loop patterns
- Error handling and recovery
- Multi-agent coordination
- Tool calling with external APIs
- Monitoring and observability

### Advanced Topics

- Production deployment patterns
- Testing strategies for graphs
- Performance optimization
- Debugging complex graphs
- State migrations and versioning
- Distributed graph execution
- Custom serialization
- Integration with external systems

---

## Getting Help

**While Creating Your Notebook**:

- Ask Claude Code for specific code examples
- Request explanations of complex concepts
- Get help structuring difficult sections
- Validate your approach before implementing

**Example requests to Claude Code**:

- "Provide a complete example of a custom state reducer"
- "How should I explain conditional routing to beginners?"
- "Give me 3 exercises for practicing checkpointing"
- "Review my notebook structure and suggest improvements"

**Testing Issues**:

```bash
# Test individual notebook
make test-foundations-5

# Check for errors
jupyter nbconvert --to notebook --execute notebooks/05_topic.ipynb
```

**Documentation**:

- [LangGraph Docs](https://langchain-ai.github.io/langgraph/)
- [Anthropic Docs](https://docs.anthropic.com/)
- Project README.md

---

## Next Steps

Now that you have this guide:

1. **Choose your topic**: What LangGraph concept excites you?
2. **Create the notebook**: Follow Phase 1 to create the file
3. **Ask for help**: Request specific examples or outlines from Claude Code
4. **Build iteratively**: Add one section at a time, testing as you go
5. **Review and refine**: Use the checklist to ensure quality

**Ready to start?** Create your notebook and ask me for help with any section!

Good luck! 🚀
