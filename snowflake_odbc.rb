require 'active_record'
require 'active_record/connection_adapters/deduplicable'
require 'odbc_adapter'

ActiveRecord::Base.establish_connection(
  adapter: 'odbc',
  conn_str: "DRIVER={/usr/lib/snowflake/odbc/lib/libSnowflake.so};SERVER={id93915.eu-west-1.snowflakecomputing.com};UID=#{ENV["SF_UID"]};DATABASE=LOGS;WAREHOUSE=DASHBOARD;PWD={#{ENV["SF_PASSWORD"]}};ROLE=public"
)

class Snowflake < ActiveRecord::Base
end

Snowflake.find_by_sql("select 1")
