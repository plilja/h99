data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList b -> [b]
myFlatten (Elem a) = [a]
myFlatten (List (a:x)) = myFlatten a ++ myFlatten (List x)
myFlatten (List []) = []
