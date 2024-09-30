module.exports = {
  apps: [
    {
      name: "landing-page",
      script: "npm",
      args: "start",
      instances: 1,
      exec_mode: 'cluster',
      autorestart: true,
      watch: false,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: 'production',
      }
    },
  ],
};
