import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

def ConstrainedCategoryTheoryToposTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_theory_topos_theory_endgame (A : AdmissibleClass) :
    ConstrainedCategoryTheoryToposTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse
