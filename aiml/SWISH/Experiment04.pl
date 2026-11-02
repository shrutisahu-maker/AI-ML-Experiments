%timetable

timetable(monday,'9:00',python,ram,room101).
timetable(tuesday,'10:00',dsa,shruti ,room120).
timetable(wednesday , '11:00', ai , siya,room204).
timetable(thursady , '12:00',dbms,siddhi,room345).
timetable(friday,'1:00',ai,shruti,room601).
timetable(saturday,'2:00',maths,shruti,room865).

%faculty schedule

faculty_sc(Faculty,Day,Time,Subject,Room):-
    timetable(Day,Time,Subject,Faculty,Room).

%teaching subject
subject_name(Subject,Faculty):-
    timetable(_,_,Subject,Faculty,_).

%classRoom no
room_no(RoomNO,Day,Time,Subject,Faculty):-
    timetable(Day,Time,Subject,Faculty,RoomNO).
