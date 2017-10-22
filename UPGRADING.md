# Upgrading

## v1.0.0

If upgrading from v0.1.1 or earlier, you'll need to change the path to start the release from `rel/intellij_elixir/bin/intellij_elixir` to `_build/prod/rel/intellij_elixir/bin/intellij_elixir`.

## v0.1.0

If upgrading from v0.0.1, you'll now need to perform `GenServer.call IntellijElixir.Quoter, code` instead of
`send IntellijElixir.Quoter, %{code: code, for: pid}`.  The response from `GenServer.call IntellijElixir.Quoter, code`
will be the same as `Code.string_to_quoted/2`: `{:ok, quoted}` or `{:error, reason}`.

If using JInterface, you'll need to manually construct a `GenServer.call` to `send` and parse the
`{ref, {status, quoted}}` that is received:

```java
OtpNode otpNode = new OtpNode(shortName + "@127.0.0.1", "intellij_elixir");
otpMbox = otpNode.createMbox();

OtpErlangAtom label = new OtpErlangAtom("$gen_call");

OtpErlangRef ref = otpNode.createRef();
OtpErlangTuple returnAddress = new OtpErlangTuple(
  new OtpErlangObject[]{
    otpMbox.self(),
    ref
  }
);

final byte[] bytes = code.getBytes(CharSet.forName("UTF-8"));
OtpErlangObject request = new OtpErlangBinary(bytes);

OtpErlangObject message = new OtpErlangTuple(
  new OtpErlangObject[]{
    label,
    returnAddress,
    request
  }
);

optMbox.send("Elixir.IntellijElixir.Quoter", "intellij_elixir@127.0.0.1", message);

OtpErlangTuple response = (OtpErlangTuple) optMbox.receive(50);
assert response.elementAt(0).equals(ref);
OtpErlangTuple quoted = (OtpErlangTuple) response.element(1)
```
