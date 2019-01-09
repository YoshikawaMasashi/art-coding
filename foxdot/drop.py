import FoxDot as fd

fd.Root.default.set("E")
fd.Clock.bpm = 120

main_melody_notes = [4, 1, 0, -3, -1, 0, 2, 1, 0, -1]
main_melody_dur = [1.5, 1.5, 1.5, 1.5, 2.0, 1.5, 1.5, 1.5, 1.5, 2.0]

print(fd.FxList)

print(fd.SynthDefs)

fd.m1 >> fd.SynthDef('nylon')(
    main_melody_notes, dur=main_melody_dur, amp=0.2, echo=1.0, delay=(0, 1.0))
fd.m2 >> fd.SynthDef('soft')((-3, 0), dur=8, amp=0.5)

fd.m1.stop()
fd.m2.stop()
