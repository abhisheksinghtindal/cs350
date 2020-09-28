%1.3
declare
fun{Merge X Y}
    if X==nil
    then Y
    else
        if Y==nil
        then X
        else
            if X.1<Y.1
            then X.1|{Merge X.2 Y}
            else
                Y.1|{Merge X Y.2}
            end
        end
    end
end