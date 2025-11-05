# Student Setup Guide

Complete guide for setting up the LangGraph Workshop environment.

## Option 1: GitHub Codespaces (Recommended for Beginners)

**Zero installation required** - everything runs in the cloud.

### Step 1: Create Codespace

1. Visit: <https://github.com/cdot65/naf-ai-agents-workshop>
2. Click the green "Code" button
3. Select "Codespaces" tab
4. Click "Create codespace on main"

**Wait**: ~2 minutes while environment builds

### Step 2: Configure API Key

When Codespace opens:

```bash
# Copy environment template
cp .env.template .env

# Open in editor
code .env
```

Add your Anthropic API key:

```bash
ANTHROPIC_API_KEY=sk-ant-api03-YOUR_KEY_HERE
```

**Get a key**: <https://console.anthropic.com/settings/keys\>

Save the file (Cmd+S or Ctrl+S).

### Step 3: Test Installation

```bash
make test-foundations-1
```

✅ Expected output:

```
📓 Executing Foundations 01: State & Graphs...
[Conversion progress...]
✅ Foundations 01 complete
```

### Step 4: Open First Notebook

1. Navigate to: `notebooks/foundations/`
2. Open: `01_state_and_graphs.ipynb`
3. Select kernel: `.venv` (Python 3.11)
4. Run cells! (Shift+Enter)

---

## Option 2: Local Development

**For experienced developers** who prefer local setup.

### Prerequisites

- Python 3.11 or higher
- `uv` package manager (or `pip`)
- Git
- 4GB free disk space

### Step 1: Install uv (if not installed)

**macOS/Linux**:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

**Windows (PowerShell)**:

```powershell
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
```

**Alternative (using pip)**:

```bash
pip install uv
```

### Step 2: Clone Repository

```bash
git clone https://github.com/cdot65/naf-ai-agents-workshop.git
cd naf-ai-agents-workshop
```

### Step 3: Setup Environment

```bash
# Install dependencies and configure git filters
make setup

# This runs:
# - uv sync (installs all dependencies)
# - scripts/setup_git_filters.sh (configures notebook output stripping)
# - Creates .env from template
```

### Step 4: Configure API Key

```bash
# .env file was created by make setup
# Edit it and add your API key
code .env  # or use nano, vim, etc.
```

Add:

```bash
ANTHROPIC_API_KEY=sk-ant-api03-YOUR_KEY_HERE
```

### Step 5: Test Installation

```bash
make test-foundations-1
```

### Step 6: Start Jupyter

```bash
# Activate virtual environment
source .venv/bin/activate

# Start Jupyter Lab
jupyter lab

# Browser opens to: http://localhost:8888
# Navigate to: notebooks/foundations/01_state_and_graphs.ipynb
```

---

## Troubleshooting

### Codespaces Issues

**Issue**: Codespace takes forever to build

**Fix**: This is normal on first launch (2-3 minutes). Subsequent starts are faster (~30 seconds).

**Issue**: "API key not found" error

**Fix**:

```bash
# Verify .env file exists
ls -la .env

# Check contents
cat .env

# Ensure ANTHROPIC_API_KEY=sk-ant-api03-...
```

**Issue**: Kernel not found / Module not found

**Fix**:

```bash
# Rebuild Codespace
# Press F1 (or Cmd/Ctrl+Shift+P)
# Type: "Codespaces: Rebuild Container"
# Select and confirm
```

### Local Development Issues

**Issue**: `uv: command not found`

**Fix**:

```bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Reload shell
source ~/.bashrc  # or ~/.zshrc
```

**Issue**: `ModuleNotFoundError: No module named 'langgraph'`

**Fix**:

```bash
# Reinstall dependencies
uv sync

# Verify installation
uv run python -c "import langgraph; print('✅ Success')"
```

**Issue**: Playwright browser errors

**Fix**:

```bash
# Install Chromium
playwright install chromium

# macOS may need additional step:
# xcode-select --install
```

**Issue**: Permission denied when running scripts

**Fix**:

```bash
chmod +x scripts/setup_git_filters.sh
bash scripts/setup_git_filters.sh
```

### Notebook Issues

**Issue**: Kernel keeps dying

**Fix**:

- Check Python version: `python --version` (must be 3.11+)
- Restart kernel: Click "Restart" in Jupyter
- Check disk space: `df -h .` (need ~1GB free)

**Issue**: API rate limits

**Fix**:

- Anthropic free tier: 5 requests/minute
- Wait 60 seconds between notebook cells if hitting limits
- Consider upgrading to paid tier for workshops

**Issue**: Notebook outputs not cleared before commit

**Fix**:

```bash
# Run git filter setup
bash scripts/setup_git_filters.sh

# Manually clean all notebooks
make clean

# Commit again
git add .
git commit -m "Clean notebooks"
```

---

## API Key Management

### Getting an Anthropic API Key

1. Visit: <https://console.anthropic.com/\>
2. Sign up / Sign in
3. Navigate to: Settings → API Keys
4. Click "Create Key"
5. Copy key (starts with `sk-ant-api03-`)
6. Paste into `.env` file

### Workshop API Keys

Some workshops provide temporary API keys:

- ✅ Use these for workshop duration
- ⚠️ Limited to $5 credit
- ⚠️ Expire after workshop ends
- ⚠️ Revoke after workshop completion

### Production API Keys

For ongoing learning:

- ✅ Create personal Anthropic account
- ✅ Add payment method (pay-as-you-go)
- ✅ Set spending limits in console
- ✅ Monitor usage dashboard

**Cost estimate for workshop**: ~$0.50-2.00 USD (8 notebooks, normal pace)

---

## Environment Variables Reference

### Required

```bash
ANTHROPIC_API_KEY=sk-ant-api03-...  # Claude API access
```

### Optional (Foundations Notebook 04)

```bash
# LangSmith (observability)
LANGSMITH_API_KEY=lsv2_pt_...
LANGCHAIN_TRACING_V2=true
LANGCHAIN_PROJECT=langgraph-workshop

# Langfuse (alternative observability)
LANGFUSE_PUBLIC_KEY=pk-lf-...
LANGFUSE_SECRET_KEY=sk-lf-...
LANGFUSE_HOST=https://us.cloud.langfuse.com
```

### Optional (Firewall Workshop)

```bash
# PAN-OS Firewall (only for real device testing)
# Leave blank to use mock mode
PANOS_HOSTNAME=192.168.1.1
PANOS_USERNAME=admin
PANOS_PASSWORD=your_password
```

---

## Next Steps

Once setup is complete:

1. ✅ Run `make test-foundations-1` to verify environment
2. ✅ Open `notebooks/foundations/01_state_and_graphs.ipynb`
3. ✅ Read through notebook introduction
4. ✅ Execute cells sequentially (Shift+Enter)
5. ✅ Complete exercises at the end
6. ✅ Move to notebook 02 when ready

**Estimated time per notebook**: 45-60 minutes

**Total workshop**: 8-10 hours (self-paced)

---

## Getting Help

- **Troubleshooting**: See this guide above
- **Issues**: <https://github.com/cdot65/naf-ai-agents-workshop/issues\>
- **Discussions**: <https://github.com/cdot65/naf-ai-agents-workshop/discussions\>

Happy learning! 🚀
