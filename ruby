=begin
This project from Learn Ruby created a program that searches a string of text for your secret and, if it finds it, replaces it with "REDACTED”. Keep your secrets safe!

- What could you do to make sure your redactor redacts a word regardless of whether it’s upper case or lower case?
- How could you make your program take multiple, separate words to REDACT?
- How might you make a new redacted string and save it as a variable, rather than just printing it to the console?

=end

puts "tell me a secret?:"
text = gets.chomp
text.downcase!


puts "which bit is secret?:"
redact = gets.chomp
redact.downcase! 


words = text.split(" ")

words.each do |word|
  if redact.include? word
    
    print "REDACTED "
  else 
  	print word + " "
	end
end 

=begin
Iterating Over Hashes
We can also iterate over hashes using the .each method. For example, we could do

my_hash.each do |key, value|
  puts my_hash[]
end
This will print out a list of keys and values from my_hash, each on its own line.

Instructions
1.
Iterate over the matz hash and print each value to the console using puts.
=end 

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |key, value|
  puts matz[key]
end

A Night at the Movies 

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end

