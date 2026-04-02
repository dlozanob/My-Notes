# Git commands

- Clone a repository: `git clone <repository link>`
- Get changes from remote: `git pull`
	- Does `git fetch` + `git merge`
	- Rebase: `git pull --rebase`
		- Does `git fetch` + `git rebase`
- Stage changes: `git add .`
- Push changes to remote: `git push`
- Commit changes: `git commit -m '<change name>'`
- Check change status: `git status`
---
- Show all versions: `git log --oneline`
	- Graph versions in remote and local: `git log --oneline --graph --decorate --all`
- Reset to a version (go to the past): `git reset <version name>`
	- Force action: `--hard`
---
- Show branches: `git branch --all`
- Switch to a branch (older method): `git checkout <branch name>`
	- Force action: `--force`
	- Switch to a version: `git checkout <version name>`
	- Create new branch: `git checkout -b <new branch name>`
- Switch to a branch (newest safer method): `git switch <branch name>` 
	- Force action: `git switch -f`
- Create new branch: `git branch <branch name>`
- Rename a branch: `git branch -m <old name> <new name>`
- Remove branch: `git branch -d <branch name>`
- Merge current branch with another one: `git merge <branch name>`
---
- Rebase
	- Move custom branch origin to last local main version (checkout to custom branch): `git rebase main`
	- Take custom branch on top of last local main version (checkout to main): `git rebase <custom branch>` 

>[!Note]
> Git named the main branch as `master` in the past. New name for main branch is `main`

>[!Note]
>In order to replace local with remote version use:
>`git reset --hard origin/main`


## Create Project

1. Go to the folder
2. `git init`
3. Create repository in GitHub
4. `git remote add origin https://github.com/TU_USUARIO/mi-proyecto.git`
5. Push project

```CMD
git add .
git commit -m "First Commit"
git push
```


