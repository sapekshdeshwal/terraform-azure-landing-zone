# Hands-On Lab Performed - Day 2

## Objective

Understand Git Branching, Pull Requests, Merge Workflow and Collaboration Process.

---

## Step 1 - Checked Existing Branch

Command:

git branch

Output:

* Main

---

## Step 2 - Created Feature Branch

Command:

git checkout -b feature-git-day2

Output:

Switched to a new branch 'feature-git-day2'

---

## Step 3 - Verified Branch

Command:

git branch

Output:

Main
* feature-git-day2

---

## Step 4 - Checked Commit History

Command:

git log --oneline

Observed existing Terraform project commit.

---

## Step 5 - Created New File

Created:

Git-Day2-AdvancedGit.md

Added Git Day 2 learning notes.

---

## Step 6 - Checked Git Status

Command:

git status

Observed file as Untracked.

---

## Step 7 - Added File to Staging Area

Command:

git add .

Observed file moved from Untracked to Staged state.

---

## Step 8 - Created Commit

Command:

git commit -m "Added Day 2 advanced git notes"

New commit created successfully.

---

## Step 9 - Verified Commit History

Command:

git log --oneline

Observed:

Added Day 2 advanced git notes

Initial Azure Landing Zone Terraform Project

---

## Step 10 - Switched to Main Branch

Command:

git checkout Main

Observation:

Git-Day2-AdvancedGit.md disappeared.

Learning:

Main branch does not contain feature branch commits.

---

## Step 11 - Returned to Feature Branch

Command:

git checkout feature-git-day2

Observation:

Git-Day2-AdvancedGit.md reappeared.

Learning:

Branches maintain separate commit histories.

---

## Step 12 - Pushed Feature Branch

Command:

git push -u origin feature-git-day2

Result:

Feature branch successfully pushed to GitHub.

---

## Step 13 - Created Pull Request

Source Branch:

feature-git-day2

Target Branch:

Main

Result:

Pull Request created successfully.

---

## Step 14 - Merged Pull Request

Action:

Merge Pull Request

Result:

Changes merged into Main branch.

---

## Key Learnings

- Branch Creation
- Branch Switching
- Staging Area
- Commit Creation
- Push Operation
- Pull Request Workflow
- Merge Process
- Real DevOps Collaboration Model
