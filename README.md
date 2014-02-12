# Queen: Control Center for Hatchery
-------------------------------------

### Description
Coffeescript + React = Awesome. Here's a sample to get you started, 

#### What's In It

Coffeescript 
React.js -> views 
Require.js -> AMD modules
Grunt -> task runners
less -> css
Flask -> web server

Making it a Flask blueprint is just to make it easy to drop into a flask app. Just change the script/style tags 
register this blueprint in your flask app, mounted at UI. Read more about [Blueprints](http://flask.pocoo.org/docs/blueprints/)

### Get Started

#### Depends
    npm install -g coffeescript
    npm install -g grunt-cli

#### Build
    npm install
    grunt build

#### Watch for coffeescript/react/less changes
    grunt watch

### Info

#### React-coffeescript relationship
In order to build React components in coffeescript with jsx, you need to compile `.coffee` to `.jsx` and then to `.js`
the `grunt build` command will compile your static/coffee folder to `.jsx` and compile that to `.js`. It will also compile your `.less` as well

#### Gotchas
React makes use of jsx, which has html/xml like tags. This will break the coffeescript compiler. Theres two solutions to writing react components in coffeescript. 
##### 1) Escape jsx (ehh, but looks cool)
    `(<HelloMessage name=Michael />)`
##### 2) Write non-jsx React DOM components (better)
    (HelloMessage {name:Michael}, []) 

With the latter, you can compile straight to javascript
