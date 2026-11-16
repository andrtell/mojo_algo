from std.testing import TestSuite, assert_equal

from sort import (
    insertion_sort,
    selection_sort,
    bubble_sort,
)

comptime U = List[Int]


def test_insertion_sort() raises:
    comptime f = insertion_sort

    var got: U = []
    var want: U = []
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [1]
    want = [1]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [7, 3]
    want = [3, 7]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    f(got, Int.__lt__)
    assert_equal(got, want)


def test_selection_sort() raises:
    comptime f = selection_sort

    var got: U = []
    var want: U = []
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [1]
    want = [1]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [7, 3]
    want = [3, 7]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    f(got, Int.__lt__)
    assert_equal(got, want)


def test_bubble_sort() raises:
    comptime f = bubble_sort

    var got: U = []
    var want: U = []
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [1]
    want = [1]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [7, 3]
    want = [3, 7]
    f(got, Int.__lt__)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    f(got, Int.__lt__)
    assert_equal(got, want)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
