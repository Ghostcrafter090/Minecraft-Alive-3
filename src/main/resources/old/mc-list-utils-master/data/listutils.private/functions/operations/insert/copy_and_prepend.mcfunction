# Author: PeerHeer
#
# Copies the input list to the output list and prepends the input data to it.

data modify storage listutils:out List set from storage listutils:in List
execute store result score $listutils.success listutils.out run data modify storage listutils:out List prepend from storage listutils:in Data
