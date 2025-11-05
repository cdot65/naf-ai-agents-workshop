# Workshop FAQ: LangGraph for Network Automation

**Welcome!** This guide helps you prepare for the LangGraph AI Agents workshop. Follow this checklist to ensure a smooth learning experience.

---

## ⚠️ REQUIRED Prerequisites

### Setup Options

**Choose your setup method:**

### Option A: GitHub Codespaces (Recommended - Zero Install!)

**Easiest and fastest way to get started:**

- **GitHub account** - [Sign up free](https://github.com/signup)
- **Web browser** - Chrome, Firefox, Safari, Edge
- **That's it!** - Everything pre-configured in cloud environment

**Benefits:**

- No local installation needed
- Pre-configured Python 3.11, Jupyter, all dependencies
- Works on any device
- Ready in 2 minutes
- Free tier: 60 hours/month

### Option B: Local Setup (Optional)

**If you prefer working locally:**

- **Python 3.11 or higher** - [Download here](https://www.python.org/downloads/)
- **uv package manager** (recommended) - `curl -LsSf https://astral.sh/uv/install.sh | sh`
  - *Alternative: pip works too*
- **Jupyter Lab** - Installed automatically during setup
- **Git** - For cloning the repository

**Verify Python version:**

```bash
python --version  # Should show 3.11 or higher
```

### API Keys & Costs

**Phase 1 (Notebooks 101-107): NO API KEY NEEDED**

- First half of workshop works with mock data
- Learn core LangGraph concepts
- No external API calls, no costs
- **You can start the workshop immediately!**

**Phase 2 (Notebooks 108-111): ANTHROPIC API KEY REQUIRED**

- Get your key: <https://console.anthropic.com/settings/keys>
- **Cost: Less than $1 for entire workshop**
- Uses Claude 4.5 Haiku (cost-effective model)
- Add to `.env` file when ready for Phase 2

**Note:** Workshop may provide temporary API keys. Check with instructor.

---

## ✓ What to Bring Checklist

**Required for workshop day (Codespaces users):**

- [ ] GitHub account (create free at github.com)
- [ ] Web browser (Chrome, Firefox, Safari, Edge)
- [ ] Stable internet connection
- [ ] Anthropic API key obtained (for Phase 2)
  - Or plan to observe instructor demos in Phase 2

**Required for workshop day (Local setup users):**

- [ ] Laptop with Python 3.11+ installed
- [ ] GitHub account (for forking/cloning repo)
- [ ] Terminal/command line access
- [ ] Text editor or IDE (VS Code, PyCharm, Cursor, etc.)
- [ ] Anthropic API key obtained (for Phase 2)
  - Or plan to observe instructor demos in Phase 2
- [ ] Stable internet connection

**Helpful to have (all users):**

- [ ] Familiarity with basic Python (functions, dictionaries)
- [ ] Understanding of network security concepts (helpful but not required)
- [ ] Basic command line knowledge (helpful but not required)

---

## 🔧 Quick Setup Instructions

### Option A: GitHub Codespaces (Recommended)

**Super fast setup - 3 steps:**

1. **Fork the repository**
   - Go to the workshop GitHub repo
   - Click "Fork" button (top right)
   - Creates your own copy

2. **Launch Codespace**
   - On your forked repo, click "Code" button (green)
   - Select "Codespaces" tab
   - Click "Create codespace on main"
   - Wait 1-2 minutes while environment builds

3. **Start working!**
   - Jupyter Lab launches automatically
   - Navigate to `notebooks/` folder
   - Open `101_type_annotations.ipynb`
   - For Phase 2: Create `.env` file and add API key

**That's it!** Everything pre-configured and ready.

### Option B: Local Setup

**Run these commands before the workshop:**

```bash
# 1. Fork repo on GitHub, then clone YOUR fork
git clone <your-fork-url>
cd naf-ai-agents-workshop

# 2. Install dependencies (creates virtual environment)
make setup

# 3. Configure environment (for Phase 2 later)
cp .env.template .env
# Edit .env with your API key when ready

# 4. Verify installation
make jupyter  # Should open Jupyter Lab in browser
```

**Troubleshooting?** See section below.

---

## 📚 OPTIONAL but Helpful

### Additional Tools

**For enhanced experience:**

- **LangSmith Account** - Observability and tracing (free tier available)
  - Get key: <https://smith.langchain.com/>
- **LangGraph Studio** - Visual workflow development
  - Install: `make studio-install`
- **SCM Credentials** - For production Palo Alto Networks API access
  - Not needed for workshop; mock data provided

### Development Tools

Already using an IDE? Great!

- VS Code + Python extension
- PyCharm
- Cursor
- Any editor with Jupyter support

---

## 📖 Pre-Reading Materials

**Review before workshop**

1. **Workshop README** - Clone repo and read `README.md`
   - Overview of workshop structure
   - Technology stack explanation

2. **LangGraph Basics** (optional conceptual primer)
   - What are state graphs?
   - Nodes, edges, and state management
   - *Don't worry - workshop teaches from scratch*

3. **Palo Alto Networks Concepts** (if unfamiliar)
   - Address objects
   - Security rules
   - Zone-based firewalls
   - *Network security engineers likely already know this*

4. **Python Type Annotations** (quick refresh)
   - TypedDict
   - Union types
   - Optional fields
   - *Notebook 101 covers this thoroughly*

**What you DON'T need:**

- ❌ Machine learning knowledge
- ❌ Prior LangGraph/LangChain experience
- ❌ Advanced Python skills
- ❌ Production SCM access

---

## ⏱️ Time Commitment

**Phase 1: Foundations**

- Notebooks 101-107
- No API key needed
- Core LangGraph patterns
- Can complete at your own pace

**Phase 2: LLM Integration**

- Notebooks 108-111
- API key required (~$1 cost)
- Claude AI integration
- Real agent building

**Break between phases:** Perfectly fine! Phase 1 is self-contained.

---

## 🔧 Troubleshooting Tips

### GitHub Codespaces Issues

**Codespace won't start:**

- Check GitHub account status and login
- Verify free tier hours available (github.com/settings/billing)
- Try creating new Codespace (delete old one if needed)
- Check browser allows pop-ups and cookies

**Jupyter not loading:**

- Codespace auto-launches Jupyter
- If missing, run in terminal: `make jupyter`
- Or: `jupyter lab --allow-root`

**Slow performance:**

- Codespaces runs in cloud, needs good internet
- Consider local setup if connectivity poor
- Free tier uses smaller machines (sufficient for workshop)

**Can't save files:**

- Ensure you forked repo (not just viewed)
- Changes save to your fork automatically
- Use Git to commit/push for persistence

### Local Setup Issues

**Python version error:**

```bash
# Check version
python --version
python3 --version

# Use python3 if needed
python3 -m pip install uv
```

**Virtual environment not activating:**

```bash
# uv handles this automatically with:
make setup

# Manual activation if needed:
source .venv/bin/activate  # Mac/Linux
.venv\Scripts\activate     # Windows
```

**Jupyter kernel not found:**

```bash
# Install kernel in virtual environment
uv run python -m ipykernel install --user --name=langgraph-workshop
```

**API key not recognized (Phase 2):**

```bash
# Verify .env file exists in project root
ls -la .env

# Check formatting (no quotes, no spaces)
cat .env
# Should look like: ANTHROPIC_API_KEY=sk-ant-xxxxx
```

**"Module not found" errors:**

```bash
# Reinstall dependencies
make setup

# Or manually
uv pip install -e .
```

**Port 8888 already in use:**

```bash
# Jupyter on different port
jupyter lab --port=8889
```

### Still stuck?

- Ask instructor during workshop

---

## 🎯 Workshop Structure

**What you'll learn:**

**Phase 1 (Notebooks 101-107):**

- Type annotations for state management
- Building state graphs
- Sequential, conditional, and looping workflows
- Production-ready patterns
- **All with Palo Alto Networks SCM examples**

**Phase 2 (Notebooks 108-111):**

- Integrating Claude AI
- Conversational memory
- ReAct agents with tools
- Human-in-the-loop workflows
- **Build real AI agents for network automation**

**Each notebook includes:**

- Concept explanation
- Hands-on labs
- SCM-specific examples
- Production patterns

---

## 🆘 Getting Help

**During the workshop:**

- Ask instructor questions
- Use workshop chat/Slack
- Pair with other attendees

**After the workshop:**

- GitHub Issues: Technical problems
- GitHub Discussions: Questions and ideas
- Documentation: `/summaries` folder
- Community: Share your projects!

**Repository structure:**

- `/notebooks` - All workshop notebooks (101-111)
- `/summaries` - Markdown summaries of each lesson
- `/src` - Reusable code patterns
- `/docs/examples` - Production code samples

---

## 🚀 Ready to Start?

**Quick start on workshop day:**

**Codespaces users:**

1. Open your Codespace (if not already running)
2. Jupyter Lab loads automatically
3. Navigate to `notebooks/101_type_annotations.ipynb`
4. Follow along with instructor

**Local setup users:**

1. Navigate to workshop folder
2. Launch Jupyter: `make jupyter`
3. Open `notebooks/101_type_annotations.ipynb`
4. Follow along with instructor

**Remember:**

- Phase 1 needs no API key - start immediately!
- Phase 2 requires API key (~$1 cost)
- Codespaces makes setup effortless - recommended!
- Ask questions early and often
- Experiment and explore
