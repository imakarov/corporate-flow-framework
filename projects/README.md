# Projects - Active Paying Clients

Active paying clients with ongoing subscriptions.

---

## Folder Structure

```
projects/
├── README.md                    # This file
├── card-template.md             # Link to presales card template
│
└── [company-name]/             # One folder per paying client
    ├── card.md                  # Client card (required)
    ├── transcripts/             # Optional: meeting recordings
    └── [product-folders]/       # Optional: product instance folders
```

---

## When to Move Here

**From Presales:**
```bash
mv presales/negotiation/[company]/ projects/[company]/
```

**Criteria:**
- Contract signed ✅
- Payment processed OR first invoice sent ✅
- Client onboarding started ✅

---

## Client Card Structure

**Use presales card structure** with modifications:

**See:** [card-template.md](./card-template.md) for key differences

**Required Changes:**
1. **Stage** → **Status**: ✅ ACTIVE (Paying Client)
2. **Owner** → Customer Success Manager + Sales Rep
3. **Add revenue fields:** MRR, ARR, % of Total Revenue
4. **Add sections:** Active Projects, Metrics & Feedback
5. **Remove section:** Trial Information

---

## Required Card Sections

Every project card MUST have:

1. **Quick Stats** - Include MRR, ARR, % of total revenue
2. **Next Steps** - Immediate action items
3. **Authority** - Key contacts (decision makers + daily users)
4. **Customer Needs & Challenges** - Why they're using your product
5. **Money & Timeline** - Contract details, renewal date
6. **Active Projects** - All product deployments, user counts, health
7. **Metrics & Feedback** - Usage tracking, client feedback, health score
8. **Activity Log** - QBRs, support issues, feature requests, expansion talks
9. **Related Documents** - Links to transcripts, contracts

---

## What to Update & When

### After EVERY Client Interaction
**Time:** 5-10 minutes

- [ ] **Activity Log** - Add entry (date, attendees, key points)
- [ ] **Metrics & Feedback** - Update if feedback received
- [ ] **Next Steps** - Update action items
- [ ] **Last Updated** date

### Weekly Check
**Time:** 10-15 minutes per client

- [ ] **Client Health Score** - Review and adjust if needed
- [ ] **Next Steps** - Clear completed tasks, add new ones
- [ ] **Active Projects** - Update health status if changed

### Monthly (Before QBR)
**Time:** 30-45 minutes per client

- [ ] **Usage Metrics** - Collect from product team
- [ ] **Metrics & Feedback** - Prepare for QBR discussion
- [ ] **Activity Log** - Review trends, prepare summary
- [ ] **Next Steps** - Plan expansion/upsell opportunities

### Quarterly Business Review (QBR)
**Time:** 1-2 hours prep + meeting

- [ ] Full card review and update
- [ ] Usage metrics presentation
- [ ] Client health assessment
- [ ] Expansion opportunities discussion
- [ ] Contract renewal planning (if approaching)

---

## Client Health Monitoring

### Health Score (X/10)

**9-10/10 - Excellent**
- High usage, positive feedback
- Expansion discussions active
- Strong relationship

**7-8/10 - Healthy**
- Regular usage, generally positive
- Minor issues being addressed
- Stable relationship

**5-6/10 - At Risk**
- Declining usage or engagement
- Unresolved issues or complaints
- Need immediate attention

**1-4/10 - Critical**
- Very low usage or stopped using
- Major unresolved issues
- Churn risk - escalate immediately

### Risk Levels

**Low Risk**
- Healthy usage and engagement
- Contract renewal not due soon
- No major issues

**Medium Risk**
- Some concerns (usage, feedback, engagement)
- Contract renewal approaching
- Monitoring needed

**High Risk**
- Multiple red flags
- Low health score
- Active churn risk

**Critical Risk**
- Revenue concentration (one client = X% of total revenue)
- Must maintain excellent relationship

---

## Moving Out of Projects

### To Archive (Churned)
**When:** Client cancels, doesn't renew, or stops paying

```bash
mv projects/[company]/ projects/archive/2025/[company]/
```

**Before archiving:**
- [ ] Add **❌ CHURNED** to header
- [ ] Add **Churn Date:** YYYY-MM-DD
- [ ] Add **Churn Reason:** [Why they left]
- [ ] Add **Lessons Learned:** section
- [ ] Final health score and notes
- [ ] Export all usage metrics

---

## Related Documents

**Templates:**
- [card-template.md](./card-template.md) - Project card differences from presales
- [/sales-marketing/presales/card-template.md](../sales-marketing/presales/card-template.md) - Base card structure

**Guidelines:**
- [/CLAUDE.md](../CLAUDE.md) - Universal rules for all documents
- [/sales-marketing/presales/README.md](../sales-marketing/presales/README.md) - Presales workflows

---

## Common Questions

**Q: When do I create a project folder?**
A: After contract signed + payment processed + onboarding started

**Q: What if client has multiple products?**
A: Create subfolders inside client folder

**Q: Where do I track support issues?**
A: In Activity Log section of card.md - link to support system if needed

**Q: When do I move client to archive?**
A: When they churn (cancel, don't renew, stop paying)

**Q: What's the difference between presales and projects card?**
A: See [card-template.md](./card-template.md) - mainly Status vs Stage, add revenue fields, Active Projects + Metrics & Feedback sections

---

**Last Updated:** YYYY-MM-DD
**Next Review:** When process changes or new clients added
