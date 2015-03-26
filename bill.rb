require 'active_record'
require 'mysql2' 

ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', 
  host:     'localhost',
  database: 'billing_info',
  username: 'root',
  password: 'anu'
)

class Bill < ActiveRecord::Base
  
end


