import GameServer.Commands
import Game.Doc.Basic


World "Basic"
Level 3
Title "Ring structure (addition)"

open Complex

Introduction
"
We now prove the basic theorems and make the basic definitions for complex numbers.
For example, we will define addition and multiplication on the complex numbers,
and prove that it is a commutative ring.

A ring has its zero, one, addition and multiplication.
In complex number, zero has real part 0 and imaginary part 0; one has real part one and imaginary
part zero.

The addition of complex number is simply adding real parts together to get the new real part and
adding the imaginary parts together to get the new imaginary part.
"

Statement
"The real part of the sum equals to the sum of the real parts."
    (w z : ℂ) : re (w + z) = w.re + z.re := by
  rfl

Conclusion
"
Imaginary part has the same property.
"
