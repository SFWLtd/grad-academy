#Front-end workshop 9 (Bootstrap)
## Intro
Using Bootstrap to create pretty, responsive sites.
## Initial set-up
* Open C:\\[grad-academy-repo]\front-end\workshop-09 in Visual Studio Code  
* Open a command prompt, and run the following commands:
```
cd C:\[grad-academy-repo]\front-end\workshop-09
npm install
npm start
```
* Browse to http://localhost:5009

## Workshop tasks
Clint has developed a form for his website. Let's browse to `http://localhost:5009` to see what it looks like.

Well done Clint, that looks terrible! Instead of spending hours defining custom styles to fix it up, we can use Twitter's Bootstrap (http://getbootstrap.com/) to do a lot of the heavy lifting. Let's jump right in.

## Installing Bootstrap
On a more traditional site, you would probably just download the Bootstrap components (JS and CSS), and reference them directly in your page.

As we're using webpack (running on node) for these tutorials, we can use the node package manager (npm) to make life easier. To install Bootstrap:

* Open command prompt
* Kill the app (ctrl+c)
* `npm install Bootstrap`
=======
1. Go back to command prompt
1. Kill the app (ctrl+c)
1. Run `npm install bootstrap --save`
1. Add the following two lines to main.js
  1. `require('bootstrap');`
  1. `require('bootstrap/dist/css/bootstrap.css');`
1. Run `npm start`

## Using Bootstrap
Now that we're using Bootstrap on our page, the form elements will have immediately picked up some styles. However, there's one thing we need to do before we can start utilising Bootstrap fully:

1. Open `index.html`, and change the `<div>` with class `content` to class `container`. This is the default Bootstrap container that must wrap all of your content.

Now it's time to make the form look pretty!

### Replacing the text elements
Replace the "First name" form element and label with Bootstrap HTML. You'll want to:

1. Add a `<div>` with class `form-group` wrapping the element and label.
1. Add a proper HTML `<label>` instead of just some text.
1. Add class `form-control` to the `<input>`

Important things to note:

1. Don't use line breaks (`<br>`), just wrap your label and element together in a `<div>` with Bootstrap class `form-group`
1. Use a proper `<label>` element, with the `for` attribute set to the `id` of the element that the label references. This allows the label to be clickable
1. Give `<input>` elements the Bootstrap class `form-control`
1. Give `<input>` elements placeholder text where appropriate

Now do the same for the "Last name" form element

### Replacing the select element
Replace the `<select>` element with Bootstrap HTML.

### Replacing the textarea element
Replace the `<textarea>` element with Bootstrap HTML.

### Bootstrap buttons
Finally, apply some Bootstrap styles to the submit button.

### Grids and columns
After you've Bootstrap-ified the page, go back to it play around with the browser width. You'll see that Bootstrap is fully responsive, and re-sizes accordingly. Let's take this one step further by adding a Bootstrap grid with columns:

1. Our grid will only have 1 row, so wrap all of the form inputs inside a single `<div>` with class `row`
1. Split the inputs into two columns. We want it to display as two columns on devices sized `medium` and larger. (Hint: go here for help http://v4-alpha.getbootstrap.com/layout/grid/)

When this is done, you'll find that the page displays in two columns when the browser is wide, but collapses into a single column when narrow. Neat!