function [max_values,min_values]=max_min(data)
  %  disp(data);
    max_values = max(data, [], 1);
    min_values = min(data, [], 1);
  
end