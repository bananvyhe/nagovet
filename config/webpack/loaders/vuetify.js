module.exports = {

      // SASS has different line endings than SCSS
      // and cannot use semicolons in the markup
      // SCSS has different line endings than SASS
      // and needs a semicolon after the import.
  rules: [

     // SASS has different line endings than SCSS
      // and cannot use semicolons in the markup
      // {
      //   test: /\.sass$/,
      //   use: [
      //     'vue-style-loader',
      //     'css-loader',
      //     {
      //       loader: 'sass-loader',
      //       options: {
      //       },
      //     },
      //   ],
      // },
    {

      test: /\.scss$/,
      use: [
        'vue-style-loader',
        'css-loader', 
        {
          loader: 'sass-loader',
        // Requires sass-loader@^8.0.0
          options: {
 
          // This is the path to your variables
              // additionalData: "@import './app/javascript/stylesheets/scss/_variables.scss';",
 
        
              
                // additionalData: "app/javascript/stylesheets/scss/_variables.scss";,
                // implementation: require("sass"),
          },
        },
      ],  
    },
  ],
    
}