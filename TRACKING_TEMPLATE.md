# Daily Progress Tracking Template

Copy this to Google Sheets: https://docs.google.com/spreadsheets/create

## Columns:

| Date | Day | LeetCode Easy | LeetCode Med | LeetCode Hard | Theory Topic | Project Hours | Commits | LinkedIn Posts | Mock Interviews | Applications | Notes | Status |
|------|-----|---------------|--------------|---------------|--------------|---------------|---------|----------------|-----------------|--------------|-------|--------|
| 2026-04-07 | 1 | 2 | 0 | 0 | AI Basics | 3 | 5 | 0 | 0 | 0 | First day! | ✅ |
| 2026-04-08 | 2 | 2 | 0 | 0 | Prompt Engineering | 3 | 3 | 0 | 0 | 0 | | |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Weekly Summary Row (Every Sunday):
| Week | Total Easy | Total Med | Total Hard | Total Hours | Projects Completed | Interviews | Apps Sent | Weekly Score |
|------|-----------|-----------|------------|-------------|-------------------|-----------|-----------|--------------|
| 1 | 14 | 0 | 0 | 35 | 1 | 0 | 0 | 95% |
| 2 | 14 | 0 | 0 | 35 | 0 | 0 | 0 | | 

## Formulas to Use:

**Daily Status:**
```
=IF(C2>=2, "✅", "⚠️")  // Check if 2+ problems solved
```

**Weekly Score:**
```
=(Problems_Solved/Target_Problems + Hours_Logged/Target_Hours)/2 * 100
```

**Running Totals:**
```
=SUM($C$2:C2)  // Total easy problems so far
```

## Color Coding:
- Green: On track (✅)
- Yellow: Behind (<80% target) (⚠️)
- Red: Severe delay (<50% target) (❌)

## Weekly Review Questions:
1. What went well?
2. What needs improvement?
3. Blockers?
4. Adjustments for next week?
