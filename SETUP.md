# 🚀 SETUP GUIDE - GitHub Daily Task System

Follow these steps **EXACTLY** to get daily email notifications from GitHub.

---

## ⚡ STEP 1: Push to GitHub (5 minutes)

### 1.1 Create GitHub Repository

Go to: https://github.com/new

- Repository name: `faang-8month-roadmap`
- Description: `8-month preparation roadmap for landing FAANG position`
- Visibility: **Public** (so recruiters can see your commitment)
- ✅ Initialize with README: **NO** (we already have one)
- Click: **Create repository**

### 1.2 Push Code

Open Git Bash in the project folder:

```bash
cd /home/claude/faang-8month-roadmap

# Initialize git
git init

# Add all files
git add .

# First commit
git commit -m "Initial commit: 240-day FAANG preparation roadmap"

# Add remote (REPLACE 'M-Mikey' with your GitHub username)
git remote add origin https://github.com/M-Mikey/faang-8month-roadmap.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Verify:** Go to `https://github.com/M-Mikey/faang-8month-roadmap` and see all files

---

## 📧 STEP 2: Enable Email Notifications (2 minutes)

### 2.1 Watch the Repository

1. Go to: https://github.com/M-Mikey/faang-8month-roadmap
2. Click: **Watch** (top right)
3. Select: **All Activity**
4. Click: **Apply**

### 2.2 Configure Notification Settings

1. Go to: https://github.com/settings/notifications
2. Under "Participating, @mentions and custom":
   - ✅ Email
   - ✅ Include your own updates
3. Under "Watching":
   - ✅ Email
   - ✅ Issues
   - ✅ Pull requests
4. Click: **Save**

### 2.3 Test Email Delivery

1. Go to: https://github.com/M-Mikey/faang-8month-roadmap/issues/new
2. Title: `TEST - Email Notification`
3. Body: `Testing daily task automation`
4. Click: **Submit new issue**
5. **Check your email:** mohitsharma8700758407@gmail.com

✅ If you got the email, notifications work!

---

## ⚙️ STEP 3: Enable GitHub Actions (1 minute)

### 3.1 Enable Actions

1. Go to: https://github.com/M-Mikey/faang-8month-roadmap/settings/actions
2. Under "Actions permissions":
   - Select: **Allow all actions and reusable workflows**
3. Click: **Save**

### 3.2 Give Workflow Permissions

1. Go to: https://github.com/M-Mikey/faang-8month-roadmap/settings/actions
2. Scroll to "Workflow permissions"
3. Select: **Read and write permissions**
4. ✅ Check: **Allow GitHub Actions to create and approve pull requests**
5. Click: **Save**

---

## 🎯 STEP 4: Test Daily Automation (2 minutes)

### 4.1 Manual Trigger Test

1. Go to: https://github.com/M-Mikey/faang-8month-roadmap/actions
2. Click on: **Daily Task Automation** workflow
3. Click: **Run workflow** (right side)
4. Select: `main` branch
5. Click: **Run workflow** (green button)

### 4.2 Verify

Wait 30 seconds, then:
1. Go to: https://github.com/M-Mikey/faang-8month-roadmap/issues
2. You should see: **Day X - Daily Tasks** issue created
3. **Check email:** You should receive notification

✅ If issue created + email received = SUCCESS!

---

## 📅 STEP 5: Set Start Date (1 minute)

The automation will start creating issues based on `START_DATE` in the workflow.

**Current start date:** April 7, 2026

**To change it:**
1. Edit: `.github/workflows/daily-task.yml`
2. Find line: `START_DATE="2026-04-07"`
3. Change to your start date
4. Commit and push

---

## 🔔 STEP 6: Gmail Filter (OPTIONAL - 2 minutes)

To make task emails stand out:

1. Open Gmail
2. Search: `from:notifications@github.com "Daily Tasks"`
3. Click: **Create filter**
4. ✅ Check: **Star it**
5. ✅ Check: **Apply label:** (create label "FAANG Prep")
6. ✅ Check: **Mark as important**
7. Click: **Create filter**

Now all daily tasks will be:
- ⭐ Starred
- 📁 Labeled "FAANG Prep"
- ❗ Marked important

---

## ✅ VERIFICATION CHECKLIST

Before you start Day 1, verify:

- [ ] Repository pushed to GitHub
- [ ] All 240 task files visible in `tasks/` folder
- [ ] GitHub Actions enabled
- [ ] Workflow permissions set to "Read and write"
- [ ] Repository watched (All Activity)
- [ ] Email notifications enabled
- [ ] Test issue created successfully
- [ ] Test email received
- [ ] Gmail filter set (optional)

**If all checked ✅ → You're ready to start Day 1!**

---

## 📱 DAILY WORKFLOW

Every morning at 5:30 AM IST:
1. **GitHub automatically creates** new issue with daily tasks
2. **You receive email** with issue link
3. **Click email link** → Opens GitHub issue
4. **Complete tasks** throughout the day
5. **Check off boxes** ✅ as you finish
6. **Close issue** when day complete

---

## 🆘 TROUBLESHOOTING

### No email received?

**Check:**
1. GitHub notification settings: https://github.com/settings/notifications
2. Spam folder in Gmail
3. Repository watch status
4. Workflow ran successfully (no errors in Actions tab)

### Workflow not running?

**Check:**
1. Actions enabled in repository settings
2. Workflow permissions set to "Read and write"
3. YAML file syntax (no errors)
4. Start date is correct

### Wrong day number?

**Fix:**
1. Edit: `.github/workflows/daily-task.yml`
2. Change: `START_DATE` to your actual start date
3. Commit and push

---

## 📞 SUPPORT

If something doesn't work:
1. Check Actions tab for errors: https://github.com/M-Mikey/faang-8month-roadmap/actions
2. Review workflow logs
3. Verify all settings above

---

## 🎯 NEXT STEPS

1. Complete this setup (should take 10 minutes total)
2. Wait for first daily task email tomorrow morning
3. Start Day 1 when email arrives
4. Check off tasks as you complete them
5. Close issue when day is done
6. Repeat for 240 days

---

**You're all set! See you on Day 1. 🚀**
