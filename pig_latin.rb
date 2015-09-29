def pig_latin(word)
	
	if word.downcase.start_with? "a", "e", "i", "o", "u"
		vowel = word.slice!(0)
		p "#{word}#{vowel}way"
	else
		con = []
		vocales = "aeiou"
		word.split("").each do |letter|
			if vocales.include? letter
				break
			else
				con.push(letter)
			end  
		end
			num_con = con.count 
		p "#{word.slice(num_con..-1)}#{con.join}ay"
	end	

end

pig_latin("automovil")
pig_latin("egg")
pig_latin("apple")
pig_latin("I")
pig_latin("pig")
pig_latin("trash")
pig_latin("glove")
