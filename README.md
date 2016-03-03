# About Plot Point O API

A Rails API developed by Jen Weber for week 6/12 of the General Assembly Web Development Immersive in Boston, MA

This API works together with the [Plot Point O Front End](https://github.com/jenweber/plot-point-o-front-end). See the README to learn more about the inspiration for this project.

Visit [Plot Point O](http://jenweber.github.io/plot-point-o-front-end/) on GitHub Pages for the deployed blog

# Technical Approach

This API was created in part by using Rails' powerful scaffolding feature. Authentication functionality was provided in an api template, so that all CRUD actions could be restricted, or some actions could be designated Open Read, allowing guests to view content but not change it. This Open Read controller allowed for me to build a blog site where guests could view posts but not change any content (nor register themselves as users).

# Planning
[Initial Database Diagram](https://drive.google.com/file/d/0BxL5EMSDOzzwSVNmNk5NSXVrdEk/view?usp=sharing) and
[Updated Database Diagram](https://drive.google.com/file/d/0BxL5EMSDOzzwMTZaVnhINHlNLXc/view?usp=sharing)

I began my project by creating some basic one to many relationships (one game has many blog posts). Each game has two blog posts- one aimed at an audience who is wondering if a game is worth their time, and another aimed at players who finished the game but wnat to read plot analysis. These two types of blog posts each live on their own tables. Since they share the game in common, later functionality could be based on this relationship.

I first tested my api by writing curl scripts for all CRUD functions, on all tables. After that, I moved on to ajax requests, and brought them to completion before investing time on the front end functionality.

After my CRUD actions were working in Ajax and I had a decent front end, I added another relationship, users have many posts. Although there is currently just a global admin, this step would be necessary to add co-authors or contributers to the site, display their author information on the posts, and allow them to edit the content themselves.

# Challenges
Heading into this project, I did not feel very confident about how I should edit the Rails-generated files to accommodate the special functions of my project. However, as I worked through it one step at a time, I realized that I knew a lot more than I was giving myself credit for. Documentation that was a mystery the week prior suddenly became very clear and helpful.

The most significant debugging happened on the front end ajax requests. First, I found it challenging to properly format an ajax request that did not use form data. Now that I have a better idea of the syntax and the options, I should have no problem with this in future projects. After deployment, all authenticated features broke, but this was simply due to a missing s in https.

Overall, I think this project ventured out of beginners-territory in terms of the availability of information to help debug. Many, many more people have asked "why won't my click handler work?" than those who say "I'm getting this 401 code back from the server under xyz conditons," so I had to fend for myself more with documentation and error messages, rather than just finding a quick fix on StackOverflow. The most valuable new debugging skill certainly became the ability to read error messages from the server.

# Future Goals
With my new understanding, I would like to take another look at writing feature and unit tests for the back end. Based on the amount of time I spent debugging and reading unwieldy error messages, I can definitely see the value, and I think that working on the project itself has given me more of the skills I would need in order to write spec.
