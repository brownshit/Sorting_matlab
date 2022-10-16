%insertion_sort speed test

timesum = 0;

%아래를 반복하면서 시간의 평균을 구해야한다.
%아래가 무작위 벡터

for i = 1:1:1000
    %시계시작
    t=clock;

    X = randi(10,1,100);
    N = length(X);
    Y = insertion_sort(X, N);
    %사이시간반환
    timesum = timesum + etime(clock,t);

end
avrageTime = timesum/10000;
disp("time average : "+avrageTime);
