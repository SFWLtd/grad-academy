#Front-end workshop 7 (SASS)
## Intro
CSS sucks. SASS is awesome. Let's learn some SASS.
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-7 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-7
npm install
npm start
```
* Browse to http://localhost:5007

## Workshop tasks
SASS is a CSS pre-processor that adds a lot of nice extras to CSS. Read up about all the cool things it can do here: http://sass-lang.com/guide. Normally you'd need to set up a task somewhere in your build pipeline to compile all of your SASS into CSS files. Thanks to the framework we're using in this example, this is done on the fly. All of the CSS has been moved to site.scss, and we can start modifying it straight away to take advantage of some of the SASS features.

1. Let's pull out all of the color definitions up to the top of the file. We'll need definitions for:
  1. `$sfw-teal` (#00a499)
  1. `$sfw-blue` (#00a9e0)
  1. `$light-grey` (#ecf0f1)
  1. `$dark-red` (#c0392b)
1. Now replace occurrences of these colors throughout the stylesheet with their variables
1. What about the slightly darker version of `$sfw-teal` used on the button hover? Rather than use another variable, let's replace it with SASS' `darken` function. Darken `$sfw-teal` by 10% to get the right color
1. Now let's tidy up the descendent selector, by nesting it (`.added-by-somebody-else{p{}}`)
1. And let's tidy up the hover selectors, by nesting them (`&:hover{}`)
1. Now let's tidy up the gradient backgrounds with their fallbacks, using mixins:
  1. Define a mixin at the top of our .scss called `gradient-background` that takes two parameters `$color1` and `$color2`
  1. Add a line to the mixin that sets `background` equal to `$color1`
  1. Add a line beneath this that sets `background` equal to a gradient from `$color1` to `$color2`
  1. Replace occurrences of these two lines with our mixin