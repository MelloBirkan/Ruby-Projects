movies = {
  Fury: 10
}

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when "add"
  puts "What's the movie title? "
  title = gets.chomp.to_sym
  puts "What's the movie rating? "
  rating = gets.chomp.to_i
  if movies[title].nil?
    movies[title] = rating
  else
    puts "Already have this movie in the list!"
  end
when "update"
  puts "What's the movie title you want to update? "
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "first add this film in your list!"
  else
    puts "What's the new movie rating? "
    rating = gets.chomp.to_i
    movies[title] = rating
  end
when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
  puts "What's the movie title do want to delete? "
  title = gets.chomp.to_sym
  if movies[title].nil?
    "Relax, this film isn't in your list!"
  else
    movies.delete(title)
  end
else
  puts "Error!"
end
