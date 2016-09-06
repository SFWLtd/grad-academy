var config = {
    entry: './main.js',

    output: {
        path: './',
        filename: 'index.js',
    },
    
    module: {
        loaders: [
            {
                test: /\.html$/,
                loader: "raw-loader"
            }]
    },

    devServer: {
        inline: true,
        port: 5002
    }
}

module.exports = config;