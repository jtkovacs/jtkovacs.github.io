# Git-style version control

*How could having easy access to the entire history of a file make you a more efficient programmer in the long term?*

- Would be able to diagnose past mistakes: where did this go wrong? 
- Not lose work from machine failures.

*What do you think are the pros and cons of manually choosing when to create a commit,like you do in Git, vs having versions automatically saved, like Google Docs does?*

- Save manually: -WILL forget, +sensible, intelligible versions, +reasonable num of versions
- Save automatically: +can't forget, +/-more data, which may or may not be useful

*Why do you think some version control systems, like Git, allow saving multiple files in one commit, while others, like Google Docs, treat each file separately?*

- Git recognizes that files in coding are more likely to be interdependent, affected by each other's updates.

# Major components of git

*What happens when you initialize a repository? Why do you need to do it?*

- You create a hidden .git file within the working directory, to store metadata for the files.
- This is the first step, followed by adding specific files to be tracked.

*How is the staging area different from the working directory and the repository? What value do you think it offers?*

- The staging area lets you decide which files from the working directory should be part of a commit, reducing the size of each commit: making them more logically distinct and therefore meaningful and navigable. Without a staging area, all files in the wd would get committed together irrespective of whether they'd changed.

*How can you use the staging area to make sure you have one commit per logical change?*

- ...along with git diff and get diff --staged. 

# Branching, diffing, and merging

*What are some situations when branches would be helpful in keeping your history organized? How would branches help?*

- Branches might be helpful when making a major but experimental change, or a deliberately different 'flavor' of the code'.

*How do the diagrams help you visualize the branch structure?*

- They are literally visualizations of a branch structure, unlike the output of git log--which, without the --graph option, is linear.

*What is the result of merging two branches together? Why do we represent it in the diagram the way we do?*

- Branches are not adirectionally merged 'together'; one branch is merged INTO another branch. The branch being merged is no longer needed,because the branched merged INTO inherits all its commits. Both branches are parents of the new commit, but we can still safely delete the branch being merged. 

*What are the pros and cons of Git’s automatic merging vs. always doing merges manually?*

- Always doing merges manually means you need to be really familiar with the purpose and content of each branch as well as the code, so that you can merge intelligently. It would be nearly impossible for auto merge to match the accuracy of an informed programmer.

*How did viewing a diff between two versions of a file help you see the bug that was introduced?*

- It drastically reduced the number of lines I had to squint at.

# Remotes & GitHub-based collaboration

*When would you want to use a remote repository rather than keeping all your work local?*

- When you expect to be using different computers, or to be collaborating with others.


*Why might you want to always pull changes manually rather than having Git automatically stay up-to-date with your remote repository?*

- You don't want things being overwritten, or incomprehensibly fragmented, by automatic pull changes.

*Describe the differences between forks, clones, and branches. When would you use one instead of another?*

- TO CLONE is to copy a directory either remote or local, such that its commit history comes along with it. Clone when you want to make your own branch of someone's work.
- TO BRANCH is to explore something before merging it back into the master code.
- TO FORK is to clone someone else's GitHub project via GitHub; it is to make a remote-remote connection.

*What is the benefit of having a copy of the last known state of the remote stored locally?*

- ... someone else with access to the remote might commit to it and change it while you're working on the same code 

*How would you collaborate without using Git or GitHub? What would be easier, and what would be harder?*

- I think it depends on the scale of the project. But definitely, the larger the project, the more benefit in handling it with these tools.

*When would you want to make changes in a separate branch rather than directly in master? What benefits does each approach have*

- Because you're trying to preserve the master for display/production. 
