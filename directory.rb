@width = 50

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.capitalize
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp.capitalize
  end
  # return the array of students
  students
end

def input_hobbies(students)
  students.each do |student|
    puts "#{student[:name]} please enter your hobbies separated by commas"
    hobbies = gets.chomp
    student[:hobbies] = hobbies
  end
  students
end

def input_country(students)
  students.each do |student|
    puts "#{student[:name]} please enter your country of birth"
    country = gets.chomp
    student[:country] = country
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(@width)
  puts "-------------".center(@width)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(@width)
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)