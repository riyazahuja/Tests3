import Mathlib.Tactic

variable (P Q R S : Prop)

example (h : ¬ (P ∨ Q)) : ¬ P ∧ ¬ Q := by
  constructor
  intro p
  have duh : P∨ Q := by
    left
    exact p
  exact h duh
  intro q
  have duh : P∨ Q := by
    right
    exact q
  exact h duh
