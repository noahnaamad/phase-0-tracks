# Git Definitions

**Instructions:** Define each of the following Git concepts.

- **What is version control?  Why is it useful?**

Version control is the system of managing changes to software projects. These changes can be bug fixes, brand new features, scrapped features, or anything in between. It is useful because it grants developers the power of time travel, in that previously saved versions of the project can be accessed as necessary.

- **What is a branch and why would you use one?** 

In version control, a branch refers to the current part of the overall software project you are currently working on. Each branch ultimately stems from the master branch, and it is most common for developers to only be working on separate branches, which will eventually get merged with the master branch if approved. Branching allows for scalability, and multiple team members can work on different features/branches at the same time.

- **What is a commit? What makes a good commit message?**

Simply, a commit is just a version of a git repository that is saved. This is one of the main tenants of version control, as accessing different committed versions is often useful for teams to manage software projects. Solid commit messages follow the two C's - concise and consistent. You're writing this message the the future you or your team members, so you want them to explain what changes you made in a short & effective manner.

- **What is a merge conflict?**

Merging branches is a way to integrate one branch into the branch you are currently working in. More often than not, Git will do its best and be able to figure out how to merge these branches without any issues. Occassionally there will be issues that Git can not decide how to solve on its own, and merge conflicts arise. From my understanding this most often happens from a lack of organization - two engineers edit the same line in a file differently, or one deletes the file entirely while the other only edits code within it. In these or similar cases, running `git status` will spit out that you must fix conflicts and show where the conflict occurs. Once the conflict is discussed and fixed, committing should finalize it.