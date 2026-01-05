<!-- Released by Co.Actor - convert your team expertise into inbound leads -->

# Shared Tools - Company-Wide Utilities

Scripts, templates, and utilities shared across the organization.

## What Goes Here

### Company Tools
- Automation scripts used by multiple people
- Document templates for consistency
- Utilities for common tasks
- Configuration files
- Process automation
- AI prompt libraries

### Standards & References
- Style guides and conventions
- Quick reference guides
- Best practices documentation
- Tool usage guides
- Integration scripts

## Organization Structure

```
tools/
├── templates/
│   ├── docs/
│   │   ├── template-feature-spec.md
│   │   ├── template-process-doc.md
│   │   └── template-meeting-notes.md
│   ├── presales/
│   │   ├── template-discovery-call.md
│   │   └── template-proposal.md
│   └── projects/
│       ├── template-status-report.md
│       └── template-project-readme.md
├── scripts/
│   ├── sync-tools/
│   │   ├── update-all.sh
│   │   └── upload-changes.sh
│   ├── search/
│   │   └── search-knowledge-base.py
│   └── automation/
│       └── generate-report.js
├── prompts/
│   ├── documentation/
│   │   └── write-feature-spec.md
│   ├── analysis/
│   │   └── competitive-analysis.md
│   └── README.md
├── configs/
│   └── [shared configurations]
└── guides/
    ├── git-workflow.md
    ├── markdown-style-guide.md
    └── ai-best-practices.md
```

## Categories

### 1. Templates (`templates/`)

#### Document Templates
Pre-formatted documents for consistency:
- Feature specifications
- Process documentation
- Meeting notes
- Status reports
- Proposals
- Case studies
- OKRs and planning

#### Usage
```bash
# Copy template to your working directory
cp "templates/docs/template-feature-spec.md" \
   "../products/feature-new-feature-spec.md"
```

### 2. Scripts (`scripts/`)

#### Sync Tools
- `update-all.sh` - Pull latest from all repositories
- `upload-changes.sh` - Push changes to repositories
- `sync-status.sh` - Check synchronization status

#### Search & Find
- `search-knowledge-base.py` - Search across all documents
- `find-by-tag.js` - Find documents by tags
- `recent-changes.sh` - Show recent document updates

#### Automation
- `generate-report.js` - Auto-generate reports from data
- `update-tracker.py` - Update project/pipeline trackers
- `archive-old-files.sh` - Archive based on rules

### 3. AI Prompts (`prompts/`)

Pre-built prompts for common tasks:
- Documentation writing
- Code review
- Analysis and research
- Content creation
- Data summarization

#### Example Prompt Structure
```markdown
# Prompt: Write Feature Specification

## Context
You are writing a feature specification for our product documentation.

## Inputs Needed
- Feature name
- User problem it solves
- Key requirements

## Prompt
Create a feature specification that includes:
1. Overview and problem statement
2. User stories
3. Technical requirements
4. Success criteria

## Output Format
Use the template-feature-spec.md structure...
```

### 4. Guides (`guides/`)

Reference documentation:
- Markdown style guide
- Git workflow for knowledge base
- AI best practices
- Tool usage instructions
- Integration guides

## Contributing New Tools

### Before Adding a Tool
1. Check if similar tool already exists
2. Ensure it's useful for multiple people (not just you)
3. Test thoroughly
4. Document clearly
5. Consider maintenance needs

### Adding Process
1. Create tool in appropriate subfolder
2. Add documentation header/README
3. Include usage examples
4. List dependencies
5. Update this README with tool entry
6. Test with a colleague
7. Announce in team chat

### Tool Documentation Template
```markdown
# Tool Name

## Purpose
What does this tool do and why would you use it?

## Requirements
- Python 3.8+
- Node.js (if applicable)
- Other dependencies

## Installation
```bash
# Installation steps
```

## Usage
```bash
# Usage examples
./script.sh [arguments]
```

## Examples
Real-world usage examples

## Troubleshooting
Common issues and solutions

## Maintenance
Who maintains this, how often updated
```

## Best Practices

### Tool Development
- Write for reusability
- Include error handling
- Document all parameters
- Provide usage examples
- Test edge cases

### Tool Maintenance
- Keep dependencies updated
- Review and update documentation
- Remove deprecated tools
- Version important changes

### Documentation
- Clear purpose statement
- Step-by-step instructions
- Real-world examples
- Troubleshooting section
- Last updated date

## Security

### Script Safety
- Review scripts before running
- Don't include credentials in scripts
- Use environment variables for sensitive data
- Validate inputs
- Handle errors gracefully

### Access Control
- Some scripts may require specific permissions
- Document permission requirements
- Use appropriate authentication
- Log significant actions

## Maintenance Schedule

### Weekly
- Test sync scripts
- Review tool issues
- Update documentation as needed

### Monthly
- Review tool usage
- Update dependencies
- Archive unused tools
- Gather improvement feedback

### Quarterly
- Major tool updates
- Template reviews
- Guide updates
- Clean up deprecated items

## Common Questions

**Q: Can I modify a shared tool?**
A: Yes, but test thoroughly and update documentation. Consider versioning for major changes.

**Q: Should I add my personal script here?**
A: Only if it's useful for multiple people. Keep personal tools in `personal/tools/`.

**Q: A script isn't working, what should I do?**
A: Check the script's documentation first, then contact the maintainer listed in the script header.

**Q: How do I suggest a new template?**
A: Create it in your Personal folder first, get feedback, then propose adding to Shared Tools.

---

**Questions?** Check [../CLAUDE.md](../CLAUDE.md) or contact the relevant team.

**Last Updated:** YYYY-MM-DD
