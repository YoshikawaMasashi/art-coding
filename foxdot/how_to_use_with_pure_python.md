# pure pythonでの使い方

```python3
import FoxDot

p1 = FoxDot.Player()
pluck = FoxDot.SynthDef('pluck')

p1 >> pluck()
p1.stop()
```
