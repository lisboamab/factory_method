require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/notifications.sqlite3'
)

unless ActiveRecord::Base.connection.table_exists?(:notifications)
  ActiveRecord::Base.connection.create_table :notifications do |t|
    t.string :type
    t.string :message
    t.timestamps
  end
end
