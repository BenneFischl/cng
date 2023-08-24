import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 7
Title "simp"

open Complex

Introduction
"
We now have operations ` + `, ` - ` and ` * `, and some problems involved with these can be solved
by `simp`.
"

Statement
"An example of what simp can now do: "
    (a b c : ℂ) : re (a*(b+c)) = re (a) * (re (b) + re (c)) - im (a) * (im (b) + im (c)) := by
  simp

Conclusion
"

"
