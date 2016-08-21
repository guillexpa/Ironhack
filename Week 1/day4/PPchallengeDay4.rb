require 'ruby-dictionary'

class WordChain
	def initialize(dictionary)
		@dictionary = dictionary
	end

	def chain(first_word,last_word)

		puts first_word
		@first_word = first_word.split('')
		@aux = first_word.split('')
		@last_word = last_word.split('')
		@first_word.each{ |item|
			changeLetter
		}

	end

	def changeLetter
		@first_word.each_with_index do |letter, i|
			if @first_word[i] != @last_word[i]
				@first_word[i] = @last_word[i]
				new_word = @first_word.join('')
				if @dictionary.exists?(new_word)
					@first_word = new_word.split('')
					puts @first_word.join('')
				else
					@first_word[i] = @aux[i]
				end
			end
		end
	end

end


dictionary = Dictionary.from_file("/usr/share/dict/words")
chain = WordChain.new(dictionary)
chain.chain("height","follow")
