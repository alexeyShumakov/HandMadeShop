module ApplicationHelper
	def custom_currency(price)
		number_to_currency(price, unit: "", separator: ",", delimiter: " ")
	end
	def prefix_title
		'HandMade, Хэнд Мэйд в Челябинскe.'
	end
end
