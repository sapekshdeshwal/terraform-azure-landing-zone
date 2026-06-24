# Day 2 - Advanced Git

## Objective

Learn advanced Git concepts used in real-world DevOps and software development projects.

---

# 1. Branching

## What is a Branch?

A branch is an independent line of development that allows developers to work on new features without affecting the main code.

### Why do we use Branches?

- Safe development
- Team collaboration
- Code isolation
- Feature development

### Example

Main Branch:

main

Feature Branch:

feature-git-day2

---

# 2. Clone

## What is Clone?

Used to download an existing Git repository from GitHub.

### Command

git clone <repository-url>

### Example

git clone https://github.com/username/repository.git

### Clone vs Init

| git clone | git init |
|------------|------------|
| Downloads existing repository | Creates new repository |
| Includes remote connection | Local repository only |

---

# 3. Fetch

## What is Fetch?

Downloads latest changes from remote repository without merging them.

### Command

git fetch

### Benefits

- Safe operation
- No automatic merge
- Allows review before merging

---

# 4. Pull

## What is Pull?

Downloads latest changes and automatically merges them into local branch.

### Command

git pull origin Main

### Pull vs Fetch

| Pull | Fetch |
|--------|--------|
| Download + Merge | Download only |
| Updates local branch | Does not update local branch |

---

# 5. Merge

## What is Merge?

Combines changes from one branch into another branch.

### Command

git merge feature-git-day2

### Use Case

Merge feature branch into Main after successful testing and review.

---

# 6. Rebase

## What is Rebase?

Moves feature branch commits on top of latest Main branch commits.

### Command

git rebase Main

### Benefits

- Cleaner commit history
- Linear commit structure

### Merge vs Rebase

| Merge | Rebase |
|---------|---------|
| Preserves history | Rewrites history |
| Creates merge commit | Cleaner history |

---

# 7. Pull Request (PR)

## What is Pull Request?

A request to merge code from one branch into another after review and approval.

### Workflow

Feature Branch
↓
Push
↓
Pull Request
↓
Code Review
↓
Merge
↓
Main

### Benefits

- Code review
- Collaboration
- Quality checks
- Approval process

---

# 8. Merge Conflict

## What is Merge Conflict?

Occurs when Git cannot automatically decide which changes should be retained.

### Example

Developer A:

name="Sapeksh"

Developer B:

name="Rahul"

Git cannot decide which version is correct.

### Resolution Steps

1. Open conflicted file
2. Resolve conflict manually
3. git add .
4. git commit

---

# Common Git Commands

git status

git add .

git commit -m "message"

git push

git pull

git fetch

git clone

git branch

git checkout

git merge

git rebase

---

# Most Asked Interview Questions

## What is Git?

Git is a Distributed Version Control System used to track and manage source code changes.

## Difference between Git and GitHub?

Git = Version Control Tool

GitHub = Cloud-based Git Repository Hosting Platform

## What is a Branch?

An independent line of development.

## What is a Pull Request?

A request to merge changes after review and approval.

## Difference between Pull and Fetch?

Pull = Download + Merge

Fetch = Download only

## Difference between Merge and Rebase?

Merge preserves history.

Rebase creates cleaner history.

## What is Merge Conflict?

A situation where Git cannot automatically merge changes.

## What is Clone?

Downloads an existing repository.

## What is Staging Area?

An intermediate area where changes are prepared before committing.

## Explain Git Workflow

Feature Branch
↓
git add
↓
git commit
↓
git push
↓
Pull Request
↓
Review
↓
Merge
↓
Main
