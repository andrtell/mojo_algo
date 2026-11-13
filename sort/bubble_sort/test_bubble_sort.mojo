from std.testing import TestSuite, assert_equal

from bubble_sort import (
    bubble_sort_v1,
    bubble_sort_v2,
    bubble_sort_v3,
    bubble_sort_v4,
)


def test_bubble_sort_v4() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    bubble_sort_v4(got)
    assert_equal(got, expect)


def test_bubble_sort_v3() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    bubble_sort_v3(got)
    assert_equal(got, expect)


def test_bubble_sort_v2() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    bubble_sort_v2(got)
    assert_equal(got, expect)


def test_bubble_sort_v1() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    bubble_sort_v1(got)
    assert_equal(got, expect)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
