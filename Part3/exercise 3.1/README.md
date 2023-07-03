## Exercise 3.1: Your pipeline

Set up similar deployment pipeline (or the "first half") using GitHub Actions that was just described. 
Ensure that a new image gets pushed to Docker Hub every time you push the code to GitHub (you may eg. change the message the app shows).

Note that there is importat change that you should make to the above workflow configuration, the branch should be named main

Run your image locally in detached mode, and ensure that you can access it with the browser.

Set up and run the Watchtower just as described above.

You might do these two in a single step in a shared Docker Compose file.

Now your deployment pipeline is set up! Ensure that it works:

- make a change to your code

- commit and push the changes to GitHub

- wait for some time (the time it takes for GitHub Action to build and push the image plus the Watchtower poll interval)

- reload the browser to ensure that Watchtower has started the new version (that is, your changes are visible)

Submit a link to the repository with the config: ![link](https://github.com/SangTheInnovator/express-app-CI)
