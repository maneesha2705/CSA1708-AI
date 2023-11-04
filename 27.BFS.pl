% Graph representation (facts: edges)
edge(a, b).
edge(b, c).
edge(b, d).
edge(c, e).
edge(e, f).
edge(f, g).

% BFS Algorithm
bfs(Start, Goal) :-
    bfs([Start], [], Goal).

% Base case: The goal node is reached.
bfs([Goal | _], _, Goal) :- write('Goal reached: '), write(Goal), nl.

% Recursive case
bfs([Node | Queue], Visited, Goal) :-
    % Find neighbors of the current node
    findall(Next, (edge(Node, Next), \+ member(Next, Queue), \+ member(Next, Visited)), Neighbors),
    
    % Add neighbors to the queue
    append(Queue, Neighbors, NewQueue),
    
    % Print the current node
    write('Visiting: '), write(Node), nl,
    
    % Recursively continue with the updated queue and visited list
    bfs(NewQueue, [Node | Visited], Goal).

% Example usage:
% To find a path from 'a' to 'g', use: bfs(a, g).
output:
?- 
% c:/Users/manee/OneDrive/Documents/Prolog/27.pl compiled 0.00 sec, 9 clauses
?- bfs(a, g).
Visiting: a
Visiting: b
Visiting: c
Visiting: d
Visiting: e
Visiting: f
Goal reached: g
true 
