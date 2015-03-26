require 'active_record'
require 'mysql2' 
require_relative './product'
require_relative './bill_product'
require_relative './bill'

ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', 
  host:     'localhost',
  database: 'billing_info',
  username: 'root',
  password: 'anu'
)

class GenerateBill
	def GenerateBill.calculate_amount		
	  data = ''	  
	  total_amount = 0	  
	  f = File.open("F:/Ruby_practice/data.txt", "r") 
	  bill = Bill.create	  
	  f.each_line do |line|	  	
	    data += line	    
	    line = line.strip.split(' ')    
	    BillProduct.create(:bill_id => bill.bill_id, :prod_id => line.first.to_i, :quantity => line.last.to_i)	
	    cost = Product.find(line.first.to_i).price	    
	    cost_for_quantity = cost * line.last.to_i
	    total_amount += cost_for_quantity	  	
	  end
	  bill.total_amt = total_amount
	  bill.save
	end

end