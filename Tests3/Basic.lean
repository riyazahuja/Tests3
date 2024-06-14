import Mathlib.Tactic

theorem modus_tollens (p q : Prop) : (p → q) → (¬q → ¬p) := by
  intro pq nq
  by_contra np
  have q' : q := pq np
  contradiction

theorem and_associative (p q r : Prop) : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) := by
  constructor
  . intro h
    rcases h with ⟨hpq,hr⟩
    rcases hpq with ⟨hp,hq⟩
    constructor
    . exact hp
    . constructor
      . exact hq
      . exact hr
  . intro h
    rcases h with ⟨hp,hqr⟩
    rcases hqr with ⟨hq,hr⟩
    constructor
    . constructor
      . exact hp
      . exact hq
    . exact hr

theorem distributivity_or_and (p q r : Prop) : (p ∨ q) ∧ (p ∨ r) ↔ p ∨ (q ∧ r) := by
  constructor
  . intro h
    rcases h with ⟨hpq,hpr⟩
    rcases hpq with hp|hq
    . rcases hpr with _|_
      . left
        exact hp
      . left
        exact hp
    . rcases hpr with hp|hr
      . left
        exact hp
      . right
        constructor
        . exact hq
        . exact hr
  . intro h
    rcases h with hp|hqr
    . constructor
      . left
        exact hp
      . left
        exact hp
    . rcases hqr with ⟨hq,hr⟩
      constructor
      . right
        exact hq
      . right
        exact hr
