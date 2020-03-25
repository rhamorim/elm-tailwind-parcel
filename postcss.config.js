const purgecss = require('@fullhuman/postcss-purgecss');

const plugins =
  process.env.NODE_ENV === 'production'
    ? ['tailwindcss',
       'autoprefixer',
        purgecss({
          content: [
            './html/**.html',
            './elm/**/*.elm'
          ],
          css: ['**/*.css'],
          defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
        })
      ]
    : ['tailwindcss'];

module.exports = { plugins };

