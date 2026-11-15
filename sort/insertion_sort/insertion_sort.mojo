def insertion_sort_v2[
    T: Movable & Comparable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin]):
    def _less_than_fn(a: T, b: T) -> Bool:
        return a < b

    insertion_sort_v2(span, _less_than_fn)


def insertion_sort_v2[
    T: Movable,
    U: def(T, T) -> Bool,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_than_fn: U):
    for i in range(1, len(span)):
        for j in range(i, 0, -1):
            if less_than_fn(span[j - 1], span[j]):
                break
            span.unsafe_swap_elements(j, j - 1)


def insertion_sort_v1[
    T: Movable & Comparable,
    //,
](mut list: List[T]):
    for i in range(1, len(list)):
        for j in range(i, 0, -1):
            if list[j] > list[j - 1]:
                break
            list.swap_elements(j, j - 1)
