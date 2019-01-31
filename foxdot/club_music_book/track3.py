import FoxDot as fd
import numpy as np

fd.Clock.bpm = 90
fd.Root.default.set("C")

fd.SynthDefs

fd.p1 >> fd.orient([
    (-7-4, 0, 2, 5), (-7-5, -1, 1, 4), (-7-3, -3, 0.5, 3),
    (-7-6, -4, -2, 0, 2), (-7-4, -4, -2, 0, 1), (-7-7, -3, -1.5, 1, 3), (-7-4.5, -4.5, -1.5, 0, 2)],
    dur=[4, 2, 2, 2, 2, 2, 2], amp=0.1, oct=4)

fd.d1 >> fd.play("-[- -]-[- -]-(=[- -])-([- -][---][- -][- -])", sample=2, amp=0.5)
fd.d2 >> fd.play("x x x x ", sample=6)
fd.d3 >> fd.play("  o   o ", sample=3)

fd.p1.stop()

fd.d1.stop()
fd.d2.stop()
fd.d3.stop()
