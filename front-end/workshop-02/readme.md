#Front-end workshop 2 (CSS basics)
## Intro
Clint would like his HTML page to look prettier
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-02 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-02
npm install
npm start
```
* Browse to http://localhost:5002

## Workshop tasks
Before we can fulfill Clint's requests, we need to make sure our CSS file is referenced in the HTML page. Normally we'd manually insert a `<link href=".\src\css\site.css" ...>` in the `<head>` of the HTML. Thanks to the framework we're using in these examples, we can simply do the following:

1. Open `main.js`
1. Add `require('./src/css/site.css');`
1. Confirm it's worked (the page background should switch to grey, as defined in the CSS)

Clint would like you to:

1. Add a class to the header (`<h1 class="page-header">`). Add the following styles for `.page-header` in `site.css`:
  1. Background color: #2980b9
  1. Text color: white
  1. Padding: 30 pixels
1. Remove that annoying margin from the `<h1>`
1. Make the whole page use a slightly less terrible font (`font-family: sans-serif` should do the trick)
1. Give the `<h2>` the following styles:
  1. Background-color: #ecf0f1
  1. Text color: #222;
  1. Padding: 20 pixels for top/bottom, 30 pixels for left/right
  1. Margin: 0
1. Wrap the headers in their own `<div>`, and wrap the paragraph and image in another div. Give the second wrapper a class to indicate that it's the page content, and give this class 30 pixels of padding.
1. Add a second image just after the first, referencing `./src/img/pic2.jpg`
1. Make the two images the same height of 330px. (Hint: give them both the same CSS class, to avoid duplicating code)
1. Make the images sit next to each other. (Hint: use `display`, not `float`!)
1. Make the images sit in the middle of the page. (Hint: wrap them in a div, and style this wrapper)