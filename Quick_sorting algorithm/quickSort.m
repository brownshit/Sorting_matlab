function A = quickSort(A,L,R)
    
    %L==R이게 되면 조건문 종료!    
    if L < R
        [A, pivot] = Partition(A, L,R);
        
        %피봇기준으로 두 구역으로 나눠, 좌측부터 정렬함.
        A = quickSort(A, L, pivot-1); 
        A = quickSort(A, pivot+1, R);
    end
end