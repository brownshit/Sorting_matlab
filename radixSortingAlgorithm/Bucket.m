function OutputVector = Bucket(InputVector,N)
%{

this function should make Bucket
    InputVector == vector Z.
    num N is upper function's 2*N.

Bucket is Vector 
bucketMatrix is Matrix.

%}
n = floor(N/2);
registerVector = zeros(1,n); %vector for temp repos
%we should define lower matrix to collect sorted numbers
bucketMatrix = zeros(10,n);

for i = 2:2:N
    %inner for. we should rotate 'the' Bucket's index
    for bucketIndexNum = 1:1:10
        %in here we'll use bucketIndexNum - 1
            %actual index to compare successfully
        if (bucketIndexNum -1) == InputVector(i)
            %inner if, we should line up what we collected in matrix
            for low = 1:1:n
                if bucketMatrix(bucketIndexNum,low) == 0
                    bucketMatrix(bucketIndexNum,low) = InputVector(i-1);
                    break;
                end
            end
        end
    end

end
%is that upper code makes bucketMatrix completely...??

%more code matrix to vector.

%under this paragraph's for is aimming...
%should change to vector 
    %collect not_0 factor into vector

k = 1;
for i = 1:1:10
    for j = 1:1:n
        %[i,j] in matrix
        if bucketMatrix(i,j) ~= 0
            registerVector(k) = bucketMatrix(i,j);
            k = k+1;
        end
    end
end

OutputVector = registerVector;% temporary stored
end