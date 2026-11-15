from std.testing import TestSuite, assert_equal

from insertion_sort import (
    insertion_sort_v1,
    insertion_sort_v2,
    insertion_sort_v3,
)


def test_insertion_sort_v3() raises:
    var got: List[Int]
    var want: List[Int]

    got = []
    want = []
    insertion_sort_v3(got)
    assert_equal(got, want)

    got = [1]
    want = [1]
    insertion_sort_v3(got)
    assert_equal(got, want)

    got = [2, 1]
    want = [1, 2]
    insertion_sort_v3(got)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    insertion_sort_v3(got)
    assert_equal(got, want)


# def test_insertion_sort_v2() raises:
#     var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
#     var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
#     insertion_sort_v2(got)
#     assert_equal(got, expect)


def test_insertion_sort_v1() raises:
    var got: List[Int]
    var want: List[Int]

    got = []
    want = []
    insertion_sort_v1(got)
    assert_equal(got, want)

    got = [1]
    want = [1]
    insertion_sort_v1(got)
    assert_equal(got, want)

    got = [2, 1]
    want = [1, 2]
    insertion_sort_v1(got)
    assert_equal(got, want)

    got = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    want = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    insertion_sort_v1(got)
    assert_equal(got, want)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
