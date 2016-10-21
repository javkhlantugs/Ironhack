require "ruby-dictionary"
class WordChain

    def initialize(dictionary)
        @dictionary = dictionary
    end
    def find_chain (word1, word2)
    	puts "#{word1} => #{word2}"
    	puts "======"
        i = 0
        first_word = word1
        attempt = 0
        failed_attempt = 0
        while word1 != word2
            attempt += 1
            if i > word1.length - 1
                i = 0
            end
            if word1[i] != word2[i]
                word1[i] = word2[i]

                if @dictionary.exists?(word1)
                    puts word1
                else
                    word1[i] = first_word[i]
                    failed_attempt += 1
                end
             i += 1 
            end
            if failed_attempt == attempt && failed_attempt == word1.length
            end
        end
    end

end
dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("star ", "blow")