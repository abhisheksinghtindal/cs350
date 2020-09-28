%2.3
declare
fun {FoldL Ls F Z} % Fold function with folds the list Ls from left using function F and initial value Z
    case Ls
    of nil then Z % If the list is empty , just return the initial value Z
    [] (X|XS) then {FoldL (XS) F {F Z X}} % Else , apply FoldL on the rest of the list using F and the new inital value {F Z X}
    end
end