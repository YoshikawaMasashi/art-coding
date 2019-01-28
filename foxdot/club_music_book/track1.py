import FoxDot as fd

fd.Clock.bpm = 130
fd.Root.default.set("C")

fd.SynthDefs


fd.r1 >> fd.fuzz(
    [0, 3, 1.5, 3, 4, 1.5, 0, 0, 0, 1.5, 0, -1.5, 1.5, 0, 0],
    dur=[fd.rest(1), 0.5, 0.5, 1, 0.5, 0.5, fd.rest(0.5), 3.5, fd.rest(2), 0.5, 0.5, 0.5, 0.5, fd.rest(0.5), 3.5],
    oct=5
)

fd.b1 >> fd.sawbass(
    [-4, 0, 0, 1.5, 0, 4, 3, -1.5, -1, 0, 0, -1.5, 0, 1.5, -1.5, 0, -1.5, -3, -3.5],
    dur=[1, fd.rest(2.5), 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 0.5, 1, fd.rest(2.5), 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5],
    oct=5
)

fd.s1 >> fd.saw(
    [0, (0, 3, 5), 0, 0, (0, 3, 5), 0, 0, (0, 2, 4), 0, 0, (0, 2, 4), 0],
    dur=[fd.rest(1), 1, fd.rest(2), fd.rest(1.5), 1, fd.rest(1.5),
         fd.rest(1), 1, fd.rest(2), fd.rest(1.5), 1, fd.rest(1.5)])
fd.s2 >> fd.creep([(-4, -2, 0), (-5, -3, 0)], dur=[8, 8], amp=0.3)

fd.d1 >> fd.play("<x o  xx xx o xx >", amp=0.5, sample=4)
fd.d2 >> fd.play("=-=-=-=-", amp=0.3, sample=2)

fd.b1.stop()
fd.s1.stop()
fd.s2.stop()
fd.d1.stop()
fd.d2.stop()
