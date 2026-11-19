from std.random import shuffle
from std.benchmark import Bench, Bencher, BenchId, keep

from code.sort import insertion_sort, selection_sort, bubble_sort


def lt(a: Int, b: Int) -> Bool:
    return a < b


def shuffle_ints(mut lst: List[Int]):
    shuffle(lst)


def run_builtin_sort(mut b: Bencher, size: Int):
    var state = [n for n in range(size)]
    b.iter_preproc(
        state, lambda (mut list: List[Int]): sort(list, lt), shuffle_ints
    )
    keep(state)


def run_insertion_sort(mut b: Bencher, size: Int):
    var state = [n for n in range(size)]
    b.iter_preproc(
        state,
        lambda (mut list: List[Int]): insertion_sort(list, lt),
        shuffle_ints,
    )
    keep(state)


def run_selection_sort(mut b: Bencher, size: Int):
    var state = [n for n in range(size)]
    b.iter_preproc(
        state,
        lambda (mut list: List[Int]): selection_sort(list, lt),
        shuffle_ints,
    )
    keep(state)


def run_bubble_sort(mut b: Bencher, size: Int):
    var state = [n for n in range(size)]
    b.iter_preproc(
        state, lambda (mut list: List[Int]): bubble_sort(list, lt), shuffle_ints
    )
    keep(state)


def main():
    try:
        var bench = std.benchmark.Bench()

        bench.bench_with_input(
            run_builtin_sort,
            std.benchmark.BenchId("builtin sort"),
            500,
        )

        bench.bench_with_input(
            run_insertion_sort,
            std.benchmark.BenchId("insertion sort"),
            500,
        )

        bench.bench_with_input(
            run_selection_sort,
            std.benchmark.BenchId("selection sort"),
            500,
        )

        bench.bench_with_input(
            run_bubble_sort,
            std.benchmark.BenchId("bubble sort"),
            500,
        )

        print(bench)
    except e:
        print(e)
