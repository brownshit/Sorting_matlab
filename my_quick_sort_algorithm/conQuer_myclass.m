classdef conQuer_myclass<handle
    % 절대 인스턴스를 사용해서 하지 않아야 한다.
    properties
        Vec;
    end

    methods
        %생성자
        function this = conQuer_myclass(N)
            this.Vec = zeros(1,N);
        end
        %멤버함수
        function sortedNumDB(this,k,n)
            this.Vec(n) = k;
        end
        function Y = getVec(this)
            Y = this.Vec;
        end
    end
end