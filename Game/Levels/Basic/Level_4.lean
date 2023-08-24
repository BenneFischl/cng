import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 4
Title "Ring structure (negation)"

open Complex

Introduction
"
The elements of a ring, together with its addition, form a group, therefore we should define
negation. In complex, negation changes both real part and imaginary part into the correspoding
negative value in real numbers.
"

Statement
"The real part of the negation equals to the negation of the real part."
    (z:ℂ) : re (-z) = -re (z) := by
  rfl

Conclusion
"
Same for the imaginary part.
"
