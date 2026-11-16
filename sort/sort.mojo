def insertion_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_than: def(T, T) thin -> Bool,) raises:
    for last in range(1, len(span)):
        for cur in range(last, 0, step=-1):
            if less_than(span[cur], span[cur - 1]):
                span.swap_elements(cur, cur - 1)
            else:
                break


def selection_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_than: def(T, T) thin -> Bool,) raises:
    var end = len(span)
    for first in range(0, end - 1):
        var min = first
        for cur in range(first + 1, end):
            if less_than(span[cur], span[min]):
                min = cur
        if first != min:
            span.swap_elements(first, min)


def bubble_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var span: Span[T, origin], less_than: def(T, T) thin -> Bool,) raises:
    var end = len(span)
    while end > 1:
        var max = 0
        for cur in range(1, end):
            if less_than(span[cur], span[cur - 1]):
                span.swap_elements(cur, cur - 1)
                max = cur
        end = max
