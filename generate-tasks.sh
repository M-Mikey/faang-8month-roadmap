#!/bin/bash

# Generate all 240 daily task files

TASKS_DIR="/home/claude/faang-8month-roadmap/tasks"
mkdir -p "$TASKS_DIR"

# Month 1: Days 1-30 already have Day 1, create Days 2-30
# Days 2-7 (Week 1 remaining)
cat > "$TASKS_DIR/day-2.md" << 'EOF'
# Day 2: Array Patterns + Prompt Engineering

**Hour 1 - DSA:**
- [ ] Solve: Best Time to Buy/Sell Stock (Easy)
- [ ] Solve: Contains Duplicate (Easy)
- [ ] Review: Array manipulation patterns
- [ ] Deliverable: Document pattern in notebook

**Hour 2 - Theory:**
- [ ] Read: "How GitHub Copilot Works" (Microsoft blog)
- [ ] Watch: "Prompt Engineering 101" (OpenAI)
- [ ] Deliverable: Create 10 effective prompts for code generation

**Hour 3-5 - Project:**
- [ ] Add: Code syntax highlighting to input
- [ ] Implement: "Analyze this code" button
- [ ] Display: Claude's analysis in formatted output
- [ ] Deliverable: Screenshot of working analyzer

**End of Day:** 2 problems solved, Prompt engineering document, Enhanced UI
EOF

cat > "$TASKS_DIR/day-3.md" << 'EOF'
# Day 3: Linked Lists + AI Services

**Hour 1 - DSA:**
- [ ] Solve: Reverse Linked List (Easy)
- [ ] Solve: Merge Two Sorted Lists (Easy)
- [ ] Learn: Linked List traversal patterns
- [ ] Deliverable: Draw linked list visualization

**Hour 2 - Theory:**
- [ ] Read: Azure OpenAI Service documentation
- [ ] Learn: Difference between Claude, GPT-4, Gemini
- [ ] Deliverable: Comparison table of 3 LLMs

**Hour 3-5 - Project:**
- [ ] Add: Multiple analysis types (security, performance, complexity)
- [ ] Implement: Token counting and cost estimation
- [ ] Deliverable: Multi-function analyzer

**End of Day:** 2 problems, LLM comparison, Feature-rich analyzer
EOF

cat > "$TASKS_DIR/day-4.md" << 'EOF'
# Day 4: Advanced Arrays + AI in FAANG

**Hour 1 - DSA:**
- [ ] Solve: Maximum Subarray (Medium)
- [ ] Solve: Product of Array Except Self (Medium)
- [ ] Learn: Kadane's algorithm, prefix/suffix arrays
- [ ] Deliverable: Explain both algorithms in own words

**Hour 2 - Theory:**
- [ ] Watch: "AI in Software Development" (Microsoft Build 2025)
- [ ] Read: Meta's AI coding standards
- [ ] Deliverable: Summary of how FAANG uses AI internally

**Hour 3-5 - Project:**
- [ ] Add: Code quality scoring (0-100)
- [ ] Implement: Suggestions for improvement
- [ ] Add: Export report as PDF
- [ ] Deliverable: Full analysis report generator

**End of Day:** First MEDIUM problems, AI industry knowledge, PDF export
EOF

cat > "$TASKS_DIR/day-5.md" << 'EOF'
# Day 5: Sliding Window + RAG Basics

**Hour 1 - DSA:**
- [ ] Solve: Longest Substring Without Repeating (Medium)
- [ ] Solve: Valid Anagram (Easy)
- [ ] Learn: Sliding window technique, hash maps
- [ ] Deliverable: Pattern recognition document

**Hour 2 - Theory:**
- [ ] Read: "Building AI-Native Applications" (AWS)
- [ ] Study: RAG (Retrieval Augmented Generation) basics
- [ ] Deliverable: RAG architecture diagram

**Hour 3-5 - Project:**
- [ ] Add: Historical analysis tracking
- [ ] Store: Past analyses in localStorage
- [ ] Implement: Compare code versions
- [ ] Deliverable: Version comparison feature

**End of Day:** Sliding window mastery, RAG understanding, Version control
EOF

cat > "$TASKS_DIR/day-6.md" << 'EOF'
# Day 6-7: WEEKEND - Complete AI Code Analyzer

**8 Hours Total:**
- [ ] Review all DSA problems solved (2 hrs)
- [ ] Complete: "AI Code Analyzer" with full UI polish (4 hrs)
- [ ] Deploy: To Vercel with custom domain (1 hr)
- [ ] Write: README.md with demo GIF (1 hr)

**Deliverables:**
- Live project at ai-code-analyzer.vercel.app
- Professional README
- Week 1 complete (7 LeetCode problems)
- First portfolio project shipped
EOF

echo "Day 6 created (weekend combined 6-7)"

# Week 2: Days 8-14
for day in {8..14}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Week 2 - Trees + AI Prompt Engineering

**Focus:** Binary trees, AI agents, LegacyLift enhancement

**Hour 1 - DSA:** Tree problems
**Hour 2 - Theory:** Advanced AI concepts
**Hour 3-5 - Project:** LegacyLift AI v2.0

**Daily targets:** 2 problems, 1 theory topic, 3 hrs coding
EOF
done

# Week 3: Days 15-21
for day in {15..21}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Week 3 - Graphs + Azure AI

**Focus:** Graph algorithms, Azure Cognitive Services, DevSecOps Dashboard

**Hour 1 - DSA:** Graph problems (DFS, BFS, Dijkstra)
**Hour 2 - Theory:** Azure AI Services
**Hour 3-5 - Project:** Security scanner backend

**Daily targets:** 2 problems, Azure learning, Backend development
EOF
done

# Week 4: Days 22-28
for day in {22..28}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Week 4 - Dynamic Programming + GitHub Copilot

**Focus:** DP patterns, Copilot mastery, Azure Migration Planner

**Hour 1 - DSA:** DP problems (memoization, bottom-up)
**Hour 2 - Theory:** GitHub Copilot certification
**Hour 3-5 - Project:** Cost estimation calculator

**Daily targets:** 2 DP problems, Copilot practice, Project progress
EOF
done

# Days 29-30: Month 1 Review
cat > "$TASKS_DIR/day-29.md" << 'EOF'
# Day 29: Month 1 Review

**5 Hours:**
- [ ] Review: All 60+ LeetCode problems solved
- [ ] Identify: Weak patterns
- [ ] Re-solve: 10 hardest problems
- [ ] Deliverable: Personal DSA weakness report

**Reflection:** What did I learn this month?
EOF

cat > "$TASKS_DIR/day-30.md" << 'EOF'
# Day 30: Portfolio Assembly

**5 Hours:**
- [ ] Update: Portfolio website with 3 new projects
- [ ] Write: Technical blog post about AI journey
- [ ] Post: LinkedIn update showcasing projects
- [ ] Deliverable: Updated portfolio + LinkedIn post

**Month 1 Complete:** 60 problems, 4 projects, 2 certifications
EOF

# Month 2: Days 31-60 (System Design + Certifications)
for day in {31..60}; do
  week=$((($day - 31) / 7 + 5))
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 2 - System Design + Cloud

**Week:** $week
**Focus:** Advanced DSA, AWS/Azure certs, Kubernetes

**Hour 1 - DSA:** Advanced problems (intervals, heaps, tries)
**Hour 2 - Theory:** System design or cloud certification study
**Hour 3-5 - Project:** Cloud deployments, K8s practice

**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 3: Days 61-90 (Specialized Skills)
for day in {61..90}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 3 - AI Specialization

**Focus:** AI agents, RAG systems, .NET + Blazor

**Hour 1 - DSA:** Continued problem solving (Target: 200+)
**Hour 2 - Theory:** Advanced AI architectures
**Hour 3-5 - Project:** Multi-agent systems, Blazor apps

**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 4: Days 91-120 (Production Systems)
for day in {91..120}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 4 - Production Excellence

**Focus:** Performance optimization, distributed systems

**Hour 1 - DSA:** Hard problems focus (Target: 250+)
**Hour 2 - Theory:** Performance, caching, event-driven architecture
**Hour 3-5 - Project:** Microservices, CQRS, Event Sourcing

**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 5: Days 121-150 (Interview Prep)
for day in {121..150}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 5 - Mock Interview Grind

**Focus:** Daily mock interviews, LeetCode mastery

**Hour 1:** 3 LeetCode problems (1 easy, 1 med, 1 hard)
**Hour 2:** Mock system design interview
**Hour 3-5:** Mock coding interviews (Pramp, Interviewing.io)

**Target:** 350+ total problems, 50+ mock interviews
**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 6: Days 151-180 (Networking + Applications)
for day in {151..180}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 6 - Network & Apply

**Focus:** LinkedIn networking, mass applications

**Hour 1:** LeetCode maintenance (3 problems)
**Hour 2:** LinkedIn networking (10 connections)
**Hour 3-5:** Applications + informational interviews

**Target:** 100+ connections, 80+ applications
**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 7: Days 181-210 (Active Interviews)
for day in {181..210}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 7 - Interview Season

**Focus:** Phone screens, virtual onsites

**Hour 1:** Review interview mistakes
**Hour 2:** Practice weak areas
**Hour 3-5:** Interview prep + LeetCode review

**Expected:** 5-10 phone screens, 2-5 onsites
**Progress:** $(($day * 100 / 240))% complete
EOF
done

# Month 8: Days 211-240 (Offers + Final Push)
for day in {211..240}; do
  cat > "$TASKS_DIR/day-$day.md" << EOF
# Day $day: Month 8 - Final Sprint

**Focus:** Final rounds, offers, negotiation

**Hour 1:** Continue LeetCode (450+ target)
**Hour 2:** Salary negotiation prep
**Hour 3-5:** Complete remaining interviews

**Goal:** Multiple offers, best package negotiated
**Progress:** $(($day * 100 / 240))% complete
EOF
done

echo "✅ All 240 daily task files created in $TASKS_DIR"
ls -la "$TASKS_DIR" | wc -l
