puts "Enter a phrase you'd like to analyze"
text = gets.chomp

words = text.split()

frequencies = Hash.new(0)

words.each do |word|
    word.downcase!
    frequencies[word] += 1
end

frequencies = frequencies.sort_by { |word, count| count }
frequencies.reverse!

frequencies.each { |word, count| puts "#{word}: #{count.to_s}"  }
