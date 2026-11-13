from std.benchmark import keep, run, Unit
from std.random import seed, random_float64

from bubble_sort import bubble_sort_v4


def main() raises:
    comptime N = 1000

    seed(119)

    var random_list = List[Float64](capacity=N)

    for _ in range(N):
        random_list.append(random_float64())

    def bench_fn() {imm random_list}:
        var tmp = random_list.copy()  # TODO: move out of benchmark
        bubble_sort_v4(tmp)
        keep(tmp)

    var report = run(bench_fn)

    report.print(Unit.ms)
