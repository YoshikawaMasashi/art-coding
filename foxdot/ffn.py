import FoxDot as fd

fd.Root.default.set("Ab")
fd.Clock.bpm = 90

sabi_notes = \
    [0, 2, 1, 0, 1, 2, 3, 4, 0, -1, 0,
     4, 7, 0, 4, 3, 2, 0, 2, 3, 4,
     -3, 0, 1, 0, 1, 2, 3, 4, 7, 6, 4,
     0, 4, 7, 1, 2, 3, 0, 0]
sabi_dur = \
    [1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 0.5,
     1.5, 0.5, fd.rest(0.5), 0.5, 0.5, 0.5, fd.rest(0.5), 0.5, 0.5, 2.5,
     1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.25, 0.75, 0.5,
     fd.rest(1), 1, 1, 0.5, 0.5, 0.75, 0.75, 2.5]

bass_notes = \
    [0, 4, 5, 3, 0, 4, 3, 10,
     0, 4, 5, 3, 0, 4, 3, 2, 1]
bass_dur = \
    [2, 2, 2, 2, 2, 2, 2, 2,
     2, 2, 2, 2, 2, 2, 1, 1, 2]

guitar_notes = \
    [fd.P(0, 2, 4, 8), fd.P(4, 6, 8), fd.P(5, 7, 9), fd.P(3, 5, 7),
     fd.P(0, 2, 4, 8), fd.P(4, 6, 8), fd.P(3, 5, 7), fd.P(3, 5, 7),
     fd.P(0, 2, 4, 8), fd.P(4, 6, 8), fd.P(5, 7, 9), fd.P(3, 5, 7),
     fd.P(0, 2, 4, 8), fd.P(4, 6, 8),
     fd.P(3, 5, 7), fd.P(0, 2, 4), fd.P(4, 6, 8)]
guitar_dur = \
    [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2]

print(fd.SynthDefs)

fd.p1 >> fd.SynthDef('saw')(sabi_notes, dur=sabi_dur, amp=0.75, fmod=0.5,
                            vib=6, vibdepth=0.01).spread()
fd.p2 >> fd.SynthDef('bass')(
    bass_notes, dur=bass_dur, amp=0.4, pshift=-12)
fd.p3 >> fd.SynthDef('nylon')(
    guitar_notes, dur=guitar_dur, amp=0.2, pshift=-12)
fd.d1 >> fd.play(
    "<x x x (x[xx])( [xxxx])><------(-#)(- )><  o[-o][ o] (o )(  )>", amp=0.5)


fd.p1.stop()
fd.p2.stop()
fd.p3.stop()
fd.d1.stop()
