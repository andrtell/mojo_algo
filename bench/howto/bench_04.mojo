def my_function(mut input: List[Int]):  # benchmark this
    sort(input)


def my_preproc_iter(mut state: List[Int]):  # pre-proc(ess) each iteration
    std.random.shuffle(state)


def main():
    var input: List[Int] = [n for n in range(1000)]

    var num_iters = 100

    var elapsed = 0

    for _ in range(num_iters):
        my_preproc_iter(input)  # pre-proc(ess) each iteration

        var start = std.time.perf_counter_ns()
        my_function(input)  # benchmark this
        var stop = std.time.perf_counter_ns()

        elapsed += stop - start

    print(t"Done after {elapsed} ns.")
