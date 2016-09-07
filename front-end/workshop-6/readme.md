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
To make a website accessible usually just means following a set of best practices when creating the HTML for each page. If the page you are making is externally accessible, then you can just run it straight through an online tool, such as:

http://achecker.ca/checker/index.php

However, if your site is a local dev environment, then these checkers won't be able to access it. In these cases we usually just upload the source of a page:

1.  Open the page in a browser
2.  View source
3.  Paste the entire source into the accessibility checker, in the "Paste HTML markup" tab

You'll see it only throws up 2 errors. Our images must have `alt` attributes! Remedy this by editing `index.html` appropriately. Once the accessibility checker shows 0 "known problems", we are good to go.