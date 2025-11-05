# Contributing to LangGraph Workshop Notebooks

Thank you for your interest in improving the workshop! 🎉

## How to Contribute

### Reporting Issues

Found a bug or error in a notebook?

1. Check [existing issues](https://github.com/cdot65/naf-ai-agents-workshop/issues)
2. If not found, [create a new issue](https://github.com/cdot65/naf-ai-agents-workshop/issues/new)
3. Include:
   - Notebook name and cell number
   - Expected vs actual behavior
   - Error message (if applicable)
   - Steps to reproduce

### Suggesting Improvements

Have ideas for better examples or explanations?

1. Open a [discussion](https://github.com/cdot65/naf-ai-agents-workshop/discussions)
2. Describe the improvement
3. Explain the learning benefit

### Submitting Changes

#### Prerequisites

- Fork this repository
- Clone your fork locally
- Setup development environment: `make setup`

#### Workflow

1. **Create a branch**:
   ```bash
   git checkout -b fix/notebook-01-typo
   ```

2. **Make changes**:
   - Edit notebooks in Jupyter
   - Update documentation if needed

3. **Test changes**:

   ```bash
   # Test affected notebook(s)
   make test-foundations-1

   # Or test all
   make test-all
   ```

4. **Clean outputs**:

   ```bash
   make clean
   ```

5. **Commit changes**:

   ```bash
   git add .
   git commit -m "Fix typo in Foundations 01, cell 12"
   ```

6. **Push to your fork**:

   ```bash
   git push origin fix/notebook-01-typo
   ```

7. **Create Pull Request**:
   - Visit: <https://github.com/cdot65/naf-ai-agents-workshop\>
   - Click "New Pull Request"
   - Select your branch
   - Describe changes
   - Submit!

#### Pull Request Guidelines

**Title Format**:

- `fix: [Notebook XX] Description` - Bug fix
- `docs: [Notebook XX] Description` - Documentation improvement
- `feat: [Notebook XX] Description` - New content/example
- `chore: Description` - Maintenance tasks

**Description**:

- What changed?
- Why is this improvement needed?
- Which notebook(s) affected?
- Testing performed?

**Checklist**:

- [ ] Notebook cells execute without errors
- [ ] Outputs cleared (`make clean`)
- [ ] Documentation updated if needed
- [ ] Tested in Codespaces OR locally

### Code Style

**Notebooks**:

- Use clear, descriptive variable names
- Add markdown cells explaining complex code
- Keep code cells focused (one concept per cell)
- Include expected output in markdown

**Python Code**:

- Follow PEP 8 (enforced by Black)
- Use type hints where helpful
- Add docstrings for functions

**Markdown**:

- Use headers hierarchically (##, ###, ####)
- Include code fences with language tags
- Keep line length reasonable (~80-100 chars)

### Adding New Content

#### New Notebook

To propose a new notebook:

1. Open a discussion first (gauge interest)
2. Provide outline:
   - Learning objectives
   - Topics covered
   - Estimated time
   - Prerequisites
3. Wait for maintainer feedback
4. Create notebook in appropriate directory:
   - `notebooks/foundations/` - Generic LangGraph
   - `notebooks/firewall_workshop/` - PAN-OS specific
5. Follow existing notebook structure:
   - Title cell
   - Learning objectives
   - Prerequisite check
   - Concept sections with examples
   - Exercises
   - Summary
6. Add entry to `Makefile` and `README.md`

#### New Example

To add an example to existing notebook:

1. Ensure it teaches the target concept clearly
2. Use realistic but simple scenario
3. Include:
   - Problem statement
   - Code implementation
   - Expected output
   - Key takeaways
4. Test thoroughly

### Testing Requirements

All PRs must pass:

1. **Notebook Execution**: All affected notebooks run without errors
2. **Output Cleaning**: Notebooks committed with clean outputs
3. **Documentation**: README and guides reflect changes

### Review Process

1. Maintainer reviews PR (usually within 7 days)
2. Feedback provided if changes needed
3. Once approved, maintainer merges
4. Your contribution is live! 🎉

### Recognition

Contributors are recognized in:

- Commit history
- Release notes
- Contributors section (if significant)

## Development Setup

### Local Environment

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/naf-ai-agents-workshop.git
cd naf-ai-agents-workshop

# Add upstream remote
git remote add upstream https://github.com/cdot65/naf-ai-agents-workshop.git

# Setup environment
make setup

# Create branch
git checkout -b your-feature-branch
```

### Testing Locally

```bash
# Test specific notebook
make test-foundations-1

# Test entire series
make test-foundations

# Test all notebooks
make test-all

# Clean outputs
make clean
```

### Syncing with Upstream

```bash
# Fetch latest changes
git fetch upstream

# Merge into your branch
git checkout main
git merge upstream/main

# Push to your fork
git push origin main
```

## Questions?

- **General questions**: [Discussions](https://github.com/cdot65/naf-ai-agents-workshop/discussions)
- **Bug reports**: [Issues](https://github.com/cdot65/naf-ai-agents-workshop/issues)
- **Security issues**: Email <calvin@cdot.io> directly

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for helping make this workshop better for everyone! 🙏
