# Corporate Knowledge Base - Claude Rules

## Hierarchical Rules System

**CRITICAL: Multi-level rule inheritance**

### Rule Priority (from general to specific):
1. **`/CLAUDE.md`** - Universal rules (this file)
2. **`[folder]/README.md`** - Folder-specific workflows
3. **`[subfolder]/README.md`** - Subfolder-specific rules

### Before Working in Any Folder:
**ALWAYS read README.md files hierarchically from root to current folder**

Example: Working in `sales-marketing/presales/qualification/`
1. Read `/CLAUDE.md` → Universal rules (naming, metadata, quality)
2. Read `sales-marketing/presales/README.md` → CHAMP framework, 3-stage process
3. Apply both sets of rules

**Rule Conflicts:** Specific overrides general - use folder README.md when conflicts occur

---

## Simple Commands for Employees

When working with this knowledge base, use these natural language commands:

### Syncing Commands
- **"Update all"** / "Pull latest" / "Get updates" → Pull changes from all repos
- **"Upload my changes"** / "Sync my work" / "Push changes" → Push to repos
- **"Show my changes"** / "What did I change" → See uncommitted changes
- **"Sync status"** / "Am I up to date" → Check sync status

### Search Commands
- **"Find [topic]"** → Search across all documents
- **"Show me [type] docs"** → Filter by section (product, strategy, etc.)
- **"Recent changes in [folder]"** → See what changed recently

### File Operations
- **"Create [doc type] in [section]"** → New document with template
- **"Move [file] to [section]"** → Relocate with reference updates
- **"Archive [project/doc]"** → Move to appropriate archive folder

---

## Folder Structure

```
corporate-knowledge/
├── operations/         → operations/README.md (team coordination, tracking)
├── products/           → products/README.md (product documentation)
├── sales-marketing/    → sales-marketing/README.md (sales, marketing, presales)
├── projects/           → projects/README.md (active clients)
├── tools/              → tools/README.md (shared tools)
└── personal/           (private, never synced)
```

---

## Content Quality Standards

**CRITICAL: Apply to ALL documents**

### 1. Eliminate Hallucinated Content
- Only verified facts from real operations
- Mark assumptions: `[ASSUMPTION: reasoning]`
- When uncertain: `[TO BE CONFIRMED: owner]`

### 2. Use Real Data
- Specific metrics, not vague statements
- "Processed 247 transcripts in Q4 2024"
- Not "Many transcripts"

### 3. Source Every Statement

**Citation format:**
- **`[CANONICAL]`** - First mention (authoritative source)
- **`[REF: path/to/file.md]`** - Reference to canonical

**Example:**
```markdown
# strategy/vision.md (when created)
Our vision: AI-first knowledge platform [CANONICAL]

# sales-marketing/presales/acme/card.md
Vision aligns with needs [REF: strategy/vision.md]
```

**When to use:**
- Features → `[REF: products/features.md]`
- Pricing → `[REF: sales-marketing/pricing.md]`
- Policies → `[REF: operations/policies.md]`

### 4. Mark Placeholders
```markdown
Enterprise: $500/month [CANONICAL]
SMB: [PLACEHOLDER: Owner Name] - awaiting decision
```

### 5. Cross-reference Documents
```markdown
See onboarding [REF: operations/onboarding.md]
Trial guidelines [REF: sales-marketing/presales/README.md#trial]
```

### 6. Date Everything
- "Last Updated: YYYY-MM-DD" in headers
- Dated filenames: `2025-10-30-name.md`

### 7. Maintain Traceability
**When updating canonical:**
1. Update `[CANONICAL]` source
2. Find all references: `grep -r "REF: path/to/file.md" .`
3. Update or validate all referencing documents
4. Commit: "Update [topic] and all references"

---

## File Naming

### CRITICAL: Date in Filename
**Format:** `YYYY-MM-DD-descriptive-name.md`

**Examples:**
- `2025-10-30-client-discovery.md`
- `2025-10-30-roadmap-update.md`

**Exceptions (no dates needed):**
- Templates: `card-template.md`
- Index files: `README.md`, `pipeline-tracker.md`
- Config: `.gitignore`, `CLAUDE.md`

### Standard Format
- **kebab-case**: `quarterly-review.md`
- **Descriptive**: `client-acme-onboarding.md`
- **Transcripts**: NEVER rename - keep original format from recording service

---

## Document Metadata

**CRITICAL: Every document MUST start with:**

```markdown
# Document Title

---

## Document Metadata

**Created**: YYYY-MM-DD
**Last Updated**: YYYY-MM-DD
**Created By**: Claude Code / Human Name / Tool
**Sources**: [file paths, meeting info, or URLs]
**Purpose**: Why this document exists
**Status**: Draft / Review / Final / Archived

---

[Content...]
```

**Additional fields:**
- Meetings: Participants, Duration, Meeting Type
- Tools: Version, Parameters, Processing Time

---

## Privacy & Security

### Personal Folder
- **NEVER** commit `personal/` contents
- In `.gitignore` - stays local only
- Never reference personal/ in shared docs

### Sensitive Information
- No passwords, API keys, credentials
- Use `.env` (already in `.gitignore`)
- Placeholders: `[API_KEY]`, `[PASSWORD]`
- Anonymize client info in examples

---

## Markdown Standards

### Hierarchy
```markdown
# Document Title (one per file)
## Major Section
### Subsection
#### Detail
```

### Links
- Use relative paths: `[Guide](../operations/handbook.md)`
- Descriptive text: `[2025 Roadmap](../product/roadmap.md)`

### Lists & Code
- Unordered: `-`
- Ordered: `1.`
- Tasks: `- [ ]`
- Code blocks: Use triple backticks with language

### Table of Contents
- Add for documents >500 lines

---

## Workflow

### Creating Documents
1. Check folder README.md for specific rules
2. Dated filename: `YYYY-MM-DD-name.md`
3. Include metadata block
4. Apply quality standards (`[CANONICAL]`, `[REF:]`)
5. Cross-reference related docs

### Updating Documents
1. Update "Last Updated" date
2. If `[CANONICAL]`: search and update all `[REF:]` references
3. Keep changelog for major docs

### Moving/Reorganizing
**CRITICAL: Before moving/creating files that might duplicate:**
1. Check if similar content exists elsewhere
2. If exists: **ASK USER** which to keep (A/B/C options)
3. Wait for confirmation before proceeding
4. After move: Update all `[REF: old-path.md]` → `[REF: new-path.md]`
5. Validate: `grep -r "REF: old-path" .`
6. Delete old location
7. Announce changes to team

**Why:** Keep base lean, non-redundant, single source of truth

### Analyzing Meetings
1. Pull latest: "Update all"
2. Check transcript locations
3. Create summary: `2025-10-30-meeting-summary.md`
4. Include metadata with sources
5. Link to transcripts: `[REF: operations/team-coordination/transcripts/...]`

---

## Tool Development

**CRITICAL: Create in `personal/tools/` first**

1. Build in `personal/tools/` - test thoroughly
2. Never create directly in `tools/`
3. After validation → copy to `tools/` with docs
4. Include usage examples

**CRITICAL: ALWAYS use Python virtual environments**

For ALL Python tools:
```bash
# Create venv in tools directory
cd tools
python3 -m venv venv

# Activate (macOS/Linux)
source venv/bin/activate

# Activate (Windows)
venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# When done
deactivate
```

**Why this is mandatory:**
- Prevents system Python conflicts
- Isolates tool dependencies
- Works on externally-managed environments (Homebrew Python, etc.)
- Ensures reproducible installations

**NEVER use:** `pip3 install --break-system-packages` or system-wide installs

**Tool header:**
```python
"""
Tool: name.py | Purpose: ... | Usage: ... | Dependencies: ...
"""
```

**Guidelines:**
- Descriptive naming
- Error handling
- Bilingual support (EN/RU for transcripts) if needed
- Test with sample data

---

## API Integration

### Environment Variables
Never hardcode credentials - use `.env`:
```bash
API_KEY=value
OPENAI_API_KEY=value
```

---

## Synchronization Strategy

### Repository Structure
- Each major folder can be a separate Git repository
- Files are in Markdown format (.md) for optimal AI processing
- `personal/` folder never synced (in `.gitignore`)

### How Syncing Works
- "Update all" → Pulls changes from all repositories
- "Upload my changes" → Pushes your changes back to repositories
- System automatically creates descriptive commit messages
- No need to understand Git - just use the commands above

---

## Git Commit Standards

### Format
`<action> <what> [why]`

**Examples:**
- "Add meeting analyzer tool"
- "Update vision and all 3 references"
- "Fix Russian transcript parsing"

### Actions
- **Add** - New files/features
- **Update** - Modifications
- **Fix** - Bug fixes
- **docs** - Documentation
- **refactor** - Restructuring

### Before Committing
1. Test tools with sample data
2. No sensitive data (keys, passwords, credentials)
3. Verify `.gitignore` working
4. `.env` not committed
5. Update folder README.md if structure changed

---

## Emergency

### Lost Files
- Say "Restore [filename]"
- Git history will be checked
- Personal files NOT backed up

### Accidental Commits
**Credentials:**
1. Rotate immediately
2. Contact security team
3. Remove: `git rm --cached [file]`

**Personal data:**
- Should not happen (`.gitignore`)
- Contact admin if occurs

---

## Support

### Adding New Sections
- Propose in team discussion
- Update folder README.md
- Update CLAUDE.md only if universal rules change

### Need Help?
- Check folder README.md for workflows
- Check CLAUDE.md for universal rules
- Ask in team chat

---

**Last Updated**: YYYY-MM-DD
**Maintained By**: Team
**Review**: Quarterly
