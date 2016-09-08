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
            { test: /\.css$/, loader: "style-loader!css-loader" },
            { test: /\.scss$/, loaders: ["style", "css", "sass"]}]

    },

    devServer: {
        inline: true,
        port: 5008
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