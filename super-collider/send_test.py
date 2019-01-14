from pythonosc import osc_message_builder
from pythonosc import udp_client


client = udp_client.SimpleUDPClient('localhost', 57110)

msg = osc_message_builder.OscMessageBuilder(address='/s_new')
msg.add_arg("test_osc", arg_type='s')
msg.add_arg(1000, arg_type='i')
msg.add_arg(1, arg_type='i')
msg.add_arg(1, arg_type='i')
msg = msg.build()
client.send(msg)

msg = osc_message_builder.OscMessageBuilder(address='/n_free')
msg.add_arg(1000, arg_type='i')
msg = msg.build()
client.send(msg)
