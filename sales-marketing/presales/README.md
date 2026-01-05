<!-- Released by Co.Actor - convert your team expertise into inbound leads -->

# Presales - B2B Sales Pipeline

Sales pipeline management using CHAMP qualification framework and 3-stage process.

---

## Folder Structure

```
presales/
├── README.md                        # This file - workflows and rules
├── card-template.md                 # Template for new opportunity cards
│
├── qualification/                   # STAGE 1: CHAMP qualification
│   └── [company-name]/              # One folder per opportunity
│       ├── card.md                  # Main sales card (required)
│       └── transcripts/             # Optional: call recordings
│
├── proposal-trial/                  # STAGE 2: Product validation
│   └── [company-name]/
│       ├── card.md                  # Required
│       ├── transcripts/             # Optional
│       ├── proposal-v1.pdf          # Optional: proposal documents
│       └── [product-folder]/        # Optional: trial instance folders
│
├── negotiation/                     # STAGE 3: Closing the deal
│   └── [company-name]/
│       ├── card.md                  # Required
│       ├── contract-draft.pdf       # Optional: contract documents
│       └── transcripts/             # Optional
│
├── partners/                        # Strategic partners (not sales prospects)
│   └── [partner-name]/
│       └── card.md
│
└── archive/
    └── 2025/
        └── lost/                    # Lost deals with lessons learned
            └── [company-name]/
                └── card.md
```

**Folder Naming:**
- Use company name: `acme-corp/`, `example-inc/`
- Lowercase, hyphens for spaces
- If company name is person's name: `company-firstname-lastname/`

---

## 3-Stage Sales Process

### **STAGE 1: Qualification**
**Location:** `qualification/[company]/`
**Goal:** Qualify using CHAMP framework

**When to Create Opportunity Card:**
- First call completed (30+ min discovery)
- Basic demo shown
- Prospect shows interest

**How to Create Card:**
1. Read [card-template.md](./card-template.md) to understand structure
2. Find similar existing card (same industry/stage)
3. Copy existing card (NOT template!) → `qualification/[company]/card.md`
4. Replace ALL content with your prospect's info

**Activities:**
- Fill out all CHAMP sections
- Identify decision makers
- Understand pain points and budget
- Validate fit (industry, size, use case)

**Exit Criteria → Move to Proposal-Trial:**
- [ ] They requested proposal OR agreed to trial

**OR Exit to Archive:**
- No fit / No budget / Ghosting / Not priority

**Typical Duration:** 1-2 weeks

---

### **STAGE 2: Proposal/Trial**
**Location:** `proposal-trial/[company]/`
**Goal:** Validate product fit through proposal and trial

**Process:**
1. **Send commercial proposal** - pricing, terms, features
2. **Offer product trial** - 1-2 months hands-on testing
3. **Customer onboarding** - setup trial instance, first training
4. **Trial check-ins** - Day 3, mid-trial, end-of-trial calls
5. **Track usage & metrics** - actions created, engagement, feedback
6. **End-of-trial decision call** - review results, discuss next steps

**Activities:**
- Technical validation (trial usage)
- Stakeholder engagement (IT, Security, End Users)
- Additional demos for decision makers
- Answer questions and objection handling
- ROI building (show value from trial metrics)

**Exit Criteria → Move to Negotiation:**
- [ ] Trial completed successfully
- [ ] They want to buy (explicit intent)
- [ ] Ready to discuss contract terms
- [ ] No technical blockers

**OR Exit to Archive:**
- Trial didn't show value / Price too high / Competitor chosen

**Typical Duration:** 2-4 weeks

---

### **STAGE 3: Negotiation**
**Location:** `negotiation/[company]/`
**Goal:** Finalize contract terms and close deal

**Entry Criteria:**
- [ ] They want to buy
- [ ] Discussing specifics (price/terms/features)

**Activities:**
- Price negotiation (discounts, volume)
- Contract terms (payment, length, auto-renewal)
- Legal review (if required)
- Security/IT approvals (if enterprise)
- Procurement (PO creation)
- Final approval from Economic Buyer

**Exit Criteria → Move to Projects:**
- [ ] All terms agreed
- [ ] Contract signed
- [ ] Payment processed OR PO approved
- [ ] Onboarding scheduled

**OR Exit to Archive:**
- Can't agree on terms / Budget disappeared / Legal blocker

**Typical Duration:** 1-3 weeks

**After Closing (Won):**
```bash
mv presales/negotiation/[company]/ projects/[company]/
```

---

## Moving Cards Between Stages

### Qualification → Proposal-Trial
**When:** Prospect requested proposal OR agreed to trial

```bash
mv presales/qualification/[company]/ presales/proposal-trial/[company]/
```

**Update card.md:**
- Change **Stage** to "Proposal-Trial"
- Update **Probability** to 40-60%
- Add **Trial Information** section (if doing trial)
- Add entry to **Activity Log** (proposal sent / trial started)
- Update **Next Steps** (trial check-ins, follow-ups)

---

### Proposal-Trial → Negotiation
**When:** They want to buy, discussing terms

```bash
mv presales/proposal-trial/[company]/ presales/negotiation/[company]/
```

**Update card.md:**
- Change **Stage** to "Negotiation"
- Update **Probability** to 70-90%
- Update **Activity Log** (negotiation start date, terms discussed)
- Update **Next Steps** (contract tasks, approval steps, legal review)

---

### Negotiation → Projects (WON!)
**When:** Contract signed, payment processed/approved

```bash
mv presales/negotiation/[company]/ projects/[company]/
```

**Update card.md:**
- Change **Stage** to **Status**: ✅ ACTIVE (Paying Client)
- Update **Probability** to 100%
- Change **Owner** to Customer Success Manager name
- Add **Client Since** date
- Add **Active Projects** section (mandatory for projects)
- Add **Metrics & Feedback** section (mandatory for projects)
- Remove **Trial Information** section (no longer needed)
- Add contract details to **Money & Timeline**

**See:** [../projects/card-template.md](../projects/card-template.md) for project card differences

---

### Any Stage → Archive (LOST)
**When:** Deal lost, ghosted, or not a fit

```bash
mv presales/[stage]/[company]/ presales/archive/2025/lost/[company]/
```

**Update card.md:**
- Add **❌ LOST** to header
- Add **Lost Date:** YYYY-MM-DD
- Add **Lost Reason:** [Competitor won / No budget / No response / etc.]
- Add **Lessons Learned:** section at bottom
- Keep all activity log for future reference

---

## What to Update & When

### After EVERY Customer Interaction (call/meeting/email)
**Time:** 5-10 minutes

**Update:**
- [ ] **Activity Log** - Add new entry with date, attendees, key points
- [ ] **Next Steps** - Update tasks (mark done ✅, add new ones)
- [ ] **Last Updated** date at bottom

**Where to find info:**
- Meeting transcripts in `./transcripts/`
- Your notes from the call
- Action items discussed

---

### Weekly (Sales Meeting)
**Time:** 10-15 minutes per card

**Review and update:**
- [ ] **Quick Stats** - Probability %, Expected Close date (if changed)
- [ ] **Next Steps** - Clear completed ✅, add new tasks
- [ ] **Authority** - Engagement levels, last contact dates
- [ ] **Activity Log** - Add internal notes section if deal status changed

---

## CHAMP Sales Framework

### **CH - Challenges**
What problems are they solving? **THIS IS THE CORE!**
- 2-3 specific pain points
- Business impact (time/money/quality lost)
- Cost of inaction
- Current solution gaps
- How your product solves this

### **A - Authority**
Who makes the buying decision?
- Economic buyer name & title
- Decision process & timeline
- Influence levels of each stakeholder
- Other approvers (IT, Legal, CFO)
- Blockers or gatekeepers

### **M - Money**
Do they have budget?
- Budget allocated (yes/no/needs approval)
- Amount available
- Fiscal year timing
- Pricing discussed & reaction

### **P - Prioritization**
How urgent is this?
- Priority level (Critical/High/Medium/Low)
- Compelling event (why now?)
- Timeline & deadline
- Competition for budget/attention

**All CHAMP criteria should be validated before moving to Proposal/Trial**

---

## Client Card Structure

Every opportunity has **ONE card.md file** that evolves through stages.

**Minimal file set:**
```
[company]/
├── card.md          # Main file - all info here
├── transcripts/     # Auto-populated from recordings
└── *.pdf            # Only final proposals/contracts
```

**See:** [card-template.md](./card-template.md) for full template structure

---

## Common Questions

**Q: When do I create a new opportunity folder?**
A: After first discovery call (30+ min) where prospect shows interest

**Q: Do I copy card-template.md or existing card?**
A: Copy existing card similar to your prospect! Template is for reference only.

**Q: Do I need separate files for each meeting?**
A: No! Add brief summary to card.md "Activity Log", link to transcript in `transcripts/` folder

**Q: What if they want to restart after being archived?**
A: Move from `archive/2025/lost/` back to appropriate stage, note re-engagement date in Activity Log

**Q: How do I handle multiple contacts at same company?**
A: List all in card.md "Authority" section with influence levels

**Q: They asked for proposal but I haven't CHAMP qualified them?**
A: Still do qualification first! Ask CHAMP questions during proposal discussion to fill gaps

---

**Last Updated:** YYYY-MM-DD
**Next Review:** Monthly or when process changes
