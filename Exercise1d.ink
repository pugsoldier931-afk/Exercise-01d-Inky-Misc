/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach.  

It is { advance_time() }

+ [Stroll down the beach] -> beach2
+ [go to the shop] -> shop
+ [Wait] -> seashore
-> DONE

== beach2 ==
This is further down the beach.
It is {advance_time() }
* {time== 1} [pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
    
-> beach2

== shop ==
You go to the shop.
there is food. 
+ [purchase with shells] -> quip
+ [ steal food] -> thief
+ [Stroll back up the beach] -> seashore
-> DONE
== thief == 
"THIEF!!!!" screamed the shopkeeper
you are arrested
-> DONE
== quip == 
are you dumb thats not real money.
-> shop
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    } 
    
        
    ~ return tim
    
    
