const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');
require('dotenv').config({ path: `.env.${process.env.NODE_ENV || 'prod'}` });

module.exports = {
  EMAIL: process.env.EMAIL,
  PASSWORD: process.env.PASSWORD,
  BASEURL: process.env.BASEURL || 'https://api.rudderstack.com', // Default base URL
};

Before(() => {
  request.setBaseUrl(module.exports.BASEURL);
  settings.setReporterAutoRun(false);
});
