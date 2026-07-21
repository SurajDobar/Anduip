#question:
#  Student Enrollment System

#  Scenario: You are developing a student enrollment system for a university. The university offers courses in different subjects, 
# and some students are enrolled in multiple courses.


#  Tasks: 1. Create a set course_A containing students 'Alice', 'Bob', 'Charlie'. 
set_course_A={'Alice', 'Bob', 'Charlie'}
print("Course A students:", set_course_A)

# 2. Create another set course_B containing students 'Charlie', 'David', 'Eva'. 
set_course_B={'Charlie', 'David', 'Eva'}
print("Course B students:", set_course_B)

#----------------------------------------------------------------------------------------------------------------------------------


# 3. Find out which students are enrolled in both course_A and course_B. 
students_in_both = set_course_A & set_course_B
print("Students enrolled in both course_A and course_B:", students_in_both)

# 4. List all students who are enrolled in either course_A or course_B.
all_students = set_course_A | set_course_B
print("All students enrolled in either course_A or course_B:", all_students)

# 5. Identify students who are enrolled in course_A but not in course_B.
students_only_in_A = set_course_A - set_course_B
print("Students enrolled in course_A but not in course_B:", students_only_in_A)

# 6. Determine the students who are enrolled in only one course.
students_in_only_one_course = set_course_A ^ set_course_B
print("Students enrolled in only one course:", students_in_only_one_course)


# Output:
# Course A students: {'Charlie', 'Bob', 'Alice'}
# Course B students: {'Charlie', 'David', 'Eva'}
# Students enrolled in both course_A and course_B: {'Charlie'}
# All students enrolled in either course_A or course_B: {'Charlie', 'Bob', 'David', 'Eva', 'Alice'}
# Students enrolled in course_A but not in course_B: {'Bob', 'Alice'}
# Students enrolled in only one course: {'Alice', 'David', 'Eva', 'Bob'}