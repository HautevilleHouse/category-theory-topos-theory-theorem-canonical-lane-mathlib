import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure GrothendieckToposPackage where
  site : Type u
  sieve : Type v
  sheafCondition : Prop
  grothendieckTopology : Prop
  toposProperties : Prop
  giraudTheorem : Prop

structure GrothendieckToposEvidence (G : GrothendieckToposPackage) where
  sheafConditionClosed : G.sheafCondition
  grothendieckTopologyClosed : G.grothendieckTopology
  toposPropertiesClosed : G.toposProperties
  giraudTheoremClosed : G.giraudTheorem

def GrothendieckToposClosed (G : GrothendieckToposPackage) : Prop :=
  G.sheafCondition ∧ G.grothendieckTopology ∧ G.toposProperties ∧ G.giraudTheorem

theorem grothendieck_topos_closed_from_evidence (G : GrothendieckToposPackage) (E : GrothendieckToposEvidence G) : GrothendieckToposClosed G := by
  exact And.intro E.sheafConditionClosed (And.intro E.grothendieckTopologyClosed (And.intro E.toposPropertiesClosed E.giraudTheoremClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse