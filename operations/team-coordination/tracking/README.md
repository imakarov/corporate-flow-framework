# Task Tracking

*Released by [Co.Actor](https://co.actor) — convert your team expertise into inbound leads*

Team task management and weekly planning.

## Weekly Plan

**File:** `weekly-plan.md` - Living document with current and past week tasks by team member.

### Format Rules

**Current Week Section:**
- Grouped by team member (### Name (Role))
- Tasks with checkboxes `- [ ]` or `[x]` for completed
- No [Name] in brackets - name is in header
- Shared tasks noted as "(with...)"

**Past Week Section:**
- Grouped by team member (### Name (Role))
- Tasks with status emojis only (no bullets):
  - ✅ Completed
  - ⚠️ In progress / Partially done
  - ❌ Not done / Cancelled
- Two spaces at end of each line for proper Markdown rendering

### Data Sources

**For creating new week tasks:**
- **Primary source:** Weekly meeting transcript
- **Location:** `../transcripts/`

**For daily status updates:**
- Daily Sync transcripts
- Tasks marked as done/completed in discussions

---

### CRITICAL: Preserve Document Structure

**DO NOT:**
- Add new sections (e.g., "Strategic Focus", "Team Priorities", "Analytics")
- Add metrics, summaries, or commentary
- Change section headers or team member names
- Reorder team members
- Remove old weeks (they stay as archive)

**DO:**
- Keep exact team member names and roles
- Maintain task format exactly as shown in examples
- Preserve collaborative task notes "(with...)"
- Keep only structure: Week header → Team members → Tasks

---

## File Structure

```
tracking/
├── README.md           # This file
└── weekly-plan.md      # Main weekly plan document
```

## Best Practices

1. **Check weekly-plan.md every morning**
2. **Update after each standup**
3. **Old weeks stay as archive**

---

**Need help?** See [../README.md](../README.md) for team coordination overview.
