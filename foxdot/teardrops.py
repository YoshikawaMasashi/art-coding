import FoxDot as fd

fd.Clock.bpm = 110
fd.Root.default.set("Gb")

print(fd.SynthDefs)

fd.p1 >> fd.SynthDef('bass')(
    [3, -1, 3, 4, 2, 0, 3, 4, 5, 0],
    dur=[1.25, 0.25, 0.5, 2, 2, 2, 2, 2, 2, 2],
    amp=0.5)

fd.p2 >> fd.saw([4, 0, 0, 0, 1, 4, 3, 2, 1, 0, 0, 2, 1, 0, 0, 4, 3, 2, 3, 2, 1]
                + [4, 0, 0, 0, 1, 4, 3, 2, 1, 0, 0, 2, 1, 0, -1, 0],
                dur=[1.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1.5, 1, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 1]
                    + [1.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1.5, 1, 0.5, 1, 0.5, 0.5, 4.5],
                amp=0.5)

fd.p3 >> fd.viola([2, 1, 2, 1, 0, 1, 3, 2, 0], dur=[4, 2, 1, 1, 2, 2, 1, 1, 2], amp=0.5)

fd.d1 >> fd.play("x o [xo]xo( =)")

fd.p1.stop()
fd.p2.stop()
fd.p3.stop()
fd.d1.stop()
