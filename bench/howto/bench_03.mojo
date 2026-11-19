def main():
    var input: List[Int] = [n for n in range(1000)]

    var num_iters = 100

    var elapsed = 0

    for _ in range(num_iters):
        std.random.shuffle(input)  # pre-proc(ess) each iteration

        var start = std.time.perf_counter_ns()
        sort(input)  # benchmark this
        var stop = std.time.perf_counter_ns()

        elapsed += stop - start

    print(t"Done after {elapsed} ns.")
