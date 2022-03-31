module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '7b0f29c4d05a110aab5340136c95886f'),
  },
});
