import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure LimitCone (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  apex : C
  cone : ∀ (j : J), apex ⟶ F.obj j
  universal : ∀ (X : C) (f : ∀ (j : J), X ⟶ F.obj j), ∃! g : X ⟶ apex, ∀ (j : J), g ≫ cone j = f j

structure ColimitCocone (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  apex : C
  cocone : ∀ (j : J), F.obj j ⟶ apex
  universal : ∀ (X : C) (f : ∀ (j : J), F.obj j ⟶ X), ∃! g : apex ⟶ X, ∀ (j : J), cocone j ≫ g = f j

def LimitColimitClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem limit_colimit_endgame (A : AdmissibleClass) : LimitColimitClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse
