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

Hmm... not great! Instead of spending hours defining custom styles, we can use Twitter's Bootstrap (http://getbootstrap.com/) to do a lot of the heavy lifting. Let's jump right in.

## Installing Bootstrap
On a more traditional site, you would probably just download the Bootstrap components (JS and CSS), and reference them directly in your page. You then start applying Bootstrap classes to your HTML elements, and you're up and running

As we're using webpack (running on node) for these tutorials, we can use the node package manager (npm) to make life easier. To install Bootstrap:

* Open command prompt
* Kill the app (ctrl+c)
* `npm install Bootstrap`