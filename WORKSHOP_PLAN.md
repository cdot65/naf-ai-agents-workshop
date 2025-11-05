# Workshop Plan: LangGraph for Network Automation - Express Format

**Duration:** 3-4 hours
**Format:** Instructor-led with 70/30 demo-focused delivery
**Target:** Network security engineers, Python basics assumed
**Notebooks:** 7 workshop notebooks (101-106, 108, 110) + 4 self-study (105, 107, 109, 111)

---

## Overview

Express introduction to building AI agents for network automation using LangGraph and Palo Alto Networks SCM. Core concepts demonstrated in workshop; attendees complete full series afterward for mastery.

**Approach:** Survey/exposure to patterns → comprehensive self-study
**Session 1:** LangGraph foundations (no API key, hands-on)
**Session 2:** Routing patterns (no API key, hands-on)
**Session 3:** LLM integration with Claude AI (demo-focused capstone)

**Total Time:** ~3-3.5 hours (160-190 min + breaks)

---

## Workshop Flow & Timing

### Session 1: Foundations (0:00-1:30, ~90 min)

**0:00-0:10 (10 min) - Welcome & Setup**

- Workshop overview and objectives
- **Codespaces users:** Verify Codespace access
- **Local users:** Verify Python/Jupyter installations
- Set expectations: demo-focused, materials for mastery later
- Note: Express format prioritizes breadth over depth

**0:10-0:25 (15 min) - Type Annotations (NB 101)**

- **Format:** Instructor demo (70/30)
- **Topics:** TypedDict essentials for LangGraph state
- **Activity:** Live code demo with address object schema
- **Key concept:** TypedDict defines state structure
- **Student follow-along:** Run cells, observe

**0:25-0:50 (25 min) - Core Concepts (NB 102)**

- **Format:** Hands-on (students code)
- **Topics:** State, Nodes, Edges, Graphs
- **Activity:** Build address validation workflow together
- **Key concept:** State flows through node functions
- **Hands-on:** Create 2-node graph, run it

**0:50-1:05 (15 min) - Your First Graph (NB 103)**

- **Format:** Instructor demo (70/30)
- **Topics:** Single-node pattern, compile, invoke
- **Activity:** Demo START→node→END pattern
- **Key concept:** Graph compilation creates executable app
- **Student follow-along:** Run cells, visualize graph

**1:05-1:30 (25 min) - State Management (NB 104)**

- **Format:** Hands-on (students code)
- **Topics:** Complex multi-field states
- **Activity:** Build state with lists, dicts, optional fields
- **Key concept:** State can hold any Python type
- **Hands-on:** Design SCM workflow state

**1:30-1:45 (15 min) - BREAK**

---

### Session 2: Routing Patterns (1:45-3:00, ~75 min)

**1:45-2:25 (40 min) - Sequential + Conditional Routing (NB 106)**

- **Format:** Hands-on (students code)
- **Topics:** Sequential basics (from 105) + conditional routing
- **Part 1 (10 min):** Sequential patterns primer
  - Quick review: add_edge() for node chaining
  - Demo: 2-node validation→create pipeline
- **Part 2 (30 min):** Conditional routing
  - Router functions with Literal return types
  - add_conditional_edges() for branching
  - Demo: folder-based routing (dev/prod)
  - Hands-on: Build 3-way router
- **Key concept:** Sequential = fixed path, Conditional = dynamic path
- **Note:** Full sequential deep-dive in NB 105 (self-study)

**2:25-2:50 (25 min) - Wrap & Discussion**

- Recap: State → Nodes → Sequential → Conditional
- Discussion: Real SCM workflows (tag→address→group)
- Preview: Phase 2 adds AI to these patterns
- Note: NB 105 (sequential deep-dive), NB 107 (looping) available for self-study
- Buffer for questions

**2:50-3:00 (10 min) - Mini Break**

- Stretch, obtain Anthropic API keys
- Configure .env files if participating in Phase 2
- Optional: Observe only if no API key

**3:00-3:15 (15 min) - BREAK**

---

### Session 3: AI Integration (3:15-4:30, ~75 min)

**3:15-3:40 (25 min) - First LLM Integration (NB 108)**

- **Format:** Instructor demo (90/10)
- **Topics:** Claude API, HumanMessage, simple bot
- **Activity:** Build PAN-OS query bot
- **Key concept:** llm.invoke() with messages
- **Demo:** Live Claude API calls (~$0.01)
- **Discussion:** Stateless bot limitations (no memory)
- **Student observe:** Follow along, run cells if API key available
- **Note:** Full memory patterns in NB 109 (self-study)

**3:40-4:15 (35 min) - ReAct Agents with Tools (NB 110)**

- **Format:** Instructor demo (90/10) - Capstone
- **Topics:** add_messages reducer, tools, ReAct pattern
- **Part 1 (10 min):** Reducers explained
  - What is add_messages?
  - Why it eliminates manual state management
  - Compare to NB 109 manual approach (self-study)
- **Part 2 (25 min):** ReAct pattern demonstration
  - Create SCM tools (fetch, create, list, group)
  - Build agent that calls tools
  - Demo: Multi-step autonomous workflow
  - Reasoning → Acting loop visualization
- **Key concept:** Agent decides which tools to call, when to stop
- **Demo:** "Create 4 servers and group them" → agent autonomously chains 5 tool calls
- **Discussion:** Tool design best practices
- **Note:** NB 111 (human-in-loop) for production patterns (self-study)

**4:15-4:25 (10 min) - Workshop Wrap-Up**

- Recap: From TypedDict → Core Concepts → Routing → AI Agents
- What you can build now: Intelligent SCM automation
- Next steps: Self-study path (NB 105, 107, 109, 111)
- Resources: All 11 notebooks available for mastery

**4:25-4:30 (5 min) - Final Q&A**

- Open questions
- Workshop feedback
- Instructor contact

---

## Break Schedule

| Time | Duration | Purpose |
|------|----------|---------|
| 1:30-1:45 | 15 min | Mid-workshop break |
| 2:50-3:00 | 10 min | Mini break, API key setup |
| 3:00-3:15 | 15 min | Pre-Phase 2 break |

**Total breaks:** 40 minutes
**Total instruction:** 190 minutes
**Workshop end:** ~4:30 (including buffers and Q&A)

---

## Notebook Coverage

### Workshop Notebooks (7 total)

| NB | Topic | Duration | Format | Key Takeaway |
|----|-------|----------|--------|--------------|
| **101** | Type Annotations | 10-15 min | Demo | TypedDict for state schemas |
| **102** | Core Concepts | 25 min | Hands-on | State, Nodes, Edges, Graphs |
| **103** | First Graph | 15 min | Demo | START→node→END pattern |
| **104** | State Management | 25 min | Hands-on | Complex multi-field states |
| **106** | Sequential + Conditional | 35-40 min | Hands-on | Routing patterns |
| **108** | First LLM | 20-25 min | Demo | Claude integration |
| **110** | ReAct Agents | 30-35 min | Demo | Tools + reducers capstone |

**Total:** 160-190 minutes

### Self-Study Notebooks (4 total)

| NB | Topic | Duration | Level | When to Study |
|----|-------|----------|-------|---------------|
| **105** | Sequential Workflows | ~35 min | Extended | After 106 for deep-dive |
| **107** | Looping Workflows | ~25 min | Advanced | After 106 for retry patterns |
| **109** | Conversational Memory | ~25 min | Extended | After 110 for memory deep-dive |
| **111** | Human-in-Loop | ~20 min | Advanced | After 110 for production patterns |

**Self-study adds:** ~2-3 hours for comprehensive mastery

---

## Activities Summary

### Hands-On Labs (Students Code)

1. **Define state schema** (NB 102) - 5 min
2. **Build 2-node graph** (NB 102) - 10 min
3. **Design complex state** (NB 104) - 10 min
4. **Build sequential pipeline** (NB 106) - 5 min
5. **Implement conditional router** (NB 106) - 15 min

**Total hands-on:** ~45 minutes (30%)

### Instructor Demos (Students Observe)

1. **TypedDict essentials** (NB 101) - 10 min
2. **Address validation workflow** (NB 103) - 10 min
3. **Sequential patterns primer** (NB 106) - 10 min
4. **Claude API integration** (NB 108) - 20 min
5. **ReAct agent with tools** (NB 110) - 30 min

**Total demos:** ~80 minutes (50%)

### Discussions & Wrap-Ups

- Phase 1 wrap-up - 25 min
- Workshop conclusion - 15 min

**Total discussion:** ~40 minutes (20%)

---

## Key Topics Covered

### Phase 1: Foundations (No API Key)

**Covered in Workshop:**
- TypedDict basics for state schemas
- State, Nodes, Edges, Graphs
- Single-node and multi-field patterns
- Sequential workflow basics (primer)
- Conditional routing with router functions
- Graph compilation and execution

**Available for Self-Study:**
- Sequential workflows deep-dive (NB 105)
- Looping and retry patterns (NB 107)
- Union/Optional/Lambda types (NB 101 full version)

### Phase 2: LLM Integration (API Key)

**Covered in Workshop:**
- Claude API integration basics
- HumanMessage and simple bots
- add_messages reducer pattern
- StructuredTool creation
- ReAct agent architecture
- Autonomous multi-step workflows

**Available for Self-Study:**
- Conversational memory management (NB 109)
- Human-in-the-loop workflows (NB 111)
- Advanced tool patterns
- Production deployment patterns

### Cross-Cutting (All Notebooks)

- Palo Alto Networks SCM objects (addresses, groups, rules, tags)
- pan-scm-sdk API patterns
- Error handling basics
- Graph visualization
- State flow understanding

---

## Materials Provided

**Pre-workshop:**
- Repository URL for forking
- GitHub Codespaces configuration
- .env.template for API keys
- WORKSHOP_FAQ.md with setup

**During workshop:**
- Pre-configured cloud environment (Codespaces)
- Live coding demonstrations
- Instructor-led walkthroughs
- Real-time Q&A

**Post-workshop:**
- Complete 11-notebook series
- Self-study path guidance
- Production examples (/docs/examples)
- Reusable code patterns (/src)

---

## Prerequisites

**Required (All Attendees):**
- GitHub account (free)
- Stable internet connection
- Web browser

**Setup - Codespaces (Recommended):**
- GitHub account + browser only
- Zero local installation
- Works on any device
- Free tier: 60 hours/month (workshop uses ~4 hours)

**Setup - Local (Optional):**
- Python 3.11+
- Jupyter Lab
- Git installed

**For Phase 2 (Optional):**
- Anthropic API key (~$0.50 cost for workshop)
- Or observe instructor demos without running cells

**Knowledge:**
- Basic Python (functions, dictionaries)
- Network security concepts
- NO prior LangGraph/AI experience needed

---

## Success Criteria

**By end of workshop, attendees can:**

1. ✅ Understand LangGraph core architecture (State, Nodes, Edges, Graphs)
2. ✅ Build simple sequential and conditional workflows
3. ✅ Design complex state schemas with TypedDict
4. ✅ Understand Claude AI integration basics
5. ✅ Recognize ReAct pattern and tool calling
6. ✅ Know where to continue learning (self-study notebooks)

**Post-workshop mastery goals:**

- Complete all 11 notebooks independently (~10-15 hours)
- Build custom AI automation agents for SCM
- Implement production retry/looping patterns
- Deploy real-world workflows

---

## Instructor Notes

### Pacing Guidance

**Session 1 (1:30):**
- Keep NB 101 brief (~10-12 min) - just TypedDict essentials
- Ensure NB 102 hands-on completes (~20 min minimum)
- NB 103 can flex shorter if needed (~10-12 min)
- NB 104 hands-on is important (~20 min minimum)

**Session 2 (1:15):**
- NB 106 is the centerpiece - don't rush (~35-40 min)
- Sequential primer must be clear (~10 min)
- Conditional routing needs hands-on time (~25 min)

**Session 3 (1:15):**
- NB 108 can be faster demo (~15-20 min)
- NB 110 is the capstone - give it time (~30-35 min)
- Emphasize reducer concept and ReAct loop

### Demo vs Hands-On

**Heavy demo** (90/10): 101, 103, 108, 110
**Hands-on** (30/70 or 50/50): 102, 104, 106

### Common Questions

**Q:** "Will we cover looping/retry patterns?"
**A:** "Looping (NB 107) is self-study - foundations are sequential + conditional which you're learning now."

**Q:** "Will we build memory into the agent?"
**A:** "Memory deep-dive (NB 109) is self-study. NB 110 shows reducers which handle memory automatically."

**Q:** "Can we deploy these to production?"
**A:** "NB 111 (self-study) covers human-in-loop patterns needed for production. Today you'll see the foundations."

### Technical Notes

- Have Anthropic API key ready for demos
- Test NB 110 multi-tool workflow before session
- Keep Codespace running throughout
- Monitor time - Sessions 1 & 2 tend to run long
- Build buffer into NB 106 (most complex hands-on)

### Flexibility Points

- If ahead: Expand NB 106 hands-on, add more discussion
- If behind: Shorten NB 101 to 8 min, NB 103 to 10 min
- Last resort: Make NB 104 a demo instead of hands-on

---

## Logistics

**Pace:** Intensive - 70/30 demo-focused covering essentials in 3-4 hours
**Philosophy:** Survey/exposure in session, mastery through self-study
**Setup:** GitHub Codespaces recommended for zero-install
**Support:** Instructor available post-workshop via GitHub/email
**API Costs:** ~$0.50 for Phase 2 (optional for attendees)
**Internet:** Required for Codespaces and API calls
**Recording:** Check with organizers

---

## Self-Study Roadmap

**After Workshop, Complete:**

1. **NB 105** - Sequential Workflows (~35 min)
   - Comprehensive multi-node pipelines
   - Tag→Address→Group workflow
   - Error handling across steps

2. **NB 107** - Looping Workflows (~25 min)
   - Self-referencing edges
   - Retry logic with counters
   - Pagination patterns

3. **NB 109** - Conversational Memory (~25 min)
   - Manual message history management
   - Compare to NB 110 reducer approach
   - Token cost considerations

4. **NB 111** - Human-in-the-Loop (~20 min)
   - Interactive approval workflows
   - Production deployment patterns
   - NAT policy drafting example

**Total Additional Learning:** ~2-3 hours for comprehensive mastery

**Capstone Project Ideas:**
- Build complete SCM CRUD agent
- Implement firewall migration assistant
- Create compliance checking bot
- Design interactive policy builder
