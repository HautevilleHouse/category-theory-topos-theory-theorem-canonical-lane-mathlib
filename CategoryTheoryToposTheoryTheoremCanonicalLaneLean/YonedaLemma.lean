import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [Category.{v} C] where
  objectMap : ∀ (X : C), C → Set (C) 
  arrowMap : ∀ {X Y : C} (f : X ⟶ Y), YonedaEmbeddingObject X → YonedaEmbeddingObject Y
  yonedaLemma : ∀ (X : C) (F : Cᵒᵖ ⥤ Set), (yoneda X ⟶ F) ≅ F.obj (op X)

def YonedaLemmaClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem yoneda_lemma_endgame (A : AdmissibleClass) : YonedaLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse
