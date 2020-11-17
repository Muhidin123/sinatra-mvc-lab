require 'pry'

class PigLatinizer


    def piglatinize_one_word(str)
        vowels = ['a', 'e', 'i', 'o', 'u', "A", "E", "I", "O", "U"]
        consonants_up = ('A'..'Z').to_a
        consonants = ('a'..'z').to_a + (consonants_up)
        consonants = consonants - vowels
        #binding.pry
        if vowels.include?(str[0])
            return str + "way"
        elsif consonants.include?(str[0]) && !consonants.include?(str[1]) && !vowels.include?(str[2])
            return str[1..-1] + str[0] + 'ay'
        elsif consonants.include?(str[0]) && consonants.include?(str[1]) && !consonants.include?(str[2])
            return str[2..-1] + str[0..1] + "ay"
        else consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
            return str[3..-1] + str[0..2] + "ay"
        end
    end


    def piglatinize(string)
        string.split(" ").map{ |word| piglatinize_one_word(word)}.join(" ")
    end


end