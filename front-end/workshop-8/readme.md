#Front-end workshop 8 (Third-party JS libraries)
## Intro
Using third-party JS libraries.
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-8 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-8
npm install
npm start
```
* Browse to http://localhost:5008

## Workshop tasks
Clint wants an image carousel. Instead of re-inventing the wheel, let's use a third-party JS library to do the hard work for us. You can search and find any third-party JS carousel, but this workshop will use slick (http://kenwheeler.github.io/slick/).

### Installing the library
On a more traditional site, you would probably just download the .js library (along with any needed .css files), and reference them directly into your page. You would then be able to use the new JS methods in your custom JS code.  
As we're using webpack (running on node) for these tutorials, we can use the node package manager (npm) to make life easier. To install slick:

1. Browse to npm (https://www.npmjs.com/)
1. Find the library we want (slick)
1. Locate the install command (`npm install slick-carousel`)
1. In our command prompt, stop the site (`ctrl + c`), then run the command `npm install slick-carousel --save`. (Save updates the `package.json`, so nobody will need to explicitly run `npm install slick` in the future)
1. Check that there is now a folder called `slick-carousel` inside `node_modules`
1. Start the site up again, with `npm start`

### Using the library
Now that it's installed, time to actually use it:

1. Open "src\js\main.js", and add the following three lines:
  1. `require('./node_modules/slick-carousel/slick/slick.js');`
  1. `require('./node_modules/slick-carousel/slick/slick.css');`
  1. `require('./node_modules/slick-carousel/slick/slick-theme.css');`
1. Now open site.js. We want to call the method `.slick()` on our div with class `image-wrapper`, after the page has finished loading. To do this:
  1. Use jQuery's shorthand of `$(function() { });` to define a function that will run after the document is ready
  1. Add `$('.image-wrapper').slick();` inside this function
1. Reading the slick documentation, we'll see that it expects all children of the parent (`image-wrapper`) to be `<div>`s. Simply wrap both `<img>` elements in `<div>` tags.
1. Load the page and enjoy

### Tidying it up
Whilst it works, it looks a bit strange. Let's tidy it up a bit:

1. Re-name our `image-wrapper` class to `image-carousel`, to better represent what it is. Don't forget to change what we're calling `slick()` against!
1. Remove `text-align: center` from `image-wrapper`
1. Wrap `image-carousel` in another div, with class `image-carousel-wrapper`
1. Add `text-align: center` to `image-carousel-wrapper`
1. Add `width: 504px` and `display: inline-block` to `image-carousel-wrapper image-carousel`. (Use SASS nesting!)
1. Change the old `togglePicturesVisibility()` function so that it toggles the entire carousel, rather than toggling each image individually
1. Add any options to `slick()` that you like the sound of. `dots: true` and `fade: true` are cool