function mu = first_moment(S)
    if iscolumn(S)
        mu = sum(S)/length(S);
    else
        mu = zeros(1, width(S));
        for n = 1:length(mu)
            mu(n) = sum(S{:,n})/length(S{:,n});
        end
    end
end