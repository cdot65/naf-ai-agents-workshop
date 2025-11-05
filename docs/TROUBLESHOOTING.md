# Troubleshooting Guide

Common issues and solutions for the LangGraph Workshop.

## Environment Setup Issues

### Issue: `uv: command not found`

**Symptoms**: Running `make setup` fails with "uv: command not found"

**Solution**:

```bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Reload shell
source ~/.bashrc  # or ~/.zshrc on macOS

# Verify installation
uv --version
```

### Issue: `ModuleNotFoundError: No module named 'langgraph'`

**Symptoms**: Notebook cells fail with module import errors

**Solution**:

**In Codespaces**:

```bash
# Rebuild container
# Press F1 (or Cmd/Ctrl+Shift+P)
# Type: "Codespaces: Rebuild Container"
```

**Locally**:

```bash
# Reinstall dependencies
uv sync

# Verify installation
uv run python -c "import langgraph; print(langgraph.__version__)"
```

### Issue: Playwright browser errors

**Symptoms**: `playwright._impl._errors.Error: Executable doesn't exist`

**Solution**:

```bash
# Install Chromium
uv run playwright install chromium

# On macOS, may need Xcode tools
xcode-select --install
```

---

## API and Authentication Issues

### Issue: `AuthenticationError: Invalid API key`

**Symptoms**: Cells fail with authentication errors

**Solution**:

```bash
# Check .env file exists
ls -la .env

# Verify contents
cat .env | grep ANTHROPIC_API_KEY

# Ensure format is correct
ANTHROPIC_API_KEY=sk-ant-api03-ACTUAL_KEY_HERE

# Key should start with: sk-ant-api03-
```

### Issue: Rate limit errors

**Symptoms**: `RateLimitError: Rate limit exceeded`

**Solution**:

- **Free tier**: 5 requests/minute
- **Fix**: Wait 60 seconds between cells
- **Alternative**: Upgrade to paid tier for higher limits

### Issue: Insufficient credits

**Symptoms**: `InsufficientCreditsError`

**Solution**:

- Check credit balance: <https://console.anthropic.com/settings/usage\>
- Add payment method in Anthropic Console
- Monitor spending limits

---

## Notebook Issues

### Issue: Kernel keeps dying

**Symptoms**: Notebook kernel crashes repeatedly

**Solution**:

```bash
# Check Python version (must be 3.11+)
python --version

# Check disk space (need ~1GB)
df -h .

# Restart kernel in Jupyter
# Click "Kernel" → "Restart Kernel"

# If persists, reinstall environment
rm -rf .venv
uv sync
```

### Issue: Cell execution hangs

**Symptoms**: Cell runs indefinitely without completing

**Solution**:

- Check network connection (API calls require internet)
- Interrupt kernel: Click "Interrupt" button or press `I, I`
- Check API status: <https://status.anthropic.com/\>
- Restart kernel and re-run from beginning

### Issue: Outputs not displaying

**Symptoms**: Cell completes but shows no output

**Solution**:

```python
# Explicitly print results
result = graph.invoke(...)
print(result)  # Add this

# Or use display()
from IPython.display import display
display(result)
```

### Issue: Git won't commit notebooks

**Symptoms**: `git add` hangs or fails on .ipynb files

**Solution**:

```bash
# Reconfigure git filter
bash scripts/setup_git_filters.sh

# Verify configuration
git config --get filter.jupyter_clear_output.clean

# If still failing, manually clean
make clean
git add notebooks/
```

---

## Codespaces-Specific Issues

### Issue: Codespace takes forever to build

**Symptoms**: Initial creation takes >5 minutes

**Solution**:

- **First build**: 2-3 minutes is normal (installing Python, deps)
- **Subsequent builds**: Should be ~30 seconds (cached)
- **If excessive**: Check GitHub status (<https://www.githubstatus.com/>)

### Issue: Codespace disconnects frequently

**Symptoms**: "Connection lost" errors

**Solution**:

- Check internet connection stability
- Try different network (WiFi vs wired)
- Check firewall/proxy settings (Codespaces needs WebSocket access)

### Issue: Out of Codespaces hours

**Symptoms**: "You've exceeded your free Codespaces hours"

**Solution**:

- **Free plan**: 60 hours/month (2-core machines)
- **Pro plan**: 90 hours/month
- **Stop unused Codespaces**: <https://github.com/codespaces>
- **Alternative**: Run workshop locally (see STUDENT_SETUP_GUIDE.md)

---

## Firewall Workshop Issues

### Issue: PAN-OS connection errors

**Symptoms**: `pan.xapi.PanXapiError: Cannot connect`

**Solution**:

**If using mock mode (default)**:

- Should NOT happen - mock mode doesn't connect to real devices
- Check notebook cells for mock configuration
- Ensure PANOS_HOSTNAME is empty in .env

**If using real device**:

```bash
# Verify .env configuration
cat .env | grep PANOS

# Test connectivity
ping $PANOS_HOSTNAME

# Verify API key
curl -k "https://$PANOS_HOSTNAME/api/?type=keygen&user=$PANOS_USERNAME&password=$PANOS_PASSWORD"

# Check firewall allows management access
# Firewall → Device → Setup → Management
```

### Issue: Firewall commit takes too long

**Symptoms**: Commit operation times out

**Solution**:

- **Expected**: Commits take 60-120 seconds on real firewalls
- **Mock mode**: Should complete instantly
- **Real device**: Increase timeout in notebook cell:

  ```python
  firewall.commit(sync=True, timeout=300)  # 5 minutes
  ```

---

## Performance Issues

### Issue: Notebooks run slowly

**Symptoms**: Cells take a long time to execute

**Solution**:

- **Codespaces**: Upgrade to 4-core machine (Settings → Machine type)
- **API latency**: Check internet speed (API calls require <100ms ping)
- **Model size**: Using Claude Sonnet (balanced speed/quality)

### Issue: Out of memory errors

**Symptoms**: `MemoryError` or kernel crashes

**Solution**:

- **Codespaces**: Upgrade machine type (4GB → 8GB)
- **Local**: Close other applications
- **In notebook**: Clear variables between cells:

  ```python
  del large_result
  import gc
  gc.collect()
  ```

---

## Still Stuck?

1. **Search GitHub Issues**: <https://github.com/cdot65/naf-ai-agents-workshop/issues>
2. **Ask in Discussions**: <https://github.com/cdot65/naf-ai-agents-workshop/discussions>
3. **Check LangGraph Docs**: <https://langchain-ai.github.io/langgraph/>
4. **Report New Bug**: <https://github.com/cdot65/naf-ai-agents-workshop/issues/new>

When asking for help, include:

- Operating system (if local)
- Python version (`python --version`)
- Full error message
- Notebook and cell number
- Steps to reproduce
