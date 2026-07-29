import HautevilleHouse.CategoryTheoryToposTheoryTheoremCanonicalLaneLean.SiteSheafTopos

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure GeometricMorphismPackage {S₁ S₂ : SitePackage} (T₁ : GrothendieckToposPackage S₁) (T₂ : GrothendieckToposPackage S₂) where
  directImage : T₁.categoryOfSheaves → T₂.categoryOfSheaves
  inverseImage : T₂.categoryOfSheaves → T₁.categoryOfSheaves
  adjointness : Prop
  continuity : Prop
  continuityClosed : continuity
  adjointnessClosed : adjointness

def GeometricMorphismClosed {S₁ S₂ : SitePackage} {T₁ : GrothendieckToposPackage S₁} {T₂ : GrothendieckToposPackage S₂} (M : GeometricMorphismPackage T₁ T₂) : Prop :=
  M.adjointness ∧ M.continuity

theorem geometric_morphism_closed_from_package {S₁ S₂ : SitePackage} {T₁ : GrothendieckToposPackage S₁} {T₂ : GrothendieckToposPackage S₂} (M : GeometricMorphismPackage T₁ T₂) :
    GeometricMorphismClosed M := by
  exact And.intro M.adjointnessClosed M.continuityClosed

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse