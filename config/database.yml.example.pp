development:
  adapter: postgresql
  database: compound_bling_application_development
  encoding: unicode
  port: <%= ENV["BOXEN_POSTGRESQL_PORT"] || 5432 %>
  host: localhost

test:
  adapter: postgresql
  database: compound_bling_application_test
  encoding: unicode
  port: <%= ENV["BOXEN_POSTGRESQL_PORT"] || 5432 %>
  host: localhost
