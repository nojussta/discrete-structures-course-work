function [ats] = isNumberInArray(number, array)
    ats = false;    
    for i = 1:length(array)
        if array(i) == number
            ats = true;
            return;
        end
    end
end