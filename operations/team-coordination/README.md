<!-- Released by Co.Actor - convert your team expertise into inbound leads -->

# Team Coordination

Internal team sync calls, meeting notes, and task tracking.

## Structure

### [notes/](./notes/)
Daily standups, weekly syncs, and general team meeting notes.

**File Naming:**
- Daily: `YYYY-MM-DD-daily-standup.md`
- Weekly: `YYYY-MM-DD-weekly-sync.md`
- Other: `YYYY-MM-DD-meeting-topic.md`

**What goes here:**
- Daily standup notes
- Weekly team sync notes
- Ad-hoc team meeting notes
- Quick sync summaries

### [transcripts/](./transcripts/)
Original transcripts from team calls (any recording service).

**File Naming:**
- Preserve original: `YYYY-MM-DDTHH:MM:SS-TZ-Meeting_Name.txt`
- Never modify originals
- Processed summaries go to notes/

**What goes here:**
- Raw call transcripts
- Original recordings metadata
- Unedited meeting captures

### [tracking/](./tracking/)
**Main file: [weekly-plan.md](./tracking/weekly-plan.md)**

Weekly task planning and tracking by team member.

**What goes here:**
- Current week tasks (with bullets)
- Past weeks with status emojis (✅ ⚠️ ❌)
- Team workload by person
- Weekly task completion tracking

**See [tracking/README.md](./tracking/README.md) for detailed format rules.**

## Workflow

### Daily Standup
1. Have standup call
2. If recorded, transcript goes to `transcripts/`
3. Create summary in `notes/YYYY-MM-DD-daily-standup.md`
4. Update `tracking/weekly-plan.md` with any changes

### Weekly Sync
1. Review `tracking/weekly-plan.md`
2. Hold weekly meeting
3. Transcript to `transcripts/` if recorded
4. Notes to `notes/YYYY-MM-DD-weekly-sync.md`
5. Update `tracking/weekly-plan.md`:
   - Move current week to past with status emojis
   - Create new current week section

### Task Updates
1. Update `tracking/weekly-plan.md` throughout the week
2. Add/remove tasks as priorities change
3. Keep 2-3 recent weeks visible

## Templates

See each folder for simple templates.

## Finding Information

**Recent standup:** Check latest in `notes/`
**Current tasks:** Always in `tracking/weekly-plan.md` (current week section)
**Last week's status:** `tracking/weekly-plan.md` (past week section with emojis)
**Call recording:** Search `transcripts/` by date

---

**Last Updated:** YYYY-MM-DD
