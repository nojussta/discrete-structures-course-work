function [jComp] = findConnectedComponentsCount(graph) 
    checkedVertices = [];
    jComp = 0;

    edges = table2array(graph.Edges);

    n = height(graph.Nodes);
    for i = 1:n

        if isNumberInArray(i, checkedVertices) == true
            continue;
        end

        stack = i;
        vertices = i;
        
        [verticeCount, ~] = size(edges);
        while ~isempty(stack)
            chosenVertice = stack(1);
            stack(1) = [];
        
            for z = 1:verticeCount
                newVertice = -1;
                if edges(z, 1) == chosenVertice 
                    if (~isNumberInArray(edges(z, 2), vertices))
                        newVertice = edges(z, 2);
                    end
                end
        
                if edges(z, 2) == chosenVertice
                    if (~isNumberInArray(edges(z, 1), vertices))
                        newVertice = edges(z, 1);
                    end
                end

                if (newVertice == -1)
                    continue
                end

                stack(length(stack) + 1) = newVertice;
                vertices(length(vertices) + 1) = newVertice;
            end
        end

        checkedVerticesCount = length(checkedVertices);
        searchedVerticeCount = length(vertices);
        checkedVertices(1, checkedVerticesCount + 1:checkedVerticesCount + searchedVerticeCount) = vertices;

        jComp = jComp + 1; 
     end
end