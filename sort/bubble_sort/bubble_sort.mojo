def bubble_sort_v4[
    T: Movable & Comparable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin]):
    def _less_then_fn(a: T, b: T) -> Bool:
        return a < b

    bubble_sort_v4(span, _less_then_fn)


def bubble_sort_v4[
    T: Movable,
    U: def(T, T) -> Bool,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_then_fn: U):
    var n = len(span)
    while True:
        var swap_at = 0
        for i in range(1, n):
            if less_then_fn(span[i], span[i - 1]):
                span.unsafe_swap_elements(i, i - 1)
                swap_at = i
        n = swap_at
        if n <= 1:
            break


def bubble_sort_v3[
    T: Movable & Comparable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin]):
    var n = len(span)
    while True:
        var swap_at = 0
        for i in range(1, n):
            if span[i - 1] > span[i]:
                span.unsafe_swap_elements(i - 1, i)
                swap_at = i
        n = swap_at
        if n <= 1:
            break


def bubble_sort_v2[
    T: Movable & Comparable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin]):
    var n = len(span)
    while True:
        var swapped = False
        for i in range(1, n):
            if span[i - 1] > span[i]:
                span.unsafe_swap_elements(i - 1, i)
                swapped = True
        n -= 1
        if not swapped:
            break


def bubble_sort_v1[
    T: Movable & Comparable,
    //,
](mut lst: List[T]):
    while True:
        var swapped = False
        for i in range(1, len(lst)):
            if lst[i - 1] > lst[i]:
                lst.swap_elements(i - 1, i)
                swapped = True
        if not swapped:
            break
