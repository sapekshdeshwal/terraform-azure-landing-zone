# Day 1 - Git Fundamentals (DevOps Interview Preparation)

## 1. Why Git Was Created

Before Git, developers shared code manually through ZIP files, emails, or shared folders.

Problems:

* No version history
* Difficult collaboration
* Files overwritten accidentally
* No rollback mechanism
* Difficult to identify who changed what

Git was created to solve these problems.

---

# 2. What is Git?

Git is a Distributed Version Control System (DVCS).

Git helps:

* Track code changes
* Maintain version history
* Collaborate with multiple developers
* Rollback to previous versions
* Manage branches and releases

Interview Answer:

Git is a distributed version control system used to track and manage source code changes while enabling collaboration among developers.

---

# 3. Git vs GitHub

Git:

* Installed on local machine
* Works offline
* Tracks changes
* Version control tool

GitHub:

* Cloud platform
* Hosts Git repositories
* Supports collaboration
* Requires internet

Interview Answer:

Git is a version control system, whereas GitHub is a cloud platform used to host Git repositories.

---

# 4. What is a Repository?

A repository (repo) is a storage location that contains:

* Source code
* Commit history
* Branches
* Configuration

There are two types:

1. Local Repository
2. Remote Repository

---

# 5. What does git init do?

Command:

git init

Purpose:

Creates a hidden .git folder inside the project.

Before:

Project Folder

After:

Project Folder
|
|-- .git

The .git folder stores:

* Commit history
* Branch information
* Tags
* Configuration
* Remote repository details

Interview Answer:

git init creates a hidden .git directory and converts a normal folder into a Git repository.

---

# 6. Git Workflow

Working Directory
↓
git add
↓
Staging Area
↓
git commit
↓
Local Repository
↓
git push
↓
Remote Repository (GitHub)

---

# 7. Working Directory

The working directory contains project files currently being modified.

Example:

main.tf
variables.tf
provider.tf

Changes are made here first.

---

# 8. What is Staging Area?

The staging area is an intermediate area between the working directory and the local repository.

Purpose:

* Select files before committing
* Review changes
* Organize commits

Command:

git add .

Interview Answer:

The staging area is a temporary area where changes are prepared before being committed to the local repository.

---

# 9. What does git add do?

Command:

git add .

Purpose:

Moves files from:

Working Directory
↓
Staging Area

Important:

git add does NOT create a commit.

Interview Answer:

git add stages files for commit by moving them from the working directory to the staging area.

---

# 10. What is .gitignore?

A .gitignore file tells Git which files or folders should not be tracked.

Example:

.terraform/

Common Use Cases:

* Terraform state files
* Provider binaries
* Logs
* IDE settings
* Secrets

Interview Answer:

.gitignore prevents unnecessary or sensitive files from being tracked by Git.

---

# 11. Why Ignore .terraform Folder?

The .terraform folder contains:

* Downloaded provider plugins
* Provider binaries
* Cached modules

It can be recreated using:

terraform init

Therefore it should not be committed.

---

# 12. What is a Commit?

Command:

git commit -m "Initial Azure Landing Zone Terraform Project"

A commit is a snapshot of the project at a specific point in time.

Each commit has:

* Unique Commit ID
* Author
* Timestamp
* Commit Message

Interview Answer:

A commit is a snapshot of changes stored in the local repository.

---

# 13. Commit Message Best Practices

Bad:

git commit -m "changes"

Bad:

git commit -m "updated"

Good:

git commit -m "Initial Azure Landing Zone Terraform Project"

Good:

git commit -m "Added Terraform modules for VNet and NSG"

---

# 14. What is HEAD?

HEAD is a pointer to the currently checked-out commit.

Example:

HEAD
↓
main
↓
Commit

Interview Answer:

HEAD is a reference pointing to the current commit or branch being worked on.

---

# 15. What is a Branch?

A branch is an independent line of development.

Purpose:

* Develop features separately
* Avoid impacting production code
* Enable parallel development

Example:

main
|
+---- feature-login

Interview Answer:

A branch allows developers to work independently without affecting the main codebase.

---

# 16. Why Rename master to main?

Most modern repositories use:

main

instead of:

master

Industry standard naming convention.

Command:

git branch -M main

---

# 17. What is a Remote Repository?

A remote repository is a repository hosted on GitHub, GitLab, Azure Repos, or Bitbucket.

Purpose:

* Backup code
* Collaboration
* CI/CD integration

---

# 18. What is Origin?

Command:

git remote add origin <repo-url>

Origin is simply an alias for the remote repository URL.

Interview Answer:

Origin is the default name used for the remote repository.

---

# 19. Verify Remote Repository

Command:

git remote -v

Output:

origin <url> (fetch)
origin <url> (push)

---

# 20. What is git push?

Command:

git push -u origin main

Purpose:

Uploads commits from local repository to remote repository.

Flow:

Local Repository
↓
git push
↓
GitHub Repository

Interview Answer:

git push uploads local commits to the remote repository.

---

# 21. What Does -u Mean?

Command:

git push -u origin main

Purpose:

Sets upstream tracking between local and remote branches.

After that:

git push

is sufficient.

---

# 22. Commands Practiced Today

git init

git status

git add .

git commit -m "message"

git log

git log --oneline

git branch -M main

git remote add origin <url>

git remote -v

git push -u origin main

---

# Interview Questions

Q1. What is Git?

Git is a distributed version control system used to track source code changes.

Q2. Difference between Git and GitHub?

Git is a version control tool. GitHub is a cloud hosting platform for Git repositories.

Q3. What does git init do?

Creates a hidden .git directory and initializes a Git repository.

Q4. What is a staging area?

An intermediate area where changes are prepared before committing.

Q5. What does git add do?

Moves changes from working directory to staging area.

Q6. What is a commit?

A snapshot of changes stored in the local repository.

Q7. What is .gitignore?

A file that specifies files and folders Git should ignore.

Q8. What is origin?

The default alias for a remote repository.

Q9. What does git push do?

Uploads local commits to a remote repository.

Q10. What is HEAD?

A pointer to the currently checked-out commit or branch.


