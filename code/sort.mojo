def insertion_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var a: Span[T, origin], less_than: def(T, T) thin -> Bool,):
    var i = 1
    while i < len(a):
        var j = i
        while j > 0 and less_than(a[j], a[j - 1]):
            a.unsafe_swap_elements(j, j - 1)
            j -= 1
        i += 1


def selection_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var a: Span[T, origin], less_than: def(T, T) thin -> Bool,):
    var i = 0
    while i < len(a) - 1:
        var m = i
        var j = i + 1
        while j < len(a):
            if less_than(a[j], a[m]):
                m = j
            j += 1
        if i != m:
            a.unsafe_swap_elements(i, m)
        i += 1


def bubble_sort[
    T: Movable,
    origin: MutOrigin,
    //,
](var a: Span[T, origin], less_than: def(T, T) thin -> Bool,):
    var n = len(a)
    while n > 1:
        var m = 0
        var j = 1
        while j < n:
            if less_than(a[j], a[j - 1]):
                a.unsafe_swap_elements(j, j - 1)
                m = j
            j += 1
        n = m
