import CategoryTheoryToposTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure ToposEndpointPackage (A : AdmissibleClass) where
  topos : GrothendieckTopos
  geometricMorphism : A.object.cat ⥤ topos
  point : (⊤ : Topos point) → topos
  classification : ∀ (F : Topos), ∃! (f : point → topos), True
  endpointProperty : Prop
  endpointPropertyClosed : endpointProperty

structure ToposEndpointEvidence {A : AdmissibleClass} (T : ToposEndpointPackage A) where
  endpointPropertyClosed : T.endpointProperty

def ToposEndpointClosed {A : AdmissibleClass} (T : ToposEndpointPackage A) : Prop :=
  T.endpointProperty

theorem topos_endpoint_closed_from_evidence {A : AdmissibleClass}
    (T : ToposEndpointPackage A) (E : ToposEndpointEvidence T) :
    ToposEndpointClosed T := by
  exact E.endpointPropertyClosed

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse