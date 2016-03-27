# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a means of tracking updates to software as it is being developed, for the purpose of reverting to previous updates in order to work out errors.  It also allows multiple parties to update a single project with checks in place to make sure work isn't overwritten by other parties.

* What is a branch and why would you use one?
A branch is a copy of the master branch made for a local computer.  It allows the local user to make changes to the local copy while leaving the master copy unchanged and available for anyone else to work with. This way you can play with the local copy all you want without concern of destroying the codebase.  It also makes for a more systematized way of implementing updates.

* What is a commit? What makes a good commit message?
A commit is a save point in time usually made on a local branch.  A good commit message specifically identifies what file(s) were updated and specifically what in each file was changed.

* What is a merge conflict?
A merge conflict is where two independent branches are merged back to the master branch, but because they made changes to the same parts of the project, Git cannot resolve which code should be saved back to the master branch, without further direction from another source.