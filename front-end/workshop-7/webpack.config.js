var webpack = require('webpack');
var config = {
    entry: './main.js',

    output: {
        path: './',
        filename: 'index.js',
    },

    module: {
        loaders: [
            { test: /\.html$/, loader: "raw-loader" },
            { test: /\.css$/, loader: "style-loader!css-loader" }]
    },

    devServer: {
        inline: true,
        port: 5007
    },

    plugins: [
        new webpack.ProvidePlugin({
            "$": "jquery",
            "jQuery": "jquery",
            "window.jQuery": "jquery"
        })
    ]
}

module.exports = config;