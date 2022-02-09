
data modify storage listutils.private:iterator TempList set from storage listutils.private:iterator Root.Iterable[-1]
data modify storage listutils:out List prepend from storage listutils.private:iterator TempList[0]