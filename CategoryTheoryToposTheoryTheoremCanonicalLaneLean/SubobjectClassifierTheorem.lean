import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure SubobjectClassifierPackage where
  classifierObject : Prop
  characteristicMorphism : Prop
  pullbackStability : Prop
  classifyingProperty : Prop

structure SubobjectClassifierEvidence (S : SubobjectClassifierPackage) where
  classifierObjectClosed : S.classifierObject
  characteristicMorphismClosed : S.characteristicMorphism
  pullbackStabilityClosed : S.pullbackStability
  classifyingPropertyClosed : S.classifyingProperty

def SubobjectClassifierClosed (S : SubobjectClassifierPackage) : Prop :=
  S.classifierObject ∧ S.characteristicMorphism ∧ S.pullbackStability ∧ S.classifyingProperty

theorem subobject_classifier_closed_from_evidence (S : SubobjectClassifierPackage) (E : SubobjectClassifierEvidence S) : SubobjectClassifierClosed S := by
  exact And.intro E.classifierObjectClosed (And.intro E.characteristicMorphismClosed (And.intro E.pullbackStabilityClosed E.classifyingPropertyClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse