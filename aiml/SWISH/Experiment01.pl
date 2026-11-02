% student(StudentID, Name)
student(john).
student(mary).
student(alex).
student(lisa).
student(aryan).

% --- Facts: Courses ---
% course(CourseCode, CourseName)
course(computer_science).
course(calculus).
course(physics).
course(literature).

% --- Facts: Enrollments ---
% enrolled(StudentID, CourseCode)
enrolled(john, physics).
enrolled(john, computer_science).
enrolled(mary, physics).
enrolled(lisa, literature).
enrolled(aryan, calculus).
enrolled(aryan, physics).


% --- Rules ---
% Check if a student name is enrolled in a course name
is_taking(StudentName, CourseName) :-
    student(StudentName),
    course(CourseName),
    enrolled(StudentName , CourseName).
