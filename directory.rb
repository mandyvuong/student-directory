require 'csv'

@students = [] # an empty array accessible to all methods

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # method to add the student hash to the array
    add_students(name, "november")
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
    # exit if name.nil?
  end
end

# added method to avoid DRY in load_students() and input_students()
def add_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  processes.each do |key, value|
    puts "#{key}. #{value[0]}" # prints the number followed by method
  end
  # puts "1. Input the students"
  # puts "2. Show the students"
  # puts "3. Save the list to students.csv"
  # puts "4. Load the list from students.csv"
  # puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_student_list
  print_footer
end

def save_students
  filename = "students.csv"
  # open the file for writing
  CSV.open(filename, "w") do |csv|
  # iterate over the array of students
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv << student_data
    end
  end
end

def load_students(filename = "students.csv")
  CSV.foreach(filename) do |row|
      @students << {name: row[0], cohort: row[1].to_sym}
  end
end

def try_load_students
  filename = ARGV.first# first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

def processes
  {
    "1" => ["Input the students", method(:input_students)],
    "2" => ["Show the students", method(:show_students)],
    "3" => ["Save the list to students.csv", method(:save_students)],
    "4" => ["Load the list from students.csv", method(:load_students)],
    "9" => ["Exit", method("exit")]
  }
end

def process(selection)
  if (processes.key?(selection))
    processes[selection][1].call
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header9

  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

try_load_students
interactive_menu