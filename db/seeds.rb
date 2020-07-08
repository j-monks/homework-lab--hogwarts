require_relative('../models/student')

require('pry-byebug')

Student.delete_all()

student1 = Student.new({'first_name' => 'James',
    'last_name' => 'Monks',
    'house' => 'Gryffindor',
    'age' => 26 })
student1.save()

student2 = Student.new({'first_name' => 'Ruben',
    'last_name' => 'Botha',
    'house' => 'Slytherin',
    'age' => 26 })
student2.save()


all_students = Student.all()
find_student_1 = Student.find(student1.id)

binding.pry
nil

