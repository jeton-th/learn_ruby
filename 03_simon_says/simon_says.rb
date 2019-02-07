def echo(string)
		string
end

def shout(string)
		string.upcase
end

def repeat(string, n = 2)
		string + (" " + string) * (n - 1)
end

def start_of_word(string, n)
		string[0..n-1]
end

def first_word(string)
		string.split[0]
end

def titleize(string)
		lw = %w{a an and the or for of nor over}
		string.split.each_with_index.map{|word, index| lw.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end