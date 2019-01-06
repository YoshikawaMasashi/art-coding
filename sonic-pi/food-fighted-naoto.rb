sabi_notes = [
  :Ab4, :C5, :Bb4, :Ab4, :Bb4,
  :C5, :Db5, :Eb5, :Ab4, :G4, :Ab4,
  :Eb5, :Ab5, :r, :Eb5, :Db5, :C5,
  :r, :C5, :Db5, :Eb5,
  :Eb4, :Ab4, :Bb4, :Ab4, :Bb4,
  :C5, :Db5, :Eb5, :Ab5, :G5, :Eb5,
  :r, :Eb5, :Ab5, :Bb4, :C5,
  :Db5, :Ab4, :Ab4
]
sabi_durations = [
  1.0, 1.0, 1.0, 0.5, 0.5,
  0.5, 0.5, 0.5, 1.5, 0.5, 0.5,
  1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
  0.5, 0.5, 0.5, 2.5,
  1.0, 1.0, 1.0, 0.5, 0.5,
  0.5, 0.5, 0.5, 1.25, 0.75, 0.5,
  1.0, 1.0, 1.0, 0.5, 0.5,
  0.75, 0.75, 2.5
]

sabi_bass_notes = [
  :Ab2, :Eb3, :F3, :Db3, :Ab2, :Eb3, :Db3, :Db4,
  :Ab2, :Eb3, :F3, :Db3, :Ab2, :Eb3, :Db3, :C3, :Bb2,
]
sabi_bass_durations = [
  2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0,
  2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 1.0, 1.0, 2.0
]

live_loop :melody do
  use_bpm 90
  use_synth :tri
  play_pattern_timed sabi_notes, sabi_durations, amp: 0.4
end

live_loop :bass do
  use_bpm 90
  use_synth :tri
  play_pattern_timed sabi_bass_notes, sabi_bass_durations, amp: 0.6
end

live_loop :synth do
  use_bpm 90
  use_synth :tri
  play_pattern_timed chord(:Ab3, :add9), 0.5,
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Eb4, :maj), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:F4, :min), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Db4, :maj), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Ab3, :add9), 0.5,
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Eb4, :maj), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Db4, :maj), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
  play_pattern_timed chord(:Db4, :maj), [0.5, 0.5, 1.0],
    amp: 0.6, cutoff: 100, attack: 0.0, attack_level: 1, decay: 0.8, decay_level: 0.1, sustain_level: 0.0
end

live_loop :drums do
  use_bpm 90
  sample :bd_ada, amp: 2.0
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :sn_dolf
  sample :bd_ada, amp: 2.0
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.33
  sample :sn_dolf, amp: 0.7
  sleep 0.17
  sample :bd_ada, amp: 2.0
  sample :drum_cymbal_closed
  sleep 0.33
  sample :sn_dolf, amp: 0.7
  sleep 0.17
  sample :drum_cymbal_closed
  sleep 0.5
  sample :sn_dolf
  sample :bd_ada, amp: 2.0
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_open, amp: 0.7
  sleep 0.5
end
