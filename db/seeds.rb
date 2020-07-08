require_relative('../models/student')
require_relative("../models/house")

require('pry-byebug')

Student.delete_all()
House.delete_all()

house1 = House.new({'name' => 'Gryffindor', 'logo' => 'https://www.google.com/search?q=gryffindor+logo&safe=off&sxsrf=ALeKk03so0yRaLxcEOtDTyTHJd_U-p-xoQ:1594223947388&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjT-M2Ag77qAhUeRBUIHTGeCOIQ_AUoAXoECA4QAw&biw=1255&bih=624&dpr=2#imgrc=0147mJT-2linYM'})
house1.save()

house2 = House.new({'name' => 'Slytherin', 'logo' => 'https://www.google.com/search?q=slytherin+logo&safe=off&sxsrf=ALeKk00_li9JMJrs4MaBhCI8C_g9he8PKg:1594224057700&source=lnms&tbm=isch&sa=X&ved=2ahUKEwij4Zq1g77qAhXBQRUIHfT7DyYQ_AUoAXoECA4QAw&biw=1255&bih=624#imgrc=vwytwHAmRHcnnM'})
house2.save()

house3 = House.new({'name' => 'Hufflepuff', 'logo' => 'https://www.google.com/search?q=hufflepuff+logo&safe=off&sxsrf=ALeKk02lEtOWqfEam5cSzYHkrgOa-vLSEw:1594224260660&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj7yv6VhL7qAhXCQhUIHZGtDAgQ_AUoAXoECA4QAw&biw=1255&bih=624#imgrc=lmgDzxvmwL1P_M'})
house3.save()

house4 = House.new({'name' => 'Ravenclaw', 'logo' => 'https://www.google.com/search?q=ravenclaw+logo&safe=off&sxsrf=ALeKk00XCOvxqPZ2qgsW1qSKeFkelKmaxw:1594224718903&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjvx7_whb7qAhXXURUIHVsbDk4Q_AUoAXoECA8QAw&biw=1255&bih=624#imgrc=EAop5buDJWqmBM'})
house4.save()

student1 = Student.new({'first_name' => 'James',
    'last_name' => 'Monks',
    'house_id' => house1.id,
    'age' => 26 })
student1.save()

student2 = Student.new({'first_name' => 'Ruben',
    'last_name' => 'Botha',
    'house_id' => house2.id,
    'age' => 26 })
student2.save()


all_students = Student.all()
find_student_1 = Student.find(student1.id)
# find_student1_house = Student.find_house(student1.house_id)

binding.pry
nil

