clear
clc

% Declaring the graph
verticeCount = 6;
matrixArray = [1 2; 1 3; 2 3; 2 5; 3 4; 5 6];

% Forming graph object
graph = formGraph(matrixArray, verticeCount);
plot(graph);

% Forming graph bridges
bridges = formBridges(graph);

disp("Rasti grafo tiltai: ");
if(height(bridges)==0)
    disp("Grafo tiltų nerasta");
else
disp(bridges);
end