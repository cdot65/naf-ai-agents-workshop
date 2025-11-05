# Workshop Truncation TODO

**Goal**: Reduce workshop to 3-hour Express format
**Strategy**: Heavy cuts to prerequisites, prioritize state + routing story, demo AI showcase
**Target**: 7 workshop notebooks (~180 min) + 4 self-study notebooks

**Time Allocation**:
- 101: Type Annotations → ~10-15 min (cut ~60%)
- 102: Core Concepts → ~25 min (cut ~30%)
- 103: First Graph → ~15 min (cut ~50%)
- 104: State Management → ~25 min (cut ~30%)
- 106: Conditional Routing + Sequential → ~35-40 min (expand, merge 105)
- 108: First LLM → ~20-25 min (demo-focused)
- 110: ReAct Agents → ~30-35 min (demo-focused)

**Total**: ~160-190 min + breaks = 3-3.5 hour workshop

---

## Phase 1A: Heavy Cuts (Save Time)

### 101: Type Annotations (~10-15 min target)

**Goal**: Cut ~60% of content, bare minimum for 102

- [ ] Read notebook top-to-bottom
- [ ] Identify TypedDict essentials (needed for 102)
- [ ] Remove ~60% of markdown explanations
- [ ] Keep only 1-2 quick demo examples
- [ ] Remove all exercises, mark as homework
- [ ] Add banner: "⏭️ Workshop: Fast intro, full TypedDict coverage in self-study"
- [ ] Add "📌 Demo:" markers for instructor sections
- [ ] Add "✏️ Homework:" markers for removed exercises
- [ ] Update metadata cell: duration ~10-15 min
- [ ] Test: notebook runs clean top-to-bottom

**Content to Keep**:
- What is TypedDict (1 paragraph)
- Basic TypedDict syntax (1 example)
- Why we use it in LangGraph (1 paragraph)

**Content to Cut**:
- Extended type examples (List, Optional, Union deep-dives)
- Multiple practice exercises
- Advanced typing patterns

---

### 103: First Graph (~15 min target)

**Goal**: Cut ~50% of content, single demo pattern

- [ ] Read notebook top-to-bottom
- [ ] Identify core START→node→END pattern
- [ ] Remove ~50% of markdown explanations
- [ ] Keep only 1 complete graph example
- [ ] Remove exercises, mark as homework
- [ ] Add banner: "⏭️ Workshop: Quick pattern intro, expanded examples in self-study"
- [ ] Add "📌 Demo:" markers
- [ ] Add "✏️ Homework:" markers
- [ ] Update metadata cell: duration ~15 min
- [ ] Test: notebook runs clean

**Content to Keep**:
- Basic graph structure explanation
- Single complete example: StateGraph → add_node → compile → invoke
- Graph visualization

**Content to Cut**:
- Multiple variations of examples
- Extended exercises
- Deep-dive explanations

---

## Phase 1B: Moderate Updates (Keep Core)

### 102: Core Concepts (~25 min target)

**Goal**: Cut ~30%, keep all core state/nodes/edges concepts

- [ ] Read notebook top-to-bottom
- [ ] Identify core concepts: State, Nodes, Edges
- [ ] Reduce markdown by ~30% (trim verbose sections)
- [ ] Convert exercises to instructor demos (70/30 split)
- [ ] Add "📌 Demo:" markers for instructor walkthrough
- [ ] Add "✏️ Homework:" markers for student practice
- [ ] Update metadata cell: duration ~25 min
- [ ] Test: notebook runs clean

**Content to Keep**:
- All core concepts (State, Nodes, Edges, Graph)
- Key examples for each concept
- Visualizations

**Content to Trim**:
- Verbose explanations (condense)
- Redundant examples
- Convert hands-on to demos

---

### 104: State Management (~25 min target)

**Goal**: Cut ~30%, keep complex state patterns

- [ ] Read notebook top-to-bottom
- [ ] Identify essential complex state patterns
- [ ] Reduce markdown by ~30%
- [ ] Convert exercises to demos (70/30 split)
- [ ] Add "📌 Demo:" and "✏️ Homework:" markers
- [ ] Update metadata cell: duration ~25 min
- [ ] Test: notebook runs clean

**Content to Keep**:
- Multi-field state examples
- Complex data types (lists, dicts)
- State accumulation patterns

**Content to Trim**:
- Verbose explanations
- Redundant examples
- Convert exercises to demos

---

## Phase 1C: Core Story (Expand & Merge)

### 106: Conditional Routing + Sequential (~35-40 min target)

**Goal**: Expand 106, merge sequential intro from 105

- [ ] Read both 105 and 106 notebooks thoroughly
- [ ] Identify sequential patterns to extract from 105:
  - Multi-node chains with add_edge()
  - 2-node example (simple pipeline)
  - State flow through sequential nodes
- [ ] Create new section in 106: "2.0 Sequential Patterns Primer"
  - Place before conditional routing sections
  - Keep to 5-10 min of content
  - Quick overview, not deep dive
  - Reference 105 for full treatment
- [ ] Add content to 106:
  ```markdown
  ## 2.0 Sequential Patterns Primer (From 105)

  Before we learn conditional routing, let's quickly review sequential patterns...

  ### 2.0.1 Multi-Node Chains
  [Simple 2-node example from 105]

  ### 2.0.2 State Flow
  [How state flows through sequential nodes]

  💡 **Note**: For comprehensive sequential workflows, see Notebook 105 (self-study).
  This primer covers just enough for conditional routing context.
  ```
- [ ] Keep all existing conditional routing content
- [ ] Add "📌 Demo:" and "✏️ Homework:" markers
- [ ] Update metadata cell: duration ~35-40 min, prerequisites mention 105 concepts
- [ ] Test: notebook runs clean

**Sequential Content to Add** (from 105):
- Basic add_edge() pattern (2-3 minutes)
- Simple 2-node example (5 minutes)
- State accumulation concept (2-3 minutes)

**Conditional Content to Keep** (all existing):
- All conditional routing patterns
- Router functions with Literal
- Lambda passthrough pattern
- All examples and demos

---

### 105: Sequential Workflows (self-study, partial migration)

**Goal**: Mark as self-study extended content, note migration to 106

- [ ] Read notebook top-to-bottom
- [ ] Identify content migrated to 106 (sequential primer)
- [ ] Add banner at top:
  ```markdown
  # ⏭️ Workshop Note

  **Express Workshop**: Sequential patterns intro covered in Notebook 106.
  This notebook provides comprehensive deep-dive for self-study.

  **In Workshop**: 106 covers sequential basics (10 min)
  **Self-Study**: This notebook for sequential mastery (35+ min)
  ```
- [ ] Update metadata cell:
  - Add field: "workshop_status": "self-study-extended"
  - Keep duration: ~35 min
  - Note: "Content intro in 106, full coverage here"
- [ ] Add cross-reference in intro: "See 106 Section 2.0 for primer"
- [ ] NO content removal (keep everything for self-study)
- [ ] Test: notebook runs clean

---

## Phase 1D: AI Showcase (Demo-Focused)

### 108: First LLM (~20-25 min target)

**Goal**: Minimal cuts, demo-focused delivery

- [ ] Read notebook top-to-bottom
- [ ] Already demo-heavy, identify any exercises
- [ ] Convert remaining exercises to demos
- [ ] Add "📌 Demo:" markers for instructor sections
- [ ] Add "✏️ Homework:" markers for student practice
- [ ] Update metadata cell: duration ~20-25 min
- [ ] Test: notebook runs clean (requires ANTHROPIC_API_KEY)

**Content to Keep**:
- All LLM integration content
- Claude setup and examples
- All demonstrations

---

### 110: ReAct Agents (~30-35 min target)

**Goal**: Minimal cuts, demo-focused capstone

- [ ] Read notebook top-to-bottom
- [ ] Already demo-heavy, identify any exercises
- [ ] Convert remaining exercises to demos
- [ ] Add "📌 Demo:" markers
- [ ] Add "✏️ Homework:" markers
- [ ] Update metadata cell: duration ~30-35 min
- [ ] Test: notebook runs clean (requires ANTHROPIC_API_KEY)

**Content to Keep**:
- All ReAct agent patterns
- Tool integration examples
- All demonstrations

---

## Phase 1E: Self-Study Markers

### 107: Looping (self-study only)

**Goal**: Mark as self-study, advanced pattern

- [ ] Read notebook top-to-bottom
- [ ] Add banner at top:
  ```markdown
  # ⏭️ Workshop Note

  **Express Workshop**: This notebook skipped in 3-hour format.
  Looping patterns are advanced - covered in self-study.

  **Prerequisites**: Complete workshop notebooks 101-106 first.
  ```
- [ ] Update metadata cell:
  - Add field: "workshop_status": "self-study-only"
  - Keep duration: ~25 min
  - Note: "Advanced pattern - self-study only"
- [ ] NO content changes
- [ ] Test: notebook runs clean

---

### 109: Memory (self-study only)

**Goal**: Mark as self-study, concepts in 110

- [ ] Read notebook top-to-bottom
- [ ] Add banner at top:
  ```markdown
  # ⏭️ Workshop Note

  **Express Workshop**: This notebook skipped in 3-hour format.
  Memory concepts covered briefly in Notebook 110.

  **In Workshop**: 110 covers memory basics
  **Self-Study**: This notebook for comprehensive memory patterns
  ```
- [ ] Update metadata cell:
  - Add field: "workshop_status": "self-study-only"
  - Keep duration: ~25 min
  - Note: "Concepts in 110, deep-dive here"
- [ ] NO content changes
- [ ] Test: notebook runs clean

---

### 111: Human-in-Loop (already self-study)

**Goal**: No changes needed

- [ ] Verify metadata already marks as advanced/capstone
- [ ] NO changes needed
- [ ] Test: notebook runs clean

---

## Phase 2: Documentation Updates

### README.md

**Goal**: Update for 3-hour Express workshop

- [ ] Read current README workshop section
- [ ] Update "Workshop Structure" section:
  - Document 7 workshop notebooks
  - Document 4 self-study notebooks
  - Time breakdown per notebook
  - Total: ~3-3.5 hours
- [ ] Add timing table:
  ```markdown
  | Notebook | Duration | Type | Topic |
  |----------|----------|------|-------|
  | 101 | 10-15 min | Hands-on | Type Annotations |
  | 102 | 25 min | Hands-on | Core Concepts |
  | 103 | 15 min | Hands-on | First Graph |
  | 104 | 25 min | Hands-on | State Management |
  | 106 | 35-40 min | Hands-on | Sequential + Conditional Routing |
  | 108 | 20-25 min | Demo | First LLM |
  | 110 | 30-35 min | Demo | ReAct Agents |
  | **Total** | **160-190 min** | | **+ breaks = 3-3.5 hrs** |
  ```
- [ ] Add "Self-Study Path" section:
  - 105: Sequential Workflows (35 min)
  - 107: Looping (25 min)
  - 109: Memory (25 min)
  - 111: Human-in-Loop (20 min)
- [ ] Update Phase 1/Phase 2 breakdown
- [ ] Add note about demo vs hands-on split (70/30)
- [ ] Test: README renders correctly

---

### WORKSHOP_PLAN.md

**Goal**: Rewrite for 3-hour Express format

- [ ] Read current WORKSHOP_PLAN.md
- [ ] Rewrite for Express format:
  - 3-hour total timeline
  - 7 notebooks with timing
  - Break schedule (15 min break after 106)
  - 70/30 demo-focused delivery
- [ ] Add "Session 1" (0:00-1:30): 101-104
  - 101: 10-15 min
  - 102: 25 min
  - 103: 15 min
  - 104: 25 min
  - Buffer: 10-15 min
- [ ] Add "Break" (1:30-1:45): 15 min
- [ ] Add "Session 2" (1:45-3:00): 106
  - 106: 35-40 min with sequential primer
  - Buffer: 10 min
- [ ] Add "Break" (3:00-3:15): 15 min (API key setup)
- [ ] Add "Session 3" (3:15-4:30): 108, 110
  - 108: 20-25 min demo
  - 110: 30-35 min demo
  - Buffer/Q&A: 15-20 min
- [ ] Add instructor notes:
  - Heavy-cut sections (101, 103) - what to emphasize
  - Demo focus for 108, 110
  - Homework assignments
- [ ] Add troubleshooting section
- [ ] Test: WORKSHOP_PLAN renders correctly

---

### CLAUDE.md

**Goal**: Update project overview for Express format

- [ ] Read current CLAUDE.md
- [ ] Update "Project Overview" section:
  - Mention 3-hour Express workshop
  - Note 7 workshop + 4 self-study split
- [ ] Update "Notebook Structure" section:
  - List workshop notebooks with times
  - List self-study notebooks
  - Explain migration (105→106)
- [ ] Update "Development Commands" section if needed
- [ ] Add note about `make test-workshop` vs `make test-all`
- [ ] Test: CLAUDE.md renders correctly

---

## Phase 3: Makefile Updates

**Goal**: Add workshop-specific targets

- [ ] Read current Makefile
- [ ] Add `make test-workshop` target:
  ```makefile
  # Test workshop notebooks only (3-hour Express format)
  test-workshop:
  	@echo "Testing 7 workshop notebooks (101-106, 108, 110)..."
  	pytest --nbmake notebooks/101_type_annotations.ipynb
  	pytest --nbmake notebooks/102_core_concepts.ipynb
  	pytest --nbmake notebooks/103_first_graph.ipynb
  	pytest --nbmake notebooks/104_state_management.ipynb
  	pytest --nbmake notebooks/106_conditional_routing.ipynb
  	pytest --nbmake notebooks/108_first_llm.ipynb
  	pytest --nbmake notebooks/110_react_agents.ipynb
  	@echo "✅ Workshop notebooks passed!"
  ```
- [ ] Add `make test-self-study` target:
  ```makefile
  # Test self-study notebooks only
  test-self-study:
  	@echo "Testing 4 self-study notebooks (105, 107, 109, 111)..."
  	pytest --nbmake notebooks/105_sequential_workflows.ipynb
  	pytest --nbmake notebooks/107_looping.ipynb
  	pytest --nbmake notebooks/109_memory.ipynb
  	pytest --nbmake notebooks/111_human_in_loop.ipynb
  	@echo "✅ Self-study notebooks passed!"
  ```
- [ ] Update `make test-phase1` if needed (workshop subset)
- [ ] Update `make test-phase2` if needed (workshop subset)
- [ ] Add `make clean-workshop` target
- [ ] Add comments explaining workshop vs full suite
- [ ] Test: `make test-workshop` runs (may need to skip if no ANTHROPIC_API_KEY)

---

## Phase 4: Testing & Validation

### Individual Notebook Testing

- [ ] Run 101: Clean execution, ~10-15 min
- [ ] Run 102: Clean execution, ~25 min
- [ ] Run 103: Clean execution, ~15 min
- [ ] Run 104: Clean execution, ~25 min
- [ ] Run 106: Clean execution, ~35-40 min (with sequential intro)
- [ ] Run 108: Clean execution, ~20-25 min (requires API key)
- [ ] Run 110: Clean execution, ~30-35 min (requires API key)

### Self-Study Notebooks

