import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure LimitColimitPackage where
  limitExists : Prop
  colimitExists : Prop
  universalProperty : Prop
  functoriality : Prop

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalPropertyClosed : L.universalProperty
  functorialityClosed : L.functoriality

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalProperty ∧ L.functoriality

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed (And.intro E.universalPropertyClosed E.functorialityClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse