module.exports.onWindow = (browserWindow) => browserWindow.setVibrancy('dark');

module.exports.decorateConfig = (config) => {
  config.backgroundColor = 'rgba(0,0,0,.7)';
  return config;
};
