# Contribution Guide for Bharat Darshan
All the participants of 2022 Flutter Festival are welcome. The following guide will help you
get yourself started.

## Setting Up

## Project Structure
1. For the naming of directories, we use `Pascal_Snake_Case`,
   which is the unarguable standard to be enforced in the event
   repository. We shall stick to the same.
2. The repository structure will be something like this:
   ```
   -> Bharat Darshan
       |
       |
       |      |- README.md <- The main index file
       |      |- CONTRIBUTING.md <- This file
       |      |- android/
       |      |    |- app/
       |      |    |        |- files
       |      |    |        |   ^- The content goes here
       |      |    |        |- ...
       |      |    |- gradle/
       |      |    |        |- wrapper/
       |      |    |                       |- ...
       |      |    |- build.gradle
       |      |    |        |- ...
       |      |    |        
       |      |    |- ...
       |      |- ...
   ```

## Issues
- Each issue will uniquely identify a single topic/sub-topic.
- Although more issues will be generated, if you find an issue having been assigned to too many contributors already, we recommend you to:
  1. Look for other issues.
  2. Request contribution to the same issue for a different format.
  3. Create your own issue and request the tag from us.

### For creation of issues :
* A well-defined (not necessarily long) **description of the topic** in focus must be provided.
* Your issue can be **closed** if the issue you created already exists. Use the search functionality on Github Issues.
* Once you have decided the problem you want to work upon, shoot an issue and patiently wait for our project maintainer to have a look over it and assign it to you.
* You can **ONLY** work on the issues that have been **assigned** to you.

## Pull Requests
You may create PRs for existing issues within the repository, keeping
the following points in mind:
- The title of the PR must be same as the title of the issue.
- The PR must mention which issue(s) is/are being resolved, with
  the `resolves`, `closes`, or `fixes` keyword (case-insensitive) preceding the
  issue number prefixed with a `#`.
  E. g. Assuming the issue number is 3, any of the following works:
  - `Resolves #3`
  - `Closes #3`
  - `Fixes #3`
- A well-defined (not necessarily long) description of the
  updates made must be provided.
- Citing references and adding graphics is encouraged.

## Ending
The instructions shall be made clearer in our team sessions, which shall be held regularly.

The moderators shall be available for clearing your doubts, helping you out,
and even teaching the desired concepts when needed, to get you
working and developing with full potential.

Stay in touch and keep the team posted. It is nice to stay
up-to-date with the progress. Best Wishes.
