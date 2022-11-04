function X_end = radixSorting(X,N)
%기수정렬
    %요소들이 10의 몇 제곱수인지
    numof10 = 0;
    for i = 1:1:N
        numof = log10(X(i));
        inner_numof = floor(numof);
        if(inner_numof > numof10)
            numof10 = inner_numof;
        end
    end
    %numof10 = 가장 큰 수의 요소가 10의 몇 제곱수인지.

    %위의 코드 문제 X

        %Y에는 일의자리수의 요소가 저장이 되어야 한다...
    
    for l = 1:1:numof10+1 
        Y = X;
        disp("=========="+l+"번째 실행");
        %+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
        if l == numof10+1
            % this area has another method to get Y.
            % this Y is deal with MSB side.
            for X_index = 1:1:N
                Y(X_index) = Y(X_index)./(10^(l-1));
                Y(X_index) = floor(Y(X_index));
            end
        else
            for j = 1:1:N
                Y(j) = Y(j)./10^l;
                floorinteger = floor(Y(j));
                if floorinteger == 0
                    Y(j) = 0;
                else
                    Y(j) = Y(j) - floorinteger;
                    %Y(j)는 소수부분만 남는다.
                    Y(j) = Y(j).*10^l;
                end
                disp(Y);
                disp(Y(j));
            end
            disp("Y는  : ");
            disp(Y);
            for c = 1:1:N
                disp(Y(c));
            end
            
            %위의 코드들은 해당 l(엘)자리수 위의 수들을 날려주고
    
            %여기서는 위에서 가져온 10의 n자리 까지의 수중에서 
            %n자리에 어떤수가 있는지를 판별하는. 
    
    
            %this code causes problems!!_221104
                %solve_ it was caused by .* not *;
            for i = 1:1:N
                while Y(i) > 0
                    Y(i)  = Y(i) - 10^l;
                end
                if Y(i)<0
                    k = (Y(i) +10^l)./10^(l-1);
                    Y(i) = floor(k);
                    disp("this is Y : "+Y(i));
                end
            end
            
        end
        %해당 자리수까지만의 연산을 위한 방법
        
        %+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
        %disp(Y);
        %위의 과정들은 가장 큰 자리수만 빼준다. 그 아래 자리수도 빼줘야 한다.
            %clear
    
        %{
            여기부터는 2N개의 size를 갖는 배열을 만들어서 
            해당 배열을 정렬할 예정이다.
            X, Y를 배열  Z에 넣어준다.
        X   기존배열
        Y   일의자리 수 배열
        Z   둘다 들어있는 배열
        %}
    
        Z = zeros(1,2*N);
        %Z는 X요소 Y요소 
        for q =1:2:2*N-1 
            Z(q) = X((q+1)/2);
            disp(Z(q));
            Z(q+1) = Y((q+1)/2);
                    %여기서는 Z를 만들어준다.
            disp(Z(q+1));
        end
        disp("+-+-+-+-+-+-+-+-Z출력+-+-+-+-+-+-+-+-");
        disp(Z);

        %{
        bucket에 들어가있는 요소들은 행단위로 구분이 되어야 한다.
            만들어진 xyz 배열을 통해서 버킷에 담아주는 일련의 과정 진행
                Bucket = zeros(10,10);
        %}
        X = Bucket(Z,2*N);
        disp("this is X :"+X);

        %this code causes problems!!_221104
            %bucket should have its own componant
        %changed into function.

    end

    X_end = X; %this is result.

    %위의 과정들이 실행되면 X의 10^0 자리 수들이 Y에 남는다.
    
    %현재 Y의 일의 자리들은 다 정렬이 되어있는 상태이다.
    %근데 이거랑 x랑 연관이 없다.
end