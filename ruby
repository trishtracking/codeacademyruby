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

