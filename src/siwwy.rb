
$trimMap = {"ing" => "ine"}
$wordMap = {"am" => "em", "do" => "does"}

def stupify(sentence, iterations)
    words = sentence.split(" ")
    sillyWords = words.map{|x|
        match = false
        $wordMap.each{|k, v|
            if x == k
                x = v
                match = true
            end
        }
        if not match
            $trimMap.each{|k,v|
                if x.end_with?(k)
                    x = x.gsub(k, v)
                    match = true
                    break
                end
            }
        end
                
        if not match
            x = x
        end 

        x 
    }

    #puts words.to_s
    #puts sillyWords.to_s
    #sillyWords.each{|w| puts w}

    return sillyWords
end

#puts $trimMap.to_s
sentence = ARGV[0..ARGV.length - 1].join(" ")
sillyform = stupify(sentence, 0)
puts sillyform.join(" ") 


