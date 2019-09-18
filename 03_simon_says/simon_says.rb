#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, times=2)
    new_string = ""
    count = 0 
    while (count < times) do 
        if(count == times-1) 
            new_string += string
        else 
            new_string += string + " "
        end
        count+=1
    end
    return new_string
end

def start_of_word(string, num)
    return string[0...num]
end

def first_word(string)
    string_arr = string.split(" ")
    return string_arr[0]
end

def titleize(string)
    string_arr = string.split(" ")
    index = 0 

    def small_word?(word, index)
        words = ["and", "of", "a", "the", "on", "in", "or", "an", "over"]
        words.each do |el| 
            if (el.downcase == word.downcase && index != 0)
                return true
            end
        end
        return false
    end

    while (index < string_arr.length) do 
        if(!small_word?(string_arr[index], index))
            string_arr[index] = string_arr[index].capitalize
        end
        index += 1
    end
    return string_arr.join(" ")
end