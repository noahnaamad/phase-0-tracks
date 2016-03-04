# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful? 
Version control allows people to merge different versions of a document into one document, and to see the history of revisions, including when the change was made and who made the change.  This is useful because it allows multiple people to work in tandem on the same project, and allows us to quickly roll back mistakes.

* What is a branch and why would you use one?
A branch is essentially when you make a copy of the original code with the intention of editing it, and then later assimilating it into the original code (the master branch). Branches confer multiple benefits, such as: allowing multiple people to work on the same project without anyone stepping on anyone's toes, having more information about who made which edits, the ability to reject the code in a branch without affecting the master branch at all, and "going back in time" to before the code from the branch was merged into the master branch (or into any other branch).

* What is a commit? What makes a good commit message?
A commit is when you save the changes you made to a document to whatever branch you're working on.  A good commit message succinctly summarizes the specific changes you made to the document.

* What is a merge conflict?
A merge conflict is occurs when git has multiple "options" in how it can merge different branches into the different branch, and does not know which option to choose.  For example, if one line of code is changed in different ways in different branches, git will not know which version of that line to keep.