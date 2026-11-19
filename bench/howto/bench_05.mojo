def my_function(mut state: List[Int]):  # benchmark this
    sort(state)


def my_preproc_iter(mut state: List[Int]):  # pre-proc(ess) each iteration
    std.random.shuffle(state)


def main():
    var state: List[Int] = [n for n in range(1000)]

    var bencher = std.benchmark.Bencher(num_iters=100)

    bencher.iter_preproc(state, my_function, my_preproc_iter)

    print(t"Done after {bencher.elapsed} ns.")
