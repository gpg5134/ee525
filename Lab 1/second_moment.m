function sigma_2 = second_moment(S)
    if iscolumn(S)
        rms = zeros(length(S),1);
        for n = 1:length(S)
            rms(n) = (S(n)-first_moment(S))^2;
        end
        sigma_2 = sum(rms)/(length(S)-1);
    else
        for n = 1:length(S)
            rv = cell2mat(S(:,n));
            rms = zeros(length(rv),1);
            for m = 1:length(rms)
                rms(m) = (rv(m)-first_moment(rv))^2;
            end
            sigma_2(n,1) = sum(rms)/(length(rv)-1);
        end
    end
end