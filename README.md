# Task List

We are going to use our new found knowledge of databases and web development to create a task list, powered by Sinatra and SQLite. This project will enable us to keep track of and persist, add, edit and remove tasks.

## Baseline
Once you've achieved this baseline, take a walk around the room and see if you can answer questions or help other teams.

This project...

- require SQLite to be installed on everyone's computers: `$ brew install sqlite`
- needs a Gemfile so others are aware of its dependencies
- needs a config.ru file; look at the structure in the SinatraSite project for an example
- needs a database schema suitable for storing and organizing "tasks"
- needs a database setup script that creates the necessary table(s) for the project.
- should be started with rackup on the command line

## Breakfast

- Create a class that will keep track of the low-level database interaction. The responsibility of this class is to create a database connection and....

- Create a class that will inherit behavior from the database interaction class that will be responsible for all of the task record persistence. This will include inserting new tasks into the database.

  Each task record will include:
    - Self-incrementing identifier
    - Name (required)
    - Description (optional)
    - Completed date (optional)

- The home page (route `/`) of your Sinatra site should show the list of all of the tasks currently in the database.

- Be able to create a new task:
  - The home page should contain a link to Add a new task. This will give the user a form to fill out with the appropriate task fields.
  - After the new task is added, the site should take the user back to the home page which displays the full list of tasks. The new task that was just added should be included in the full list of tasks.

## Lunch
- Add the ability for the user to mark a task complete
  - Update the list of tasks on the home page to indicate which tasks are complete
  - Update the database interaction class to update a task's completed date
  - Use a form with checkboxes or radio buttons to allow a user to mark a task complete

- Add the ability for the user to delete an existing task, whether it is complete or not
  - Update the list of tasks on the home page to include a delete link
  - Before the system deletes the task, ask the user for confirmation
  - Update your database interaction class to delete from the database

## Dinner
- Add the ability for the user to edit the task
  - Re-use the form that was used for the Add task functionality
  - Update the list of tasks on the home page to include an edit link for each task
  - This includes updating your database interaction class to update the database
