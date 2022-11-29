clear
clc

% Declaring the graph
verticeCount = 6;
matrixArray = [1 3; 1 4; 1 6; 2 3; 2 1; 3 4; 5 6];

%3 vertices 1 2; 1 3; 2 3

%6 vertices, 1 3; 1 4; 1 6; 2 3; 2 1; 3 4; 5 6

%9 vertices, 1 2; 1 4; 2 3; 2 5; 3 4; 5 6; 6 4; 6 7; 7 8; 9 6

% Forming graph object
graph = formGraph(matrixArray, verticeCount);
plot(graph);

%Start of timer
tic

% Forming graph bridges
bridges = formBridges(graph);

timer = toc;

disp("Rasti grafo tiltai: ");
if(height(bridges)==0)
    disp("Grafo tiltų nerasta");
else
disp(bridges);
end

disp("Skaičiavimo laikas: " + timer + "sec");
