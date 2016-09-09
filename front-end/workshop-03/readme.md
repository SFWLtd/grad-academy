#Front-end workshop 3 (more CSS)
## Intro
Clint would like his HTML page to look even more pretty
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-03 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-03
npm install
npm start
```
* Browse to http://localhost:5003

## Workshop tasks
Time to do some more advanced CSS. Clint would like:

1. The page header and second header to both have a solid bottom border, colored #222, width 2 pixels. (Hint: use multiple selectors to avoid duplicate code)
1. The second header to have a box shadow. Try 0 horizontal, 5px vertical, 10px blur, color #888
1. The images to have a full solid border, colored #222, width 2 pixels
1. The images to have curved corners, radius 5 pixels
1. The images to change their border color to #1abc9c when hovered over
1. The border color to change slowly. (Hint: look at CSS transitions)
1. The "And this text" paragraph to be colored #c0392b. The "Somebody else added this text" should remain black. Do this without changing the HTML! (Hint: CSS descendant selector)
1. To change the main header to have a gradient background from bottom left to top right. In SFW style, the bottom left color should be #00a499 and the top right #00a9e0.
1. Clint loves gradients! He would also like the body background to be a gradient from bottom left to top right. The bottom left color should be #ccc and the top right #eee. (Note you'll also want to make the body's height equal to 100% of the browser window for this to look OK. `100vh` should do it!)