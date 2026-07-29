import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure AdjointFunctorPair (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) (G : D ⥤ C) where
  unit : 𝟙 C ⟶ F ⋙ G
  counit : G ⋙ F ⟶ 𝟙 D
  triangleIdentities : (unit ▷ G) • (G ◁ counit) = 𝟙 G ∧ (F ◁ unit) • (counit ▷ F) = 𝟙 F

def AdjointFunctorClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem adjoint_functor_endgame (A : AdmissibleClass) : AdjointFunctorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse
