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
Replace the "First name" form element and label with the following code:
```
<div class="form-group">
    <label for="first-name">First name</label>
    <input type="text" class="form-control" id="first-name" placeholder="Enter first name">
</div>
```
Important things to note:

1. Don't use line breaks (`<br>`), just wrap your label and element together in a `<div>` with Bootstrap class `form-group`
1. Use a proper `<label>` element, with the `for` attribute set to the `id` of the element that the label references. This allows the label to be clickable
1. Give `<input>` elements the Bootstrap class `form-control`
1. Give `<input>` elements placeholder text where appropriate

Now repeat this step for the "Last name" form element and label.

### Replacing the select element
Replace the `<select>` element and label with code like this:
```
<div class="form-group">
    <label for="animal-select">Favourite animal</label>
    <select class="form-control" id="animal-select">
        <option value="cat">Cat</option>
        <option value="dog">Dog</option>
        <option value="jellyfish">Jellyfish</option>
    </select>
</div>
```

### Replacing the textarea element
Replace the `<textarea>` element and label with code like this:
```
<div class="form-group">
    <label for="favourite-thing">What's your favourite thing about Clint?</label>
    <textarea class="form-control" rows="10" id="favourite-thing"></textarea>
</div>
```

### Bootstrap buttons
Finally, replace the `<input type="submit">` element with a proper HTML5 `<button>`, with the Bootstrap styles:

```
<button class="btn btn-primary" type="submit">Submit</button>
```