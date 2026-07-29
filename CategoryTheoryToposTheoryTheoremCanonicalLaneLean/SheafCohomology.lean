import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure SheafCohomologyPackage where
  site : Type u
  sheafCategory : Type v
  cohomologyGroups : Type w
  sheafCondition : Prop
  cohomologyExactSequences : Prop
  acyclicityProperties : Prop

structure SheafCohomologyEvidence (S : SheafCohomologyPackage) where
  sheafConditionClosed : S.sheafCondition
  cohomologyExactSequencesClosed : S.cohomologyExactSequences
  acyclicityPropertiesClosed : S.acyclicityProperties

def SheafCohomologyClosed (S : SheafCohomologyPackage) : Prop :=
  S.sheafCondition ∧ S.cohomologyExactSequences ∧ S.acyclicityProperties

theorem sheaf_cohomology_closed_from_evidence (S : SheafCohomologyPackage) (E : SheafCohomologyEvidence S) :
    SheafCohomologyClosed S := by
  exact And.intro E.sheafConditionClosed
    (And.intro E.cohomologyExactSequencesClosed E.acyclicityPropertiesClosed)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse