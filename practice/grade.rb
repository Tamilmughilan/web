students = [
    ['s1', '001', [100,99,98]],
    ['s2','002', [87, 86, 92]],    
]

def add_students(students)

    puts "Enter number of students to be added : "
    num = gets.chomp.to_i

    for i in 1..num

        puts "Enter new student name : "
        new_name = gets.chomp

        puts "Enter id : "
        new_id = gets.chomp

        puts "Enter grades : "
        new_grades = gets.chomp.split.map(&:to_i)

        students << [new_name, new_id, new_grades]
        puts "New student added"

    end
end

def display_gradebook(students)

    students.each_with_index do |student, index|
        avg = student[2].sum.to_f / student[2].size
        puts "
        Student#{index+1}: #{student[0]}
        Id      : #{student[1]}
        Grades  : #{student[2].join(", ")}
        average : #{avg.round(2)}
        "
        
    end
end

def remove_students(students)

    puts "Enter id to remove : "
    remove_id = gets.chomp
    removed = students.reject! {|s| s[1] == remove_id}
    puts "Student removed successfully"
end


def display_range(students)
    puts "Enter start index and end index : "
    start_ind, end_ind = gets.chomp.split.map(&:to_i)

    students[start_ind..end_ind].each do |student|
        avg = student[2].sum.to_f / student[2].size
        puts "
        Student#: #{student[0]}
        Id      : #{student[1]}
        Grades  : #{student[2].join(", ")}
        average : #{avg.round(2)}
        "
    end
end

def update_grades(students)

    puts "Enter the student ID to update grades:"
    update_id = gets.chomp
    student = students.find { |s| s[1] == update_id}

    if student
        puts "Enter new grades for students #{student[0]} : "
        new_grades = gets.chomp.split.map(&:to_i)
        student[2] = new_grades
        puts "Student grade updated"
    else
        puts "Student not found"
    end
end

def main

    loop do
        puts "Enter choice
        1. Add
        2. Display
        3. Remove
        4. Range
        5. Update grades
        6. exit"

        choice = gets.chomp.to_i

        case choice

        when 1
            add_students($students)
        when 2
            display_gradebook($students)
        when 3
            remove_students($students)
        when 4
            display_range($students)
        when 5
            update_grades($students)
        when 6
            puts "Exiting.."
            break
        else
            puts "Invalid , try again"
        end
    end
end

$students = students
main


