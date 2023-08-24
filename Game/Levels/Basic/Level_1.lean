import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 1
Title "Construction of complex number"

open Complex

Introduction
"
A complex number is defined to be a structure consisting of two real numbers,
the real part and the imaginary part of the complex number.

You make the complex number with real part 3 and imaginary part 4 like this:
`example : ℂ := { re := 3, im := 4 }`
or
`example : ℂ := complex.mk 3 4`
or
`example : ℂ := ⟨3, 4⟩`
, they all give the same complex number.
"

Statement
"For all real numbers $a$ and $b$, the following notation for $a + bi$ are equivalent by
definition."
    (a b : ℝ) : mk a b = ⟨a, b⟩ := by
  Hint "In order to use the tactic `rfl` you can enter it above and hit \"Execute\"."
  rfl

NewTactic rfl

Conclusion
"
If you want to inspect the proof you created, toggle \"Editor mode\" above.

There you can also move your cursor around the proof to see the \"state\" of the proof at this point.

Each tactic is written on a new line and Lean is sensitive to indentation (i.e. there must be no
spaces before any of the tactics)
"
