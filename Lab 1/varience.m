function sigma_2 = varience(S)
    if iscolumn(S)
        sigma_2 = sum((S-first_moment(S)).^2)/(length(S)-1);
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