# Hands-On Lab Performed - Day 1

## Project Used

Instead of creating a dummy project, we used an actual Terraform project:

Project Name:

Azure Landing Zone

Purpose:

Terraform-based Azure Landing Zone implementation containing modules for:

* Resource Group
* Virtual Network
* Subnet
* NSG
* Storage Account
* VM
* Bastion
* VNet Peering

---

# Step 1 - Open Existing Project in VS Code

Opened existing Terraform project in VS Code.

Folder Structure:

Azure Landing Zone

├── azurerm_bastion

├── azurerm_nsg

├── azurerm_resource_group

├── azurerm_storage_account

├── azurerm_subnet

├── azurerm_virtual_network

├── azurerm_vm

└── azurerm_vnet_peering

---

# Step 2 - Verify Git Installation

Command:

git --version

Output:

git version 2.49.0.windows.1

Purpose:

Verify Git is installed on local machine.

---

# Step 3 - Configure Git User

Configure username:

git config --global user.name "Sapeksh Deshwal"

Configure email:

git config --global user.email "[desapeksh@gmail.com](mailto:desapeksh@gmail.com)"

Verify:

git config --global --list

Output:

user.name=Sapeksh Deshwal

user.email=[desapeksh@gmail.com](mailto:desapeksh@gmail.com)

Purpose:

Git uses these details as commit author information.

---

# Step 4 - Initialize Local Repository

Command:

git init

Purpose:

Convert normal project folder into Git repository.

Result:

Hidden folder created:

.git

Important:

Without .git folder, project is only a normal folder.

With .git folder, project becomes a Git repository.

---

# Step 5 - Check Repository Status

Command:

git status

Output:

Untracked files detected.

Purpose:

Identify files not yet tracked by Git.

---

# Step 6 - Create .gitignore

Created:

.gitignore

Content:

.terraform/

Purpose:

Ignore Terraform provider binaries and cached files.

Reason:

Terraform automatically recreates .terraform directory when terraform init is executed.

---

# Step 7 - Verify .gitignore

Command:

git status

Observation:

.terraform directory disappeared from untracked files list.

Conclusion:

.gitignore working successfully.

---

# Step 8 - Stage Files

Command:

git add .

Purpose:

Move files from Working Directory to Staging Area.

Flow:

Working Directory

↓

git add

↓

Staging Area

Important:

Files are NOT committed yet.

Only staged.

---

# Step 9 - Verify Staged Files

Command:

git status

Output:

Changes to be committed

new file:
azurerm_resource_group/main.tf

new file:
azurerm_vm/main.tf

etc.

Purpose:

Verify files are ready for commit.

---

# Step 10 - Create First Commit

Command:

git commit -m "Initial Azure Landing Zone Terraform Project"

Purpose:

Create first snapshot of project.

Result:

Git generated unique commit hash.

Example:

ee5cb12

Commit stored in Local Repository.

---

# Step 11 - Verify Commit History

Command:

git log

Command:

git log --oneline

Purpose:

View commit history.

Observation:

HEAD pointed to latest commit.

---

# Step 12 - Rename Branch

Command:

git branch -M Main

Purpose:

Rename default branch.

Result:

master

↓

Main

Industry standard:

main

---

# Step 13 - Create GitHub Repository

Repository Name:

terraform-azure-landing-zone

Type:

Public Repository

Purpose:

Host Terraform project remotely.

---

# Step 14 - Connect Local Repository to GitHub

Command:

git remote add origin https://github.com/sapekshdeshwal/terraform-azure-landing-zone.git

Purpose:

Connect local repository with remote repository.

---

# Step 15 - Verify Remote Repository

Command:

git remote

Output:

origin

Command:

git remote -v

Output:

origin (fetch)

origin (push)

Purpose:

Verify remote repository connection.

---

# Step 16 - Push Code to GitHub

Command:

git push -u origin Main

Purpose:

Upload local commits to GitHub.

Flow:

Local Repository

↓

git push

↓

GitHub Repository

Result:

Terraform project successfully uploaded to GitHub.

---

# End Result

Successfully completed:

✓ Git Installation Verification

✓ Git User Configuration

✓ Git Repository Initialization

✓ .gitignore Creation

✓ Git Status Verification

✓ Staging Area Usage

✓ First Commit

✓ Branch Management

✓ Remote Repository Configuration

✓ GitHub Integration

✓ First Push

---

# Key Learning

A complete Git workflow:

Project Folder

↓

git init

↓

git status

↓

git add .

↓

git commit

↓

git remote add origin

↓

git push

↓

GitHub Repository

This is the fundamental workflow followed by DevOps Engineers in daily development and CI/CD activities.
