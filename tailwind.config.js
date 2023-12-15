module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/view_components/**/*',
    './lookbook/previews/**/*_preview.rb',
    './lookbook/previews/**/*.html.erb',
  ],
  theme: {
    extend: {
      colors: {
        yellow: {
          basic: '#FFDE12',
        },
      },
    },
  },
}
