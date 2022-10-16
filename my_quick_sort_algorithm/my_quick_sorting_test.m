%quickSort speed test

timesum = 0;

%아래를 반복하면서 시간의 평균을 구해야한다.
%아래가 무작위 벡터

for i = 1:1:10000
    %시계시작
    t=clock;

    X = randi(10,1,randi(10,1));
    N = length(X);
    quickSort(X, 1,N);

    %사이시간반환
    timesum = timesum + etime(clock,t);

    %시간이 time average : 3e-06 를 넘지 않게.

end
avrageTime = timesum/10000;
disp("time average : "+avrageTime);
