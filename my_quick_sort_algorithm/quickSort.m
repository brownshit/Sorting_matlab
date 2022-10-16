function X = quickSort(X, L, R)%X는 벡터, L과 R은 좌우 포인터
    %해당 sorting algorithm은 가장 basic한 algorithm
    if L<R
        P = patition(X, L,R);
        

        %{

            disp(P(L:P(R+1)-1)); %피봇 이전행
            disp(P(P(R+1)));%피봇
            disp(P(P(R+1)+1:R));% 피봇 이후 행
                
            %sortedNumDB(,); %피봇값이 넘어가고
                Y.sortedNumDB(P(P(R+1)),P(R+1));
            이부분이 인스턴스를 이용하려 했지만 실패한 부분이다.
        %}

        %when patition function ends, 
        % changes are not applied to 
        % original one.

        %생각해보면 너무 당연한게 
        % X가 인자로 전달된 그대로라 어쩔수가 없다.
            %sol #1 : 새로운 벡터를 생성 후 
                % patition함수
        X = quickSort(P(L:P(R+1)-1), L, P(R+1)-L);
        X = quickSort(P(P(R+1)+1:R), L, R-P(R+1));
    end
end