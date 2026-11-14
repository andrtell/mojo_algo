from std.testing import TestSuite, assert_equal

from selection_sort import (
    selection_sort_v1,
    selection_sort_v2,
)

def test_selection_sort_v2() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    selection_sort_v2(got)
    assert_equal(got, expect)


def test_selection_sort_v1() raises:
    var got: List[_] = [5, 4, 6, 5, 3, 1, 2, 2, 5]
    var expect: List[_] = [1, 2, 2, 3, 4, 5, 5, 5, 6]
    selection_sort_v1(got)
    assert_equal(got, expect)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
