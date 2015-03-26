require 'active_record'
require 'mysql2' 

ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', 
  host:     'localhost',
  database: 'bill_details',
  username: 'root',
  password: 'anu'
)

class Bill < ActiveRecord::Base
  
end

puts Bill.first.customer_name
