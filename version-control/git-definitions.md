# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is the ability to go back in time, so to speak, and track the changes that have been made to a codebase at different points by different users. It's useful for debugging and/or restoring code to a previous version if something goes wrong or a decision is made to discard a particular feature.

* What is a branch and why would you use one?

A branch is a version of a codebase separate from the master, in which code can be edited and/or added to without affecting the master until the additions are ready to merge onto the project. In other words, it's a sandbox where you can play with the code and make changes without breaking anything. Once you're satisfied with the feature you've added, you can merge the branch onto the master and then delete that branch from your repository because you don't need the sandbox anymore.

* What is a commit? What makes a good commit message?

A commit is a save point in Git. Git doesn't auto-save, so when a user makes changes to files, they must add those files to a staging area and then commit them to the repository to save the changes. It's like a video game where you play until you reach a save point and can then choose to save your progress - or not, if you like to live dangerously.

A commit message should be specific about the changes you've made, as well as comprehensible to the others you're collaborating with. Also, brief!

* What is a merge conflict?

A merge conflict can occur when two users are working on the same file and they each make changes to the same line or lines of code. When they both try to merge that file, it's impossible for Git to know with its robot brain which of the changes to those lines are the ones the project manager would like to keep.
