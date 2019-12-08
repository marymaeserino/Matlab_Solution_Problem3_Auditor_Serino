function[] = MP3(val)
a = val(:,1); %to get x coordinates of user input matrix
b = val(:,2); %to get y coordinates of user input matrix
lim = inf;
l=length(a); %size of matrix

format short e
for i=1:1:10 %to limit up to 10
    if i >=l
        break
    end
    reg = polyfit(a,b,i); %linear regression where i is the degree
    y = polyval(reg,a); %substituting x on p
    e = b-y; %least norm error 
    least_norm_error = norm(e);
    if least_norm_error < lim
      lim = least_norm_error;
        bestfit =reg; 
    end
end

fprintf('The coefficients of best fit polynomial are \n')
bestfit


end