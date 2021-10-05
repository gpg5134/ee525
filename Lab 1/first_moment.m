function mu = first_moment(S)
    if iscolumn(S)
        mu = sum(S)/length(S);
    else
        mu = zeros(length(S),1);
        for n = 1:length(mu)
            mu(n) = sum(cell2mat(S(n)))/length(cell2mat(S(n)));
        end
    end
end