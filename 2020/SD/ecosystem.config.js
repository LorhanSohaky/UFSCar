module.exports = {
  apps : [
    {
    name:'email',
    script: 'worker-email/index.js',
    "log_date_format" : "DD/MM/YYYY HH:mm Z"
  },
  {
    name:'estoque',
    script: 'worker-estoque/index.js',
    "log_date_format" : "DD/MM/YYYY HH:mm Z"
  },
  {
    name:'nota',
    script: 'worker-nota-fiscal/index.js',
    "log_date_format" : "DD/MM/YYYY HH:mm Z"
  },
],

  deploy : {
    production : {
      user : 'SSH_USERNAME',
      host : 'SSH_HOSTMACHINE',
      ref  : 'origin/master',
      repo : 'GIT_REPOSITORY',
      path : 'DESTINATION_PATH',
      'pre-deploy-local': '',
      'post-deploy' : 'npm install && pm2 reload ecosystem.config.js --env production',
      'pre-setup': ''
    }
  }
};
