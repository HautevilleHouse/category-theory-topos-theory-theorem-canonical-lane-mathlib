import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure SubobjectClassifierPackage (E : Type u) [Category.{v} E] where
  trueArrow : E
  pullbackStability : Prop
  classifyingProperty : Prop
  uniqueness : Prop

structure SubobjectClassifierEvidence {E : Type u} [Category.{v} E]
    (S : SubobjectClassifierPackage E) where
  pullbackStabilityClosed : S.pullbackStability
  classifyingPropertyClosed : S.classifyingProperty
  uniquenessClosed : S.uniqueness

def SubobjectClassifierClosed {E : Type u} [Category.{v} E]
    (S : SubobjectClassifierPackage E) : Prop :=
  S.pullbackStability ∧ S.classifyingProperty ∧ S.uniqueness

theorem subobject_classifier_closed_from_evidence
    {E : Type u} [Category.{v} E] (S : SubobjectClassifierPackage E)
    (E' : SubobjectClassifierEvidence S) : SubobjectClassifierClosed S := by
  exact And.intro E'.pullbackStabilityClosed
    (And.intro E'.classifyingPropertyClosed E'.uniquenessClosed)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse