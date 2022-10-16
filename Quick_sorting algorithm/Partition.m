function [subX,PivotIndex] = Partition(S,L,R)
%pivot값을 가장 왼쪽으로 두고 정렬시작.
P = S(L);
i = L+1;

for j = i:1:R
    if S(j) < P
        %해당 값 swap실행
        temp1 = S(j);
        S(j) = S(i);
        S(i) = temp1;
        i = i+1;
        %두 값이 스왑되면 i 인덱스가 우측으로 1칸 이동
    end
end

%맨 왼쪽에 뒀던 피봇이랑 i-1번째 값이랑 교환. 
%피봇이 i-1번째로 이동하게 되고, 해당값을 subvector와 함께 return.
swap1 = S(L);
S(L) = S(i-1);
S(i-1) = swap1;

subX = S;
PivotIndex = i-1;

end