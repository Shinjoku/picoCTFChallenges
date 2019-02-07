#!/usr/bin/env python
import base64
ans = base64.b64decode("dGg0dF93NHNfczFtcEwz")

print("picoCTF{"+ str(ans)[1::].replace("'", "") + "}")
