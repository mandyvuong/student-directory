def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def input_cohort(students)
  cohort_choice = {
    1 => :January,
    2 => :February,
    3 => :March,
    4 => :April,
    5 => :May,
    6 => :June,
    7 => :July,
    8 => :August,
    9 => :September,
    10 => :October,
    11 => :November,
    12 => :December
    } 

  students.each do |student|
    puts "#{student[:name]}, please enter the cohort you are joining by entering the months number, i.e. 1 refers to January"
    student_cohort = gets.chomp.to_i
    if !cohort_choice[student_cohort].nil? 
      student[:cohort] = cohort_choice[student_cohort]
    else
      student_cohort = cohort_choice[rand(1..12)]
      puts "You did not enter a valid cohort, therefore we randomly selected you to join #{student_cohort}"
      student[:cohort] = student_cohort
    end
  end
  students
end

def sort_by_cohort(students)
  sorted_cohort = {}
  
  students.each do |student|
    if sorted_cohort[student[:cohort]] == nil
      sorted_cohort[student[:cohort]] = []
    end
    sorted_cohort[student[:cohort]].push(student[:name])
  end

  # print students grouped by cohorts
  puts "Here is a list of students by cohort:"
  sorted_cohort.each do |k, v|
    puts "-- #{k} cohort --"
    puts v
    puts
  end

  # only print the students from that cohort
  puts "Enter the cohort month where you would like to see the list of names for, i.e. January"
  cohort = gets.chomp.capitalize.to_sym
  puts sorted_cohort[cohort]
  puts
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} if (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
input_cohort(students)
sort_by_cohort(students)
#nothing happens until we call the methods
if students.count > 0
  print_header
  print(students)
  print_footer(students)
end