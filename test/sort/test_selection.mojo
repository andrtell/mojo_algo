from std.testing import TestSuite, assert_equal

from code.sort import selection_sort


comptime U = List[Int]


def lt(a: Int, b: Int) -> Bool:
    return a < b


def test_selection_sort() raises:
    comptime f = selection_sort

    var got: U = []
    var want: U = []

    f(got, lt)
    assert_equal(got, want)

    got = [1]
    want = [1]
    f(got, lt)
    assert_equal(got, want)

    got = [7, 3]
    want = [3, 7]
    f(got, lt)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    f(got, lt)
    assert_equal(got, want)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
