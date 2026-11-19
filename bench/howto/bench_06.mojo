def my_function(mut state: List[Int]):  # benchmark this
    sort(state)


def my_preproc_iter(mut state: List[Int]):  # pre-proc(ess) each iteration
    std.random.shuffle(state)


def bench_fn(mut bencher: std.benchmark.Bencher, input: List[Int]):
    var state = input.copy()
    bencher.iter_preproc(state, my_function, my_preproc_iter)


def main():
    var input: List[Int] = [n for n in range(1000)]

    try:
        var bench = std.benchmark.Bench()

        bench.bench_with_input(
            bench_fn,
            std.benchmark.BenchId("Example run 1"),
            input,
        )

        print(bench)
    except e:
        print(e)
