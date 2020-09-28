%2.1
declare
local ZipWith Product Sum Subtract in
    fun {Product A B}
        A*B
    end
    fun {ZipWith BinOp Xs Ys}
        case Xs
        of nil then nil
        []H|T then
            case Ys
            of nil then nil
            [] H1|T1 then {BinOp H H1}|{ZipWith BinOp T T1}
            end
        end
    end
end