; Author: Elijah Arenas
; Title: Lab06
; School: Central New Mexico Community College
; Course Number: CSCI 1108, Section 101
; Course Title: CS for All: Introduction to Computer Modeling
; Semester: Spring 2022
; Instructor: Glenn Eguchi

turtles-own[
  turtles-with-my-color
]

to setup
  clear-all
  reset-ticks
  create-turtles 2000
  ask turtles [
    setxy random-xcor random-ycor
  ]
end

to go-inefficient
  ask turtles[
    let my-color color
    set turtles-with-my-color other turtles with [color = my-color]
    let selected-turtle one-of turtles-with-my-color
    set heading (towards selected-turtle)
    forward 1
    
  ]
  tick
  
end

to go-efficient
end
