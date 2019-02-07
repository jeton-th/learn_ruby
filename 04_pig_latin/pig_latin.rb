def translate(string)

    def trans_word(word)
        v = "a e i o u"
        unless v.include?(word[0])
            if v.include?(word[1])
                if word[0..1] == "qu"
                    fl = "qu"
                    word[0..1] = ""
                else
                    fl = word[0]
                    word[0] = ""
                end
            else
                if v.include?(word[2]) && word[1..2] != "qu"
                    fl = word[0..1]
                    word[0..1] = ""
                else
                    fl = word[0..2]
                    word[0..2] = ""
                end
            end
            word += fl
        end
        word + "ay"
    end

    new_string = ""
    string.split().each{ |word|
        new_string += trans_word(word) + " "
    }
    new_string.strip
end