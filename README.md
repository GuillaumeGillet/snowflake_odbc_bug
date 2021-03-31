# INSTALL AND RUN

require 
 - ruby 2.7
 - unixodbc
 - snoflake odbc driver

Once the repo cloned, install dependencies with ```bundle install```

export then environment variables **SF_UID** and **SF_PASSWORD** with snowflake user and password

```bash
export SF_UID=[SNOWFLAKE_UID]
export SF_PASSWORD=[SNOWFLAKE_PASSWORD]
```

Then run script with :

```
bundle exec ruby snowflake_odbc.rb
```
