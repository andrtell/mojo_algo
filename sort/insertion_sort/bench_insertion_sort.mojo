from std.benchmark import keep, run, Unit
from std.random import seed, random_float64

from insertion_sort import insertion_sort_v2


def main() raises:
    comptime N = 1000

    seed(119)

    var random_list = List[Float64](capacity=N)

    for _ in range(N):
        random_list.append(random_float64())

    def bench_fn() {imm random_list}:
        var tmp = random_list.copy()  # TODO: move out of benchmark
        insertion_sort_v2(tmp)
        keep(tmp)

    var report = run(bench_fn)

    report.print(Unit.ms)
