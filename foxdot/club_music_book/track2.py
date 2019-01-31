import FoxDot as fd
import numpy as np

fd.Clock.bpm = 90
fd.Root.default.set("C")

fd.SynthDefs

bp = [-3, -3, -3, -3,  0,  0,  3,  3,  0,  0]

fd.l1 >> fd.pulse([0, -2, -2, 3, 2, 1, 0, 1, 2, -3, 0, -3, -3, -2, -2, 0, 0, 0, 0, -3, -3, -2, -2, 0, 0, 0],
                  dur=[fd.rest(1), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 2,
                       fd.rest(0.25), 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, fd.rest(1.0),
                       fd.rest(0.25), 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, fd.rest(1.0)],
                  oct=5)

fd.b1 >> fd.jbass([p - i for i in range(4) for p in bp],
                  dur=[0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, fd.rest(0.5), 0.5] * 4,
                  amp=0.6,
                  oct=6)

fd.p1 >> fd.bell([0, (0, 3, 5), 0] * 4 + [0, (-1, 2, 4), 0] * 4 + [0, (-2, 1, 3), 0] * 4 + [0, (-3, 0, 2), 0] * 4,
                 dur=[fd.rest(0.5), 0.25, fd.rest(0.25)],
                 amp=0.3)
fd.p2 >> fd.swell([(-2, 0, 3), (-3, -1, 2), (-4, -2, 1), (-5, -3, 0), (-5, -3, 1), (-3, 0, 2)],
                  dur=[4, 4, 4, 2.5, 0.5, 1],
                  amp=0.3)

fd.d1 >> fd.play("<x o  xo x o  xo x o  xo x [[o ][ o]][[ ][o ]] x[[o ][ o]][[  ][o ]]>", amp=0.4, sample=2)
fd.d2 >> fd.play("[--][- ][- ][--]", sample=3)

fd.l1.stop()
fd.b1.stop()

fd.p1.stop()
fd.p2.stop()

fd.d1.stop()
fd.d2.stop()
