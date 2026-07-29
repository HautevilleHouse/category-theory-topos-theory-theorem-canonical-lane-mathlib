import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure ToposPropertiesPackage where
  category : Type u
  finiteLimits : Prop
  powerObject : Prop
  subobjectClassifier : Prop
  cartesianClosed : Prop
  finiteColimits : Prop

structure ToposPropertiesEvidence (T : ToposPropertiesPackage) where
  finiteLimitsClosed : T.finiteLimits
  powerObjectClosed : T.powerObject
  subobjectClassifierClosed : T.subobjectClassifier
  cartesianClosedClosed : T.cartesianClosed
  finiteColimitsClosed : T.finiteColimits

def ToposPropertiesClosed (T : ToposPropertiesPackage) : Prop :=
  T.finiteLimits ∧ T.powerObject ∧ T.subobjectClassifier ∧ T.cartesianClosed ∧ T.finiteColimits

theorem topos_properties_closed_from_evidence (T : ToposPropertiesPackage) (E : ToposPropertiesEvidence T) :
    ToposPropertiesClosed T := by
  exact And.intro E.finiteLimitsClosed
    (And.intro E.powerObjectClosed
      (And.intro E.subobjectClassifierClosed
        (And.intro E.cartesianClosedClosed E.finiteColimitsClosed)))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse