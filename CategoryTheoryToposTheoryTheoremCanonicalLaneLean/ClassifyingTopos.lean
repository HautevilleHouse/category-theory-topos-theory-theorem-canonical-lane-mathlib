import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure ClassifyingToposPackage (G : GiraudTheoremPackage (C : CoherentToposPackage)) where
  theory : Type u
  syntacticSite : Type v
  classifierExists : Prop
  universalProperty : Prop

default

structure ClassifyingToposEvidence (G : GiraudTheoremPackage (C : CoherentToposPackage)) (T : ClassifyingToposPackage G) where
  classifierExistsClosed : T.classifierExists
  universalPropertyClosed : T.universalProperty

def ClassifyingToposClosed (G : GiraudTheoremPackage (C : CoherentToposPackage)) (T : ClassifyingToposPackage G) : Prop :=
  T.classifierExists ∧ T.universalProperty

theorem classifying_topos_closed_from_evidence (G : GiraudTheoremPackage (C : CoherentToposPackage)) (T : ClassifyingToposPackage G) (E : ClassifyingToposEvidence G T) : ClassifyingToposClosed G T := by
  exact And.intro E.classifierExistsClosed E.universalPropertyClosed

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse