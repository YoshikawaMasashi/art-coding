import FoxDot

FoxDot.Root.default.set("Ab")
FoxDot.Clock.bpm = 90

sabi_notes = \
    [0, 2, 1, 0, 1, 2, 3, 4, 0, -1, 0,
     4, 7, 0, 4, 3, 2, 0, 2, 3, 4,
     -3, 0, 1, 0, 1, 2, 3, 4, 7, 6, 4,
     0, 4, 7, 1, 2, 3, 0, 0]
sabi_dur = \
    [1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 0.5,
     1.5, 0.5, FoxDot.rest(0.5), 0.5, 0.5, 0.5, FoxDot.rest(0.5), 0.5, 0.5, 2.5,
     1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.25, 0.75, 0.5,
     FoxDot.rest(1), 1, 1, 0.5, 0.5, 0.75, 0.75, 2.5]

bass_notes = \
    [0, 4, 5, 3, 0, 4, 3, 10,
     0, 4, 5, 3, 0, 4, 3, 2, 1]
bass_dur = \
    [2, 2, 2, 2, 2, 2, 2, 2,
     2, 2, 2, 2, 2, 2, 1, 1, 2]

print(FoxDot.SynthDefs)

FoxDot.p1 >> FoxDot.SynthDef('saw')(sabi_notes, dur=sabi_dur, amp=0.75)
FoxDot.p2 >> FoxDot.SynthDef('bass')(
    bass_notes, dur=bass_dur, amp=0.7, pshift=-12)
FoxDot.b1 >> FoxDot.play(
    "<x x x (x[xx])( [xxxx])><------(-#)(- )><  o[-o][ o] (o )(  )>")

FoxDot.p1.stop()
FoxDot.p2.stop()
FoxDot.b1.stop()
