; Author: Elijah Arenas
; Title: Lab06
; School: Central New Mexico Community College
; Course Number: CSCI 1108, Section 101
; Course Title: CS for All: Introduction to Computer Modeling
; Semester: Spring 2022
; Instructor: Glenn Eguchi

extensions [
  bitmap
]
globals [
  steps
]

to setup
  ; you do not need to change this
  clear-all
  set steps 0
  create-turtles 1
  ask turtle 0 [
    set color white
    set heading 0
  ]
end

; RULES
; =====
; 1) Your turtle may only move 1 step at a time:
;        forward 1 ; OK
;        forward 2 ; NO MOVING MORE THAN 1 STEP
;        setxy 5 5 ; NO TELEPORTING
;
; 2) Every time your turtle takes a step, increase the steps global variable by 1:
;
;        forward 1
;        set steps steps + 1
;
;    Included in this file are procedures step-forward-1 and step-backward-1 that
;    do both of these steps. Feel free to call these if you wish.
;
; 3) To eat the grass, you may do:
;        set pcolor black
;
;    Included in this file is the procedure eat-patch which just sets the pcolor to black.
;    Feel free to call this if you wish.
;
; 4) Your turtle may only change the color of the patch it is currently on:
;        set pcolor black ; OK
;        ask patch-ahead 1 [ set pcolor black ] ; NO EATING PATCHES THE TURTLE ISNT ON
;        ask patches [ set pcolor black ] ; NO EATING PATCHES THE TURTLE ISNT ON
;
; IMPORTANT NOTES
; ================
;
; 1) Since the agent for this button is set to turtles, you do not need to wrap your instructions
; in an ask turtles [ ... ]. You can just put the turtle directions without an ask:
;
;     to go-algorithm-1
;         right 360 ; NOTICE NO ask turtles [ ]
;     end
;
; 2) Its ok to use either the same algorithm for all the patterns,
;    or different algorithms for each. Your choice.
;
; TIP: Its often a good idea to start out with something inefficient that works, then gradually improve it.

; USING A WHILE LOOP (conditional)
to go-demo-1
  ; You are not required to fill this procedure in, but if you follow the older video they use this.
end

; USING A REPEAT LOOP (counting)
to go-demo-2
  ; You are not required to fill this procedure in, but if you follow the older video they use this.
end


to go-algorithm-1
  while [any? patches with [pcolor = green]][
    if (pcolor = green)[
      set pcolor black
      forward 1
      set steps steps + 1
    ]
    if ([pcolor] of patch-ahead 1 != green)[
      left 90
      forward 1
      set steps steps + 1
    ]
  ]
end


to go-algorithm-2
  ; Fill this in with code that will make the turtle eat all the green patches in pattern 2.
  ;
  ; READ THE RULES AND NOTES SECTION FIRST
end

to go-algorithm-3
  ; Fill this in with code that will make the turtle eat all the green patches in pattern 3.
  ;
  ; READ THE RULES AND NOTES SECTION FIRST
end

to go-extra-credit-algorithm
  ; BONUS: Fill this in with code that will make the turtle eat all the green patches in the extra credit pattern.
  ;
  ; READ THE RULES AND NOTES SECTION FIRST
end

to go-extra-extra-credit-algorithm
  ; BONUS:
  ;
  ; Fill this in with code that will make the turtle eat all the green patches in patterns 1, 2, 3,
  ; AND the extra credit pattern.
  ;
  ; READ THE RULES AND NOTES SECTION FIRST
end

; Feel free to call these procedures.

to step-forward-1
  forward 1
  set steps steps + 1
end

to step-back-1
  back 1
  set steps steps + 1
end

to eat-patch
  set pcolor black
end

; DO NOT CHANGE ANYTHING BELOW THIS LINE

to import-algorithm-demo
  bitmap:copy-to-pcolors bitmap:import "algorithmDemo.png" true
end

to import-algorithm-1
  bitmap:copy-to-pcolors bitmap:import "algorithm1.png" true
end

to import-algorithm-2
  bitmap:copy-to-pcolors bitmap:import "algorithm2.png" true
end

to import-algorithm-3
  bitmap:copy-to-pcolors bitmap:import "algorithm3.png" true
end

to import-extra-credit-algorithm
  bitmap:copy-to-pcolors bitmap:import "ECalgorithm.png" true
end




******************************************************




WHAT IS IT?
This is a program that provides different algorithims to "eat" all green squares in an image.
HOW IT WORKS
The program works different ways in different algorithims, but one common theme across all algorithims was to check for green patches, and if there is a green patch, "eat" it, and move forward.
HOW TO USE IT
First, press the SetUp button to clear the screen and ticks, as well as crete the turtle. Press the import algorithim x,y,z button to import the image that your turtle will eat, and then press the coresponding go-algorithim(x,y,z).
THINGS TO NOTICE
Notice the number of steps that are taken to clear the image, as shown on the counter on the right side of the model.
THINGS TO TRY
Try creating 1 universal algorithim that will work for all of the images. Try adding more images or creating new algorithims to solve the same problems.
EXTENDING THE MODEL
Extend the model by adding more turtles to complete multiple differnt algorithims, or the same algorithim, at the same time to eat an image.
NETLOGO FEATURES
An interesting netlogo feature is you can use the command center to color one of the patches green, which would completely throw off most algorithims.
RELATED MODELS
I am not aware of any related models, but I am sure that some exist.
CREDITS AND REFERENCES
Authored by Elijah Arenas
