# pgd

## Local setup

### Test

`test` requires a database `pdg_test` with a connection string set in `TEST_DATABASE_URL`  

### Dev

`dev` requires a database `pdg_dev` with a connection string set in `DEV_DATABASE_URL`

### Prod

`prod` runs on [Supabase](https://supabase.com/) and uses database `postgres`. A connection string should be set as `PROD_DATABASE_URL`