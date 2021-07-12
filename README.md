## JPA CRUD Project

### Overview
This program presents a web page to the user, allowing them to search through a SQL database of Pokemon by ID# or Name, providing a description page that the user can edit or delete. The user can also choose to create a new Pokemon entry in the listing as well. The focus of this project was familiarization with the Java Persistence API, as well as continuing to build upon knowledge of Gradle, Spring Models, Accessing data in a SQL database using data accessor objects, building dynamic webpages, and OOP fundamentals.


### Technologies Used
* Java
* JPA
* MySQL
* Gradle
* Spring MVC
* Bootstrap
* JDBC
* DAO
* Classes
* Objects
* Interfaces
* Exception Handling


### How To
- When ran, the program will provide a webpage that the user can navigate and choose a search option
- Based on whether the user chooses to search based on the ID number or name, the program will request the appropriate search criteria from the SQL database through the backend Java program.
- The webpage will return a single result from the database matching the search, and the user can choose to edit or delete the entry that was returned
- The user can also choose to input a new entry, at which point, they will be presented with a form to add information about it. Once submitted, this Pokemon entry will be added to the database and will be available in search results.
- Once finished, the user can return to the home menu and continue their search.
- Voila, you're done!


### Lessons Learned

Each project has been a struggle, and this one was no exception. Starting out, JPA is huge step up from the last project which focused on JDBC and Spring. In fact, working on the interactions with the webpage and database might have been one of the easier parts of this project. Since JPA takes care of a lot of the legwork, it cuts down on the development time needed and allows more time to work on other areas and troubleshoot.

There were so many features I wanted to include in this, but not enough time to finish implementing them all. Listing all the available entries as a list, multiple images accompanying each entry, better background, different links available on the result and no result pages. It was really difficult deciding on what to work on and what to sacrifice. I realized I would get ahead and start working on extra features before having the requirements knocked out. I had to take a step back occasionally, and reel myself back in so I could stay focused on the end goal.

I still have more questions than answers after this project. What exactly is flush doing? How does @Autowired know how to handle the background operations? Is Post,Redirect,Get necessary with JPA or is it handled as well? Despite all these questions, this project really did illustrate just how useful JPA is in the development cycle and it will definitely remain an essential tool in the belt for future projects.
