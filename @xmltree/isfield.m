function F = isfield(tree,uid,parameter)
% XMLTREE/ISFIELD Is parameter a field of tree{uid} ?
% FORMAT F = isfield(tree,uid,parameter)
%
% tree      - a tree
% uid       - uid of the element
% parameter - a field of the root tree
% F         - 1 if present, 0 otherwise
%_______________________________________________________________________
%
% Is parameter a field of tree{uid} ?
%_______________________________________________________________________
% Copyright (C) 2002-2008  http://www.artefact.tk/

% Guillaume Flandin <guillaume@artefact.tk>
% $Id: isfield.m 1460 2008-04-21 17:43:18Z guillaume $

narginchk(3,3);

F = zeros(1,length(uid));
for i=1:length(uid)
    if isfield(tree.tree{uid(i)},parameter)
        F(i) = 1;
    end
end
