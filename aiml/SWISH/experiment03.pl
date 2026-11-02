% 1. APPEND: Joins two lists together
% Base case: Appending an empty list to any list L results in L.
my_append([], L, L).
% Recursive case: Take the head X off the first list, append the tail L1 to L2, 
% and put X back on the front of the result.
my_append([X|L1], L2, [X|L3]) :- 
    my_append(L1, L2, L3).


% 2. REVERSE: Reverses the order of elements in a list (using an accumulator)
% Helper predicate with accumulator initialized to empty list []
my_reverse(List, Reversed) :- 
    rev_acc(List, [], Reversed).

% Base case: When the input list is empty, the accumulator holds the final reversed list.
rev_acc([], Acc, Acc).
% Recursive case: Move the head X from the input list to the front of the accumulator.
rev_acc([X|Tail], Acc, Reversed) :- 
    rev_acc(Tail, [X|Acc], Reversed).


% 3. MEMBER SEARCH: Checks if an item is inside a list
% Base case: The item is the head of the list.
my_member(X, [X|_]).
% Recursive case: Look for the item in the tail of the list.
my_member(X, [_|Tail]) :- 
    my_member(X, Tail).


% 4. LIST (Print elements): Iterates through and prints each element on a new line
% Base case: Do nothing for an empty list.
print_list([]).
% Recursive case: Print the head element, then recursively print the tail.
print_list([X|Tail]) :- 
    writeln(X),
    print_list(Tail).
