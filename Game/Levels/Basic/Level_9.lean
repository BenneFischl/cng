import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 9
Title "The complex numbers are a commmutative ring"

open Complex

Introduction
"
We've defined all the structure, and every axiom can be checked by reducing it to checking real and
imaginary parts with `ext`, expanding everything out with `simp` and then using the fact that the
real numbers are a commutative ring.
"

Statement
-- Should be about CommRing, but cannot do that before simplifying the codes.
""
    : true := by
  trivial

Conclusion
"

"
