🧠 Git Rebase: Clean Commit History & Better Collaboration
Today I learned how to use git rebase to create a cleaner, more linear project history. Rebasing helps avoid unnecessary merge commits and makes collaboration easier by organizing commits chronologically.

🔍 Key Concepts I Practiced
git log --oneline to visualize commit history in a compact form

Creating feature branches and rebasing them onto the main branch

Resolving conflicts during rebase

Difference between git merge and git rebase
🧪 Commands I Used
```bash
# View commit history in one line per commit
git log --oneline

# Create and switch to a new feature branch
git checkout -b story/hare-and-tortoise

# Rebase current branch onto latest master
git fetch origin
git rebase origin/master

# If conflicts occur:
git status                # Check conflicted files
# Resolve the conflict manually, then:
git add <resolved-file>   # Mark as resolved
git rebase --continue     # Continue rebasing

# If something goes wrong
git rebase --abort        # Cancel rebase and return to original state
```
💡 Summary
git rebase is ideal for cleaning up local commit history before pushing.

It keeps the timeline linear and avoids merge noise.

Best used in solo branches before opening a pull request.
<img width="753" height="255" alt="image" src="https://github.com/user-attachments/assets/af48a056-485d-42ec-abd9-8d5b45baefb3" />

