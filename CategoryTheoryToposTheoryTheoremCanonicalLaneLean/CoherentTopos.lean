import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure CoherentToposPackage where
  site : Type u
  coverage : Type v
  sheaves : Type w
  coherentToposProperty : Prop
  siteSmall : Prop
  coverageFinitary : Prop

structure CoherentToposEvidence (C : CoherentToposPackage) where
  coherentToposPropertyClosed : C.coherentToposProperty
  siteSmallClosed : C.siteSmall
  coverageFinitaryClosed : C.coverageFinitary

def CoherentToposClosed (C : CoherentToposPackage) : Prop :=
  C.coherentToposProperty ∧ C.siteSmall ∧ C.coverageFinitary

theorem coherent_topos_closed_from_evidence (C : CoherentToposPackage) (E : CoherentToposEvidence C) : CoherentToposClosed C := by
  exact And.intro E.coherentToposPropertyClosed (And.intro E.siteSmallClosed E.coverageFinitaryClosed)

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse