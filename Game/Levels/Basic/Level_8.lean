import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 8
Title "`ext` : A mathematical triviality"

open Complex

Introduction
"
Two complex numbers with the same and imaginary parts are equal. This is an 'extensionality lemma',
i.e. a lemma of the form 'if two things are made from the same pieces, they are equal'. This is not
hard to prove, but we want to give the result a name so we can tag it with the `ext` attribute,
meaning that the `ext` tactic will know it. To add to the confusion, let's call the theorem `ext`
:-)
"

Statement
"If two complex numbers z and w have equal real and imaginary parts, they are equal."
    (z w : ℂ) (hre : re (z) = re (w)) (him : im (z) = im (w)) : z = w := by
  rcases z with ⟨zr, zi⟩
  rcases w with ⟨wr, wi⟩
  simp at *
  constructor
  exact hre
  exact him

Conclusion
"

"
