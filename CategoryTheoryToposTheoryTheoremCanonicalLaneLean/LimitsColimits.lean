import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure LimitsColimitsPackage where
  category : Type u
  diagram : Type v
  cone : Prop
  limitExists : Prop
  colimitExists : Prop
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  coneClosed : L.cone
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitUniversalPropertyClosed : L.colimitUniversalProperty

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.cone ∧ L.limitExists ∧ L.colimitExists ∧ L.limitUniversalProperty ∧ L.colimitUniversalProperty

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.coneClosed
    (And.intro E.limitExistsClosed
      (And.intro E.colimitExistsClosed
        (And.intro E.limitUniversalPropertyClosed E.colimitUniversalPropertyClosed)))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse