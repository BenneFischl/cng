import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Group.Defs

structure Complex : Type := (re : ℝ) (im : ℝ)
notation "ℂ" => Complex

namespace Complex

--define zero
def zero : ℂ := ⟨0, 0⟩
instance : Zero ℂ where zero := ⟨0, 0⟩
@[simp] lemma zero_re : re (0:ℂ) = 0 := by rfl
@[simp] lemma zero_im : im (0:ℂ) = 0 := by rfl

--define one
def one : ℂ := ⟨1, 0⟩
instance : One ℂ where one := ⟨1, 0⟩
@[simp] lemma one_re : re (1:ℂ) = 1 := by rfl
@[simp] lemma one_im : im (1:ℂ) = 0 := by rfl

--define addition
def add (z w : ℂ) : ℂ := ⟨z.re + w.re, z.im + w.im⟩
instance : Add ℂ where add z w := add z w
@[simp] lemma add_re (z w : ℂ) : ( z + w ).re = z.re + w.re := by rfl
@[simp] lemma add_im (z w : ℂ) : ( z + w ).im = z.im + w.im := by rfl

--define negation
def neg (z : ℂ) : ℂ := ⟨-z.re, -z.im⟩
instance : Neg ℂ where neg z := neg z
@[simp] lemma neg_re (z:ℂ) : re (-z) = -re (z) := by rfl
@[simp] lemma neg_im (z:ℂ) : im (-z) = -im (z) := by rfl

--define multiplication
def mul (z w : ℂ) : ℂ := ⟨z.re*w.re-z.im*w.im, z.re*w.im+z.im*w.re⟩
instance : Mul ℂ where mul z w := mul z w
@[simp] lemma mul_re (z w : ℂ) : (z * w).re = z.re * w.re - z.im * w.im := by rfl
@[simp] lemma mul_im (z w : ℂ) : (z * w).im = z.re * w.im + z.im * w.re := by rfl

--if two complex numbers have equal real and imaginary parts, they are equal
@[ext] theorem ext (z w : ℂ) (hre : re (z) = re (w)) (him : im (z) = im (w)) : z = w := by
  rcases z with ⟨zr, zi⟩
  rcases w with ⟨wr, wi⟩
  simp at *
  -- Things after this should be able to solve by 'cc', but it seems not in lean 4 any more.
  constructor
  exact hre
  exact him

---------------------------------------------------------------------------------------------------
--Things here should try simplify.

-- Subtraction is adding the negation.
def sub (z w:ℂ) : ℂ := z + -w
instance : Sub ℂ where sub z w := sub z w

lemma add_zero (z : ℂ) : z + 0 = z := by
  ext
  all_goals simp

lemma add_assoc (a b c :ℂ): a+b+c = a+(b+c) := by
  ext
  all_goals simp
  all_goals ring

lemma zero_add (z:ℂ):0+z = z := by
  ext
  all_goals simp

lemma add_comm (z w : ℂ):z+w=w+z:=by
  ext
  all_goals simp
  all_goals ring

lemma one_mul (z : ℂ):1*z=z:=by
  ext
  all_goals simp

lemma zero_mul (z : ℂ):0*z=0:=by
  ext
  all_goals simp

lemma mul_zero (z : ℂ):z*0=0:=by
  ext
  all_goals simp

lemma mul_assoc (a b c :ℂ): a*b*c = a*(b*c) := by
  ext
  all_goals simp
  all_goals ring

lemma left_distrib (a b c :ℂ): a*(b+c) = a*b+a*c := by
  ext
  all_goals simp
  all_goals ring

lemma right_distrib (a b c :ℂ): (a+b)*c = a*c+b*c := by
  ext
  all_goals simp
  all_goals ring

lemma mul_one (z :ℂ): z*1 = z := by
  ext
  all_goals simp

lemma mul_comm (z w : ℂ):z*w=w*z:=by
  ext
  all_goals simp
  all_goals ring

lemma add_left_neg (z : ℂ):-z+z=0:=by
  ext
  all_goals simp

instance : CommRing ℂ := by
  refine' {zero := (0 : ℂ), add := add, neg := neg, one := (1 : ℂ), mul := mul, sub := sub,
           add_zero := add_zero, add_assoc := add_assoc, zero_add := zero_add, add_comm:=add_comm,
           one_mul:=one_mul, zero_mul:=zero_mul, mul_zero:=mul_zero, mul_assoc:=mul_assoc,
           left_distrib:=left_distrib, right_distrib:=right_distrib, mul_one:=mul_one,
           mul_comm:=mul_comm, add_left_neg:=add_left_neg}

--Compared with lean3 version, everything after mul can be just replaced by "..", and then solved
--together by
--
--all_goals intros
--all_goals ext
--all_goals simp
--all_goals ring
--
--But things fail from "ext" step because some goals cannot use ext.
--But "try ext" also doesn't work.
-- ------------------------------------------------------------------------------------------------
-- See if I should add codes after line 243 from basic.lean from lean3 repository.
