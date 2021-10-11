function C = correl(S1, S2)
        C = sum((S1-ones(length(S1))*first_moment(S1)).*(S2-ones(length(S2))*first_moment(S2)));
end