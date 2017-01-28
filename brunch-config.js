module.exports = {
  files: {
    javascripts: {
      joinTo: {
        'app.js': /^app\/frontend\/js\//,
        'vendor.js': /^(?!app\/frontend\/js)/
      }
    },
    stylesheets: {
      joinTo: 'app.css'
    },
    templates: {
      joinTo: "app.js"
    }
  },

  plugins: {
    babel: {
      presets: ['es2015']
    },
  },

  paths: {
    watched: [
      "app/frontend",
    ],

    public: "public/assets"
  },

  conventions: {
     assets: /^(app\/frontend\/images)/
  },

  npm: {
    globals: {
      $: "jquery",
      jQuery: "jquery",
      breakfast: "breakfast-rails",
      Vue: 'vue/dist/vue.common.js',
      VueResource: 'vue-resource/dist/vue-resource.common.js',
      VueTypeahead: 'vue-typeahead/dist/vue-typeahead.common.js'
    }
  }
};
