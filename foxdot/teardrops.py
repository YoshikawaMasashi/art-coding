import FoxDot as fd

fd.Clock.bpm = 110
fd.Root.default.set("Gb")

print(fd.SynthDefs)

fd.p1 >> fd.SynthDef('bass')(
    [3, -1, 3, 4, 2, 0, 3, 4, 5, 0],
    dur=[1.25, 0.25, 0.5, 2, 2, 2, 2, 2, 2, 2],
    amp=0.5)

fd.p2 >> fd.saw([4, 0, 0, 0, 1, 4, 3, 2, 1, 0, 0, 2, 1, 0, 0, 4, 3, 2, 3, 2, 1],
                dur=[1.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1.5, 1, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 1],
                amp=0.5)
fd.d1 >> fd.play("x o [xo]xo( =)")

fd.p1.stop()
fd.p2.stop()
fd.d1.stop()
