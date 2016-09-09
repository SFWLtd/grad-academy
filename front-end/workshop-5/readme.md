#Front-end workshop 5 (jQuery)
## Intro
Using jQuery to make our lives easier
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-5 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-5
npm install
npm start
```
* Browse to http://localhost:5005

## Workshop tasks
Using plain JavaScript to manipulate the HTML and DOM elements is somewhat clunky, and can get very messy very quickly. To make our lives easier, we can use jQuery. jQuery has already been installed into this project, so we can start using it straight away. Let's replace the JavaScript we wrote in the previous workshop with some neater jQuery:

1. Look up jQuery's `$('.className')`, `.each()`, and `.toggle()` functions. You should be able to replace the entire contents of the method with a line just 21 characters long

Clint has a few more requirements:

1. Clint would like the pictures to fade in and out, rather than instantaneously appear and disappear. Try putting a duration into the jQuery `.toggle()` function
1. We don't want the images to change in height whilst they fade in/out. Try `fadeToggle()`
1. Click the button multiple times in succession. You'll see that jQuery queues the animations on top of each other. Clint doesn't want this, he'd prefer it to always jump straight to the last animation. (Hint: jQuery's `stop()` function)
1. Clint now has a strange requirement that the toggle animation must wait 100ms before starting.
1. Clint would like the text on the button to read "Hide pictures" when the pictures are visible, and "Show pictures" when the pictures are hidden. The text should only update when the fade animation has completed.
1. Clint wants the button to look nicer. Time to flex those CSS skills!
  1. Move the button to the center of the screen
  1. Add a margin around the button
  1. Add some padding to the button
  1. Make the font in the button bigger
  1. Make the button have a background color of your choice
  1. Make the button change to a different flat background color on hover
  1. Have the background color change happen gradually
  1. Have the cursor become a hand (`pointer`) when hovered over
  1. Make any other changes you want