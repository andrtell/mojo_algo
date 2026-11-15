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
    pass


def insertion_sort_v1[
    T: Movable & Comparable,
    //,
](mut list: List[T]):
    pass
