students = [
  ["Alice", "S001", [85, 90, 78]],
  ["Bob", "S002", [75, 80, 88]],
  ["Charlie", "S003", [90, 92, 95]]
]

# Add a new student
puts "Enter the new student's name:"
name = gets.chomp
puts "Enter the student's ID:"
id = gets.chomp
puts "Enter the student's grades (space-separated):"
grades = gets.chomp.split.map(&:to_i)
students << [name, id, grades]
puts "New student added!"

# Update grades
puts "Enter the student ID to update grades:"
update_id = gets.chomp
student = students.find { |s| s[1] == update_id }
if student
  puts "Enter the new grades (space-separated):"
  student[2] = gets.chomp.split.map(&:to_i)
  puts "Student grades updated!"
end

# Remove a student
puts "Enter the student ID to remove:"
remove_id = gets.chomp
removed = students.reject! { |s| s[1] == remove_id }
puts "Removed student with ID: #{remove_id}" if removed
puts "Student removed successfully!"

# Calculate average grade
puts "Enter the student ID to calculate average grade:"
avg_id = gets.chomp
student = students.find { |s| s[1] == avg_id }
if student
  avg = student[2].sum.to_f / student[2].size
  puts "Average grade for #{student[0]}: #{avg.round(2)}"
end

# Display sliced list
puts "Enter the starting and ending index of students you want to view:"
start_idx, end_idx = gets.chomp.split.map(&:to_i)
students[start_idx..end_idx].each do |s|
  avg = s[2].sum.to_f / s[2].size
  puts "#{s[0]} (ID: #{s[1]}) - Average Grade: #{avg.round(2)}"
end

# Display full gradebook
puts "\nGradebook:"
puts "Name StudentID Grades AverageGrade"
students.each do |s|
  avg = s[2].sum.to_f / s[2].size
  puts "#{s[0]} #{s[1]} #{s[2].join(', ')} #{avg.round(2)}"
end
