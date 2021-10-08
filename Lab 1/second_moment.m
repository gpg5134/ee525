function sigma_2 = second_moment(S)
    if iscolumn(S)
        rms = zeros(length(S),1);
        for n = 1:length(S)
            rms(n) = (S(n)-first_moment(S))^2;
        end
        sigma_2 = sum(rms)/(length(S)-1);
    else
        sigma_2 = zeros(1, width(S));
        for n = 1:length(sigma_2)
            rv = table2array(S(:,n));
            rms = zeros(length(rv),1);
            for m = 1:length(rms)
                rms(m) = (rv(m)-first_moment(rv))^2;
            end
            sigma_2(1,n) = sum(rms)/(length(rv)-1);
        end
    end
end