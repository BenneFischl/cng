import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 5
Title "Ring structure (multiplication)"

open Complex

Introduction
"
In complex, whatever addition and negation do to the real parts, they do the same to the imaginary
part, but this is not the case for multiplication.
"

Statement
"For any complex number `z` and `w`, the real part of `z*w` is `z.re*w.re - z.im*w.im`."
    (z w : ℂ) : (z*w).re = z.re*w.re - z.im*w.im := by
  rfl

Conclusion
"
Next will be imaginary part.
"
