
$trimMap = {"ing" => "ine"}

def stupify(sentence)
    words = sentence.split(" ")
    words.each{|x|
        match = false
        $trimMap.each{|k,v|
            if x.end_with?(k)
                print x.gsub(k, v) + " "
                match = true
            end
        }
        if not match
            print x + " "
        end
    }
end

#puts $trimMap.to_s
sentence = ARGV[0..ARGV.length - 1].join(" ")
stupify(sentence)


