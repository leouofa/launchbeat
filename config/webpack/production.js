process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const webpackConfig = require('./base')

webpackConfig.devtool = false

module.exports = webpackConfig
