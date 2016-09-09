#Front-end workshop 6 (Accessibility)
## Intro
You can thank Richard Press for this one. Everything we make should aim to be as accessible as possible.
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-6 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-6
npm install
npm start
```
* Browse to http://localhost:5006

## Workshop tasks
### Accesibility
To make a website accessible usually just means following a set of best practices when creating the HTML for each page. If the page you are making is externally accessible, then you can just run it straight through an online tool, such as:

http://achecker.ca/checker/index.php

However, if your site is a local dev environment, then these checkers won't be able to access it. In these cases we usually just upload the source of a page:

1. Open the page in a browser
1. View source
1. Paste the entire source into the accessibility checker, in the "Paste HTML markup" tab

You'll see it only throws up 2 errors. Our images must have `alt` attributes! Remedy this by editing `index.html` appropriately. Once the accessibility checker shows 0 "known problems", we are good to go.

### Cross-browser support
The other important thing to consider when making a website is cross-browser support. There are some powerful tools out there to make this job easier for developers (i.e. https://www.browsersync.io/). Although for most projects you'll find you just need to manually test it on a bunch of different browsers.

In this case, Clint has noticed that the site doesn't quite look right in IE9. Let's have a look:

1. Open IE, and browse to http://localhost:5006
1. Press F12, and go to the emulation tab
1. Change the document mode to IE9

What happened to our colors? IE9 has no support for gradients :( Let's fix this by adding some fallback `background` styles above the gradient styles. Take the first color from each gradient as the fallback.