function [m, j] = Br(d)

% Implementation of the Bland's rule applied to the array d.

% This function is called from within the following functions:

% simplex2p, dsimplex, addconstr, simplex and cpa.

% Output parameters:

% m - first negative number in the array d

% j - index of the entry m.

ind = find(d < 0);

if ~isempty(ind)

j = ind(1);

m = d(j);

else

m = [];

j = [];

end
