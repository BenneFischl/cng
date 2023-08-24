import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 2
Title "The functions `re` and `im`"

open Complex

Introduction
"
Given any complex number you can get its real part and imaginary part by the `re` and `im`
functions.
"

Statement
"For a complex number $z$, its real part is expressed as `z.re` or `re (z)`."
    (z : ℂ) : z.re = re (z) := by
  rfl

Conclusion
"
Computer scientists prefer the style `z.re` to `re(z)` for some reason.
The function `im` works in the same way.
"
