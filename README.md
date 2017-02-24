# PetMatcher

# About the project

A command line application for choosing a pet. The application works through a set of five questions that the user answering must answer. PetMatcher delivers an outcome of either dog, cat or fish depending on their answers. 

# Installation instructions 

Dependencies: 

None 

Required gems:

For Mac OS: 

rmagick (version 6): 
-	Install:

```$ brew install imagemagick@6```

``$ brew link --force imagemagick@6``

``$ gem install rmagick``

For Mac OS and Linux: 

catpix (renders image in the terminal) 
-	Install: 
```gem install catpix```

colorize (ruby string class extension to add text colour) 
-	Install: 
```gem install colorize```

# Usage instructions 

To run in terminal:

```$ ruby petmatcher.rb``` 
(Answer five questions based on preference: yes or no) 

# Design journey/process
-	Brainstorming 
-	Trello – identifying: 
•	User stories 
•	Developer Stories
•	Classes
•	Input Questions
•	Objects 
-	Designing questions (5 questions with yes or no outcome)
-	Deciding on outcomes 
-	Designing flow chart of outcomes
•	Logic of the questions and outcomes (1. yes, 2. yes, 3. yes, 4. yes, 5. no etc.) 
-	Deciding on value outcomes (0 = animal_x; 10 = animal_y; 20 = animal_z)
-	Creating code and three classes needed for the five questions
-	Creating the answers through conditionals (if, elsif, else) 
-	Installing and requiring 2 gems (catpix, colorize) 
-	Using catpix, selecting 3 images of the respective animals to use in the terminal 
-	Adding voice with command terminal feature in Ruby document 
-	Requiring the answers Ruby code document in the questions Ruby code document 


# Documentation of how we designed PetMatcher

Wanted to have a questionnaire style of app that would assign a user one of the 3 outputs (dog, cat, fish), based on their answers. 

1. Brainstormed using Trello 

2. Understood the logic of the first set of questions and outcomes 

3. Refined our questions and outcomes (removed reptiles and birds from the outcomes). Refocused the questions (removed repetitive questions). 

4. Developed Classes (Score, Questioner, Animal)

5. Used a set of conditions (if, elsif, else) to develop question and assign responses to potential outcomes. 

6. Used hashes to define our outcome. 

7. ‘Required’ outcomes document in questions document.

8. Unit tested the classes. 

 
