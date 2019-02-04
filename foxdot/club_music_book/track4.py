import FoxDot as fd
import numpy as np

fd.Clock.bpm = 170
fd.Root.default.set("C")

fd.SynthDefs


fd.d1 >> fd.play("x    x  ")
fd.d2 >> fd.play("= = = = ")
fd.d3 >> fd.play("--------")
fd.d4 >> fd.play("  o ", sample=3)
fd.d5 >> fd.play("  -[ -][ -] - ", sample=2)

fd.d1.stop()
fd.d2.stop()
fd.d3.stop()
fd.d4.stop()
fd.d5.stop()
