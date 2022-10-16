function X = intervalSort(X, init,final,interval)
%interval sort는 
%셸 메인에서 divide된 각 부분들에 대한 삽입정렬을 진행해주는 함수이다.
%interval variation을 통해 각 divide된 부분에 대한 conquer를 진행해준다.
    
    for i=init+interval:interval:final-interval+init
        %위의 for문은 divide된 뒷부분에 대해 진행.
        for j=init:interval:i-interval
            if X(i) < X(j)
                temp = X(i);
                X(i) = X(j);
                X(j) = temp;
            end
        end
    end
end