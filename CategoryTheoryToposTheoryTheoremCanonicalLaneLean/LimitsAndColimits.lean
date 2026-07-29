import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure LimitsColimitsPackage where
  category : Type u
  diagram : Type v
  limit : Type w
  colimit : Type x
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  completion : Prop
  cocompletion : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitUniversalPropertyClosed : L.colimitUniversalProperty
  completionClosed : L.completion
  cocompletionClosed : L.cocompletion

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitUniversalProperty ∧ L.colimitUniversalProperty ∧ L.completion ∧ L.cocompletion

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.limitUniversalPropertyClosed (And.intro E.colimitUniversalPropertyClosed (And.intro E.completionClosed E.cocompletionClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse