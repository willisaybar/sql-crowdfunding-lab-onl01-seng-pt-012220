# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

# SELECT
# FROM
# JOIN
#   ON
# WHERE
# GROUP BY
# HAVING
# ORDER BY
# LIMIT

# CREATE TABLE projects (
#   id INTEGER PRIMARY KEY,
#   title TEXT,
#   category TEXT,
#   funding_goal REAL,
#   start_date DATE,
#   end_date DATE
# );
#
# CREATE TABLE users (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   age INTEGER
# );

# CREATE TABLE pledges (
#   id INTEGER PRIMARY KEY,
#   amount REAL,
#   user_id INTEGER,
#   project_id INTEGER
# );

#titles of all projects
#plegde amounts for those projects
#alphabetize them by title
def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT Projects.title, SUM(Pledges.amount)
    FROM projects
    LEFT OUTER JOIN pledges
    ON projects.id = pledges.project_id
    GROUP BY title
  "
  # "SELECT Projects.title, Pledges.amount
  #   FROM projects
  #   ORDER BY title ASC
  # "

end

#select user name and age
#select plegde amont
#all pledges
#alphabetize by name
def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT Users.name, Users.age, SUM(Pledges.amount)
    FROM Users
    LEFT OUTER JOIN pledges
    ON users.id = pledges.user_id
    GROUP BY Users.name"
end

#select title
#amount over goal
#all projects that have met their goal
#look at pledges
#find projects that have been fully funded
def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  # "SELECT Projects.title, Pledges.amount
  #   FROM projects
  #   LEFT OUTER JOIN pledges
  #   ON projects.id = pledges.project_id
  #   GROUP BY pledges.amount
  #   HAVING funding_goal <= pledges.amount"
    "SELECT Projects.title, pledges.amount
      AS amount_left
      FROM projects
      JOIN pledges
      ON projects.id = pledges.project_id
      GROUP BY projects.title
      HAVING projects.funding_goal >= SUM(amount_left)"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "Write your SQL query Here"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "Write your SQL query Here"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Write your SQL query Here"
end
