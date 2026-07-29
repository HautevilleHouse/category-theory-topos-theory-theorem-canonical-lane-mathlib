import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure GiraudTheoremPackage where
  geometricMorphism : Type u
  topos : Type v
  exactnessConditions : Prop
  classifyingTopos : Prop
  siteRepresentation : Prop
  giraudTheoremStatement : Prop

structure GiraudTheoremEvidence (G : GiraudTheoremPackage) where
  exactnessConditionsClosed : G.exactnessConditions
  classifyingToposClosed : G.classifyingTopos
  siteRepresentationClosed : G.siteRepresentation
  giraudTheoremStatementClosed : G.giraudTheoremStatement

def GiraudTheoremClosed (G : GiraudTheoremPackage) : Prop :=
  G.exactnessConditions ∧ G.classifyingTopos ∧ G.siteRepresentation ∧ G.giraudTheoremStatement

theorem giraud_theorem_closed_from_evidence (G : GiraudTheoremPackage) (E : GiraudTheoremEvidence G) :
    GiraudTheoremClosed G := by
  exact And.intro E.exactnessConditionsClosed
    (And.intro E.classifyingToposClosed
      (And.intro E.siteRepresentationClosed E.giraudTheoremStatementClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse