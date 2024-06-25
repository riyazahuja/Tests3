import Lake
open Lake DSL

package «Tests3» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "bbf0d1e39b5faac9276413942ac15bd64de65c1e"

@[default_target]
lean_lib «Tests3» where
  -- add any library configuration options here
