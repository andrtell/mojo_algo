from std.testing import TestSuite, assert_equal

from selection_sort import (
    selection_sort_v1,
    selection_sort_v2,
)


def test_selection_sort_v2() raises:
    var got: List[Int]
    var want: List[Int]

    got = []
    want = []
    selection_sort_v2(got)
    assert_equal(got, want)

    got = [1]
    want = [1]
    selection_sort_v2(got)
    assert_equal(got, want)

    got = [2, 1]
    want = [1, 2]
    selection_sort_v2(got)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    selection_sort_v2(got)
    assert_equal(got, want)


def test_selection_sort_v1() raises:
    var got: List[Int]
    var want: List[Int]

    got = []
    want = []
    selection_sort_v1(got)
    assert_equal(got, want)

    got = [1]
    want = [1]
    selection_sort_v1(got)
    assert_equal(got, want)

    got = [2, 1]
    want = [1, 2]
    selection_sort_v1(got)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    selection_sort_v1(got)
    assert_equal(got, want)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
