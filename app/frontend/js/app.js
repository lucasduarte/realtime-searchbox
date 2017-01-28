// Turbolinks - To disable remove the next two lines.
// https://github.com/turbolinks/turbolinks
//const Turbolinks = require("turbolinks");
//Turbolinks.start();

// Require https://github.com/rails/jquery-ujs
require("jquery-ujs");


import Hello from './components/Hello';
// Import this if you wish to use CSS in your .vue files.
// See section below for more information.
import "vueify/lib/insert-css";

// Alternative: Full path
// import HelloWorld from "frontend/js/hello"

const App = {
  init() {
    new Vue({
        el: '#root',
        components: {
          'hello': Hello
        }
      })
  }
};

module.exports = App;
