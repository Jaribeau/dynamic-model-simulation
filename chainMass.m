function m4 = chainMass( dL, m, L )
    % Function to output the mass of the portion of chain 
    % above the table, where:
    % m = mass of chain above the table at rest
    % L = length of chain above the table at rest
    % dL = change in length of chain above the table (x1+x2)
    m4 = m*(1 + dL/L);
end

