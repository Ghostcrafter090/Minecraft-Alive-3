
data modify storage listutils:out List set from storage listutils:in List
execute store result score $listutils.success listutils.out run data modify storage listutils:out List append from storage listutils:in Data