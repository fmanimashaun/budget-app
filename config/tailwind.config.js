const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        'light': ['Proxima Nova Light', ...defaultTheme.fontFamily.sans],
        'bold': ['Proxima Nova Bold', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'primary': '#3778c2',
        'secondary': '#5fb523',
        'accent': {
          '100': '#989da3',
          '200': '#86898e',
          '300': '#545c67',
          '400': '#434b54',
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
