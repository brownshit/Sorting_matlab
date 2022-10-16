function shell_sorting(X,N)
%해당함수는 셸 정렬을 구현한 함수이다.

    interval = N;
    while interval>=1
        %아래는 셸정렬의 interval값이 
        %짝수가 되도록 사이즈를 변환해주는 것.
            %교수님께서 나머지 연산자를 쓰지 말라고 하셔서 
            %정수를 2로 나눈 나머지를 반환하는 방법을 고안해냈다.
        k = interval;
        while k>0
            k=k-2;
        end
        if k<0
            k = k+2;    
        end

        if k == 1
            interval = interval-1;
        end
        %위의 과정을 통해  k는 0 or 1 값을 가지게 된다.
        
        %여기서부터 기존의 interval 를 통해서 insert연산 진행.
        interval = interval/2;
        for i=1:1:interval
            X = intervalSort(X,i,N,interval);
        end
        
    end %end while
    %disp(X);
end

    