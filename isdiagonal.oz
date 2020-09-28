%4.
fun {Kth L K} 
	case L 
	of nil 
	then nil 
	else 
		if K==0 then L.1 else {Elt L.2 K-1} end end end
end
fun {Helper M I}
  local Row in
    Row = {Kth M I}
    case Row of nil then true
    else
      if {Helper2 Row I 0} then {Helper M I+1} else false end
    end
  end
end
%4
declare
fun {Helper2 Row I J}
  local Cell in
    Cell = {Kth Row J}
    case Cell of nil then true
    else
        if I==J then {Helper2 Row I J+1}
        else 
            if Cell==0 then {Helper2 Row I J+1}
            else false
            end
        end
    end
end

fun {Helper M I}
  local Row in
    Row = {Kth M I}
    case Row of nil then true
    else
        if {Helper2 Row I 0} then {Helper M I+1} else false end
    end
  end
end

fun {IsDiagonal M}
    {Helper M 0}
end