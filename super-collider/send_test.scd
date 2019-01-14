s = Server.default;
s.boot;

NetAddr.localAddr

s.dumpOSC;

SynthDef("test_osc", {
    var out;
    out = SinOsc.ar([220, 221],0,0.5);
    Out.ar(0, out);
}).store;

s.quit;
