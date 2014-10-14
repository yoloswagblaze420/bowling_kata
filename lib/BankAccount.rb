class BankAccount
	balance=0
	deposit=0
	number_of_transaction=0
	name=""
	accountNumber=""
	def self.set(balance1,name1,accNum1)
		balance=balance1
		name=name1
		accountNumber=accNum1
	end
  def self.find_largest(numbers)
  	puts "yolo"
  	return numbers.max
  end
end