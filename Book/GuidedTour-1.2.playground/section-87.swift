func anyCommonElements <T, U> (lhs: T, rhs: U) -> Bool where T: Sequence, U: Sequence, T.Iterator.Element: Equatable, T.Iterator.Element == U.Generator.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
   return false
}
//anyCommonElements([1, 2, 3], [3])
