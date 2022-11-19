function [formedGraph] = formGraph(edges, verticeCount)
    formedGraph = graph();
    formedGraph = addnode(formedGraph, verticeCount);

    if isempty(edges) == false
        edgeTable = table(edges, 'VariableNames', {'EndNodes'});
        formedGraph = addedge(formedGraph, edgeTable);
    end
end