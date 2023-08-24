import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 6
Title "Ring structure (multiplication)"

open Complex

Introduction
"
Now define imaginary part for multiplication.
"

Statement
"For any complex number `z` and `w`, the imaginary part of `z*w` is `z.re*w.im+z.im*w.re`."
    (z w : ℂ) : (z*w).im = z.re*w.im + z.im*w.re := by
  rfl

Conclusion
"

"
