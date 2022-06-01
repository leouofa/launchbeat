const webpack = require("webpack");
const { webpackConfig } = require('@rails/webpacker')
// Manually importing merge is a workaround (https://github.com/rails/webpacker/issues/2984) (8/14/21)
// Remove once the issue has been resolved.
const { merge } = require('webpack-merge')

const customConfig = {
    resolve: {
        extensions: ['.css']
    }
}
module.exports = merge(webpackConfig, customConfig)

pluginConfig = {
    plugins: [
            new webpack.ProvidePlugin({
            'window.jQuery': 'jquery',
            'window.$': 'jquery',
            jQuery: 'jquery',
            $: 'jquery',
            jquery: 'jquery'
        })
    ]
}
module.exports = merge(webpackConfig, pluginConfig)