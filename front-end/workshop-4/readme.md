#Front-end workshop 4 (JavaScript basics)
## Intro
Clint wants to add some JavaScript to his page
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-4 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-4
npm install
npm start
```
* Browse to http://localhost:5004

## Workshop tasks
Before we can fulfill Clint's requests, we need to make sure our JS file is referenced in the HTML page. Normally we'd manually insert a `<script src=".\src\js\site.js" ...>` in the `<head>` of the HTML. Thanks to the framework we're using in these examples, we can simply do the following:

1. Open `main.js`
2. Add `require('./src/js/site.js');`

Now Clint would like a button that, when pressed, toggles the visibility of the dog picture. In order to achieve that, we'll need a few things:

1. A button (`<button>`) just above the images. Give it some text, and also a unique `id` like `hide-picture-button`
2. A new JavaScript function in `site.js`, called `toggleDogVisibility()`. This function should:
  1. Get the dog `<img>` using `document.getElementById`
  2. Check the visbility of the dog image, using `var isVisible = element.offsetWidth > 0 || element.offsetHeight > 0`
  3. If visible, then hide the image (with `style.display = 'none'`)
  4. If invisible, then show the image (with `style.display = 'inline-block'`)
3. Now we need to hook this function up to the `onclick` event of our new button. We can do this with `document.getElementById('hide-picture-button').onclick = toggleDogVisibility;`

Clint now wants a button that, when pressed, toggles the visibility of both the dog and the cat pictures. This will need a few modifications of `site.js`:

1. We're going to change the contents of `toggleDogVisibility()`. First we should rename the function, as we're changing what it does. Something like `togglePicturesVisibility()` should do.
2. Instead of finding the single dog element by `id`, instead let's get both image elements at once by using their class name. (Hint: `getElementsByClassName('image')`)
3. Set up a `for` loop to run the same code as before against each picture element (hiding if visible, showing if invisible). A `for` loop is easier than a `foreach` here, as  `getElementsByClassName` does not return an array
4. Don't forget to re-hook the function into the `onclick` event of the button, as the function name has changed
