def main():
    var start = std.time.perf_counter_ns()
    std.time.sleep(0.01)  # benchmark this
    var stop = std.time.perf_counter_ns()

    var elapsed = stop - start

    print(t"Done after {elapsed} ns.")
