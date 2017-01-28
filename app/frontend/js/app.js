// Turbolinks - To disable remove the next two lines.
// https://github.com/turbolinks/turbolinks
//const Turbolinks = require("turbolinks");
//Turbolinks.start();

// Require https://github.com/rails/jquery-ujs
//require("jquery-ujs");


import Typeahead from './components/Typeahead.vue'
// Import this if you wish to use CSS in your .vue files.
// See section below for more information.
import "vueify/lib/insert-css";

// Alternative: Full path
// import HelloWorld from "frontend/js/hello"
Vue.use(VueResource)

const App = {
  init() {
    new Vue({
        el: '#root',
        components: {
          Typeahead
        }
      })
  }
};

module.exports = App;
