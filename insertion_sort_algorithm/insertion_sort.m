function X = insertion_sort(X,N)
    for i = 2:1:N
        for j = 1:1:i-1
            if X(i)<X(j)
                temp = X(i);
                X(i) = X(j);
                X(j) = temp;
            end
        end
    end
end