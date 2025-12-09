# Git commands

- Clone a repository: `git clone <repository link>`
- Stage changes: `git add .`
- Push changes to remote: `git push`
- Get changes from remote: `git pull`
- Commit changes: `git commit -m '<change name>'`
- Check change status: `git status`
- Show branches: `git branch --all`
- Create a branch: `git branch <branch name>`
- Switch between branches: `git switch <branch name>` 
	- Force action: `git switch -f` 
- Remove branch: `git branch -d <branch name>`
- Merge current branch with another one: `git merge <branch name>`
- Rename a branch: `git branch -m <old name> <new name>`
- Show all versions: `git log --oneline`
- Switch to a version: `git checkout <version name>`
	- Force action: `--force`
- Reset to a version (go to the past): `git reset <version name>`
	- Force action: `--hard`

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


