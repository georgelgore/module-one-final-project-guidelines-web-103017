require 'bundler'
Bundler.require

# ActiveRecord::Base.connection.execute("BEGIN TRANSACTION; END;")
db = ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
# db.busy_timeout=(100)
 # db = ::SQLite3::Database.new(@opts[:database])
# db.busy_timeout(5000)=> Card
# sqlite3_busy_timeout( db, 5000 );

require_all 'lib'
require_all 'app'
