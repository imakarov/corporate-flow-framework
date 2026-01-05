# Corporate Knowledge Base

*Released by [Co.Actor](https://co.actor) — convert your team expertise into inbound leads*

Central hub for company documentation, client information, and shared resources.

---

## Quick Start

### First Time Setup
```bash
./setup.sh  # Creates personal/ folder structure
cp .env.example .env  # Add your credentials
```

### Daily Workflow
1. **"Update all"** - Get latest changes from all repositories
2. Work on your documents
3. **"Upload my changes"** - Sync your changes back

### Common Commands
- "Update all" / "Sync status" - Check and pull changes
- "Upload my changes" - Push your edits
- "Find [topic]" - Search across all documents

---

## Folder Structure

- **operations/** → [operations/README.md](operations/README.md) - Team coordination, tracking
- **products/** → [products/README.md](products/README.md) - Product documentation
- **sales-marketing/** → [sales-marketing/README.md](sales-marketing/README.md) - Sales pipeline, marketing
- **projects/** → [projects/README.md](projects/README.md) - Active client projects
- **tools/** → [tools/README.md](tools/README.md) - Shared tools and scripts
- **personal/** - Private workspace (never synced)

---

## Documentation

- **[CLAUDE.md](CLAUDE.md)** - Complete rules, standards, and workflows for Claude Code and team
- **Folder READMEs** - Specific workflows and guidelines for each section

---

## Privacy

- personal/ folder is **never synced** (in .gitignore)
- Never commit credentials - use .env (already in .gitignore)
- Each major folder can be a separate Git repository

---

## Getting Help

- **Lost file?** Say "Restore [filename]"
- **Can't find something?** Say "Find [topic]"
- **Need guidance?** Check [CLAUDE.md](CLAUDE.md) or folder README.md

---

**Questions?** See [CLAUDE.md](CLAUDE.md) or ask your team lead.

**Last Updated**: YYYY-MM-DD
