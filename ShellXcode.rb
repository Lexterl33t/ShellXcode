require 'colorize'

def input(s)
	print(s)
	gets.chomp
end

def to_shellCode(s)
	s_cut_x = s.split('x')
	array_hexa_number = s_cut_x[1].split('')
	two_by_two = array_hexa_number.each_slice(2).to_a
	joined_element_by_two = two_by_two.map { |e| e.join('')  }
	add_shell_code = joined_element_by_two.map { |e| print "\\x#{e.upcase}".green }	
end

def Main
	#addr => 0x4584e745
	hexa = input("Addr => ")
	to_shellCode(hexa)

end

if __FILE__ == $0
	Main()
end

