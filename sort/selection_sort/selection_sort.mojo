def selection_sort_v2[
    T: Movable & Comparable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin]):
    def _less_than_fn(a: T, b: T) -> Bool:
        return a < b

    selection_sort_v2(span, _less_than_fn)


def selection_sort_v2[
    T: Movable,
    U: def(T, T) -> Bool,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_than_fn: U):
    var n = len(span)
    for i in range(0, n - 1):
        var k = i
        for j in range(i + 1, n):
            if less_than_fn(span[j], span[k]):
                k = j
        if i != k:
            span.unsafe_swap_elements(i, k)


def selection_sort_v1[
    T: Movable & Comparable,
    //,
](mut list: List[T]):
    var n = len(list)
    for i in range(0, n - 1):
        var k = i
        for j in range(i + 1, n):
            if list[j] < list[k]:
                k = j  # found a smaller element
        if i != k:
            list.swap_elements(i, k)
