# pure pythonでの使い方

```python3
import FoxDot

p1 = FoxDot.lib.Players.Player()
pluck = FoxDot.lib.SCLang.SynthDef('pluck')

p1 >> pluck()
p1.stop()
```
