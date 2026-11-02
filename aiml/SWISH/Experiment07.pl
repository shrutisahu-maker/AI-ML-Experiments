:- initialization(main).

% 1. GRAPH DEFINITION & HEURISTICS

% connected(Node1, Node2) defines the bidirectional edges of our graph.
connected(a, b).
connected(a, c).
connected(a, d).
connected(b, e).
connected(b, f).
connected(c, f).
connected(d, g).
connected(e, g).
connected(f, g).

% edge(X, Y) ensures the graph can be traversed in both directions.
edge(X, Y) :- connected(X, Y).
edge(X, Y) :- connected(Y, X).

% heuristic(Node, H_Value) provides the straight-line distance estimate to goal 'g'
heuristic(a, 40).
heuristic(b, 32).
heuristic(c, 25).
heuristic(d, 35).
heuristic(e, 19).
heuristic(f, 17).
heuristic(g, 0).


 %2. GREEDY BEST-FIRST SEARCH ALGORITHM

% gbfs(Start, Goal, Path)
% Initiates the search by putting the starting path into the frontier.
gbfs(Start, Goal, Path) :-
    heuristic(Start, H),
    % Paths are tracked as: path(HeuristicValue, [CurrentNode | VisitedHistory])
    gbfs_search([path(H, [Start])], Goal, [], RevPath),
    reverse(RevPath, Path).

% Base Case: If the lowest heuristic path has reached the Goal, we succeed.
gbfs_search([path(_, [Goal|History])|_], Goal, _, [Goal|History]).

% Recursive Case: Expand the most promising node and update the frontier.
gbfs_search([path(_, [Current|History])|RestFrontier], Goal, Visited, FinalPath) :-
    % Generate all unvisited neighbors of the current node
    findall(
        path(H, [Neighbor, Current | History]),
        (edge(Current, Neighbor), \+ member(Neighbor, History), \+ member(Neighbor, Visited), heuristic(Neighbor, H)),
        NewPaths
    ),
    gbfs_search(SortedFrontier, Goal, [Current|Visited], FinalPath).
 % 3. EXECUTION

main :-
    writeln('--- Running Greedy Best-First Search ---'),
    (gbfs(a, g, Path) ->
        format('Path found: ~w~n', [Path])
    ;
        writeln('No path could be found.')
    ).
