const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');
require('dotenv').config({ path: `.env.${process.env.NODE_ENV || 'prod'}` });

module.exports = {
  EMAIL: process.env.EMAIL,
  PASSWORD: process.env.PASSWORD,
};

Before(() => {
  request.setBaseUrl('https://api.rudderstack.com');
  settings.setReporterAutoRun(false);
});