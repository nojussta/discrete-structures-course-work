function [bridges] = formBridges(graph)
    bridges = [];
    connectedComponentsCount = findConnectedComponentsCount(graph);
    n = height(graph.Edges);
    for i = 1:n
        edge = table2array(graph.Edges(i, 1));
        graph = rmedge(graph, edge(1), edge(2));
        if findConnectedComponentsCount(graph) > connectedComponentsCount
            bridges(height(bridges) + 1, :) = [edge(1), edge(2)];
        end
        graph = addedge(graph, edge(1), edge(2));
    end
end