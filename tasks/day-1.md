# Day 1: Setup + Data Structures Fundamentals

**Date:** April 7, 2026  
**Month:** 1 (Foundation + AI Basics)  
**Week:** 1 (Setup + Data Structures Fundamentals)

---

## 📋 Daily Goals

### Hour 1 (6:00 AM - 7:00 AM): DSA/LeetCode
- [ ] Install LeetCode extension in VS Code
- [ ] Solve: [Two Sum](https://leetcode.com/problems/two-sum/) (Easy)
- [ ] Solve: [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/) (Easy)
- [ ] **Goal:** Understand HashMap and Stack basics
- [ ] **Deliverable:** Screenshot both solutions submitted + LeetCode profile

**Learning Focus:**
- HashMap for O(1) lookups
- Stack for LIFO operations
- Time complexity analysis

**Resources:**
- [NeetCode Two Sum Explanation](https://www.youtube.com/watch?v=KLlXCFG5TnA)
- [Stack Data Structure Guide](https://www.geeksforgeeks.org/stack-data-structure/)

---

### Hour 2 (7:00 AM - 8:00 AM): Theory - AI Fundamentals
- [ ] Watch: ["What is AI/ML" - Andrew Ng](https://www.coursera.org/learn/machine-learning) (1hr crash course)
- [ ] Read: [Claude API Documentation](https://docs.anthropic.com/en/api/getting-started)
- [ ] Create Anthropic account and get API key
- [ ] **Deliverable:** 1-page summary of AI vs ML vs Deep Learning

**Key Concepts to Understand:**
- Artificial Intelligence vs Machine Learning vs Deep Learning
- What are Large Language Models (LLMs)?
- How do APIs work?
- What is Claude and how does it differ from ChatGPT?

**Notes Template:**
```
AI vs ML vs DL:
- AI: [Your definition]
- ML: [Your definition]
- DL: [Your definition]

LLMs:
- What are they?
- How do they work?
- Use cases in software development

Claude API:
- Key features
- Pricing model
- Rate limits
```

---

### Hour 3-5 (9:00 PM - 12:00 AM): Project - AI Code Analyzer (Setup)
- [ ] Create new GitHub repository: `ai-code-analyzer`
- [ ] Initialize React + Vite project: `npm create vite@latest ai-code-analyzer -- --template react`
- [ ] Install dependencies: `npm install @anthropic-ai/sdk`
- [ ] Set up environment variables (.env file)
- [ ] Create basic UI with text input for code
- [ ] Implement API call to Claude
- [ ] **Deliverable:** Working API call that returns response

**Project Structure:**
```
ai-code-analyzer/
├── src/
│   ├── components/
│   │   └── CodeInput.jsx
│   ├── services/
│   │   └── claudeApi.js
│   ├── App.jsx
│   └── main.jsx
├── .env
├── package.json
└── README.md
```

**Code to Write:**

1. **claudeApi.js**
```javascript
import Anthropic from '@anthropic-ai/sdk';

const client = new Anthropic({
  apiKey: import.meta.env.VITE_ANTHROPIC_API_KEY,
  dangerouslyAllowBrowser: true
});

export async function analyzeCode(code) {
  const message = await client.messages.create({
    model: 'claude-sonnet-4-20250514',
    max_tokens: 1024,
    messages: [{
      role: 'user',
      content: `Analyze this code and provide feedback:\n\n${code}`
    }]
  });
  
  return message.content[0].text;
}
```

2. **Basic UI Component**
- Text area for code input
- "Analyze" button
- Output display area

**Testing:**
- Test with simple JavaScript function
- Verify API response displays correctly
- Check error handling

---

## ✅ End of Day Checklist

- [ ] 2 LeetCode problems solved and submitted
- [ ] Screenshots saved in `progress/day-1/` folder
- [ ] AI/ML summary document written
- [ ] GitHub repo created with initial commit
- [ ] Working API call to Claude demonstrated
- [ ] Daily progress logged in tracking spreadsheet

**Commit Message Format:**
```
Day 1: Setup AI Code Analyzer + Solved Two Sum & Valid Parentheses

- Implemented Claude API integration
- Created basic code input UI
- Solved 2 LeetCode problems (Easy)
- Completed AI fundamentals study
```

---

## 📊 Progress Update

**LeetCode:** 2 / 500  
**Projects:** 1 started / 8 total  
**Theory Hours:** 1 / 240  
**Coding Hours:** 3 / 720

---

## 🤔 Reflection Questions

At end of day, answer these:
1. What was the hardest part today?
2. What did I learn about HashMap/Stack?
3. What is one thing I understood about AI?
4. Any blockers for tomorrow?
5. Am I on track? (Yes/No)

**Write answers in:** `reflections/day-1.md`

---

## 📝 Tomorrow's Preview (Day 2)

**LeetCode:**
- Best Time to Buy/Sell Stock
- Contains Duplicate

**Theory:**
- How GitHub Copilot Works
- Prompt Engineering 101

**Project:**
- Add code syntax highlighting
- Implement multiple analysis types

---

## 🔗 Resources & Links

- [LeetCode Profile](https://leetcode.com/yourusername)
- [GitHub Repo](https://github.com/M-Mikey/ai-code-analyzer)
- [Anthropic Console](https://console.anthropic.com)
- [Project Tracking Sheet](https://docs.google.com/spreadsheets)

---

**Remember:** This is Day 1 of 240. Every day counts. No zero days.

**Good luck! 🚀**
