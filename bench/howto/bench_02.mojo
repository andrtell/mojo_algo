def main():
    var input: List[Int] = [n for n in range(1000)]

    std.random.shuffle(input)

    var start = std.time.perf_counter_ns()
    sort(input)  # benchmark this
    var stop = std.time.perf_counter_ns()

    var elapsed = stop - start

    print(t"Done after {elapsed} ns.")