- [ ] Verify 105: Banner displays, runs clean
- [ ] Verify 107: Banner displays, runs clean
- [ ] Verify 109: Banner displays, runs clean
- [ ] Verify 111: No changes, runs clean

### Documentation Testing

- [ ] README: Accurate workshop description, timing correct
- [ ] WORKSHOP_PLAN: Clear session breakdown, timing adds up
- [ ] CLAUDE.md: Updated references
- [ ] Makefile: `make test-workshop` works

### End-to-End Workshop Test

- [ ] Run notebooks in sequence: 101→102→103→104→106→108→110
- [ ] Time the full run (should be ~160-190 min)
- [ ] Verify no breaking dependencies
- [ ] Verify demo markers are clear
- [ ] Verify homework markers are clear
- [ ] Check visualizations render correctly

### Timing Validation

- [ ] 101: Actually takes 10-15 min?
- [ ] 102: Actually takes ~25 min?
- [ ] 103: Actually takes ~15 min?
- [ ] 104: Actually takes ~25 min?
- [ ] 106: Actually takes ~35-40 min?
- [ ] 108: Actually takes ~20-25 min?
- [ ] 110: Actually takes ~30-35 min?
- [ ] Total: ~3-3.5 hours with breaks?

---

## Phase 5: Optional Enhancements

### Workshop Experience

- [ ] Add "⏱️ Time Check" markers at key milestones
- [ ] Add "❓ Q&A Pause" markers for discussion points
- [ ] Create instructor cheat sheet (key points per notebook)
- [ ] Add troubleshooting section to README

### Content Refinement

- [ ] Review all markdown for conciseness
- [ ] Ensure consistent voice/tone across notebooks
- [ ] Check for outdated references
- [ ] Verify all code examples work
- [ ] Spell check all markdown

---

## Success Criteria

- ✅ Workshop runs in 3-3.5 hours (including breaks)
- ✅ 7 workshop notebooks (101-106, 108, 110) execute cleanly
- ✅ 4 self-study notebooks (105, 107, 109, 111) have clear banners
- ✅ Demo/homework markers throughout workshop notebooks
- ✅ Documentation accurately reflects Express format
- ✅ Self-study path well-documented
- ✅ `make test-workshop` target works
- ✅ No breaking changes to existing functionality
- ✅ 106 contains sequential primer from 105
- ✅ Timing targets hit: 101(15m), 102(25m), 103(15m), 104(25m), 106(40m), 108(25m), 110(35m)

---

## Timeline Estimates

**Phase 1A** (Heavy Cuts): ~2 hours
- 101: 1 hour
- 103: 1 hour

**Phase 1B** (Moderate Updates): ~2 hours
- 102: 1 hour
- 104: 1 hour

**Phase 1C** (Expand & Merge): ~2-3 hours
- 106 expansion: 1-1.5 hours
- 105 marking: 30 min
- Testing merge: 1 hour

**Phase 1D** (AI Showcase): ~1 hour
- 108: 30 min
- 110: 30 min

**Phase 1E** (Self-Study Markers): ~30 min
- 107, 109, 111: 10 min each

**Phase 2** (Documentation): ~2-3 hours
- README: 1 hour
- WORKSHOP_PLAN: 1-1.5 hours
- CLAUDE.md: 30 min

**Phase 3** (Makefile): ~1 hour

**Phase 4** (Testing): ~2-3 hours
- Individual tests: 1 hour
- End-to-end: 1-2 hours

**Phase 5** (Optional): ~2-4 hours

**Total Core Work**: 12-15 hours
**With Optional**: 14-19 hours

---

## Notes

- Prioritize state + routing story (102, 104, 106) over prerequisites (101, 103)
- 70/30 demo-focused: most content is instructor-led, students observe
- Exercises become homework for independent completion
- Self-study notebooks remain fully functional
- 106 becomes the centerpiece: sequential + conditional routing in one narrative
- Total workshop: ~3-3.5 hours is realistic with breaks
- Keep all 11 notebooks for comprehensive learning path
