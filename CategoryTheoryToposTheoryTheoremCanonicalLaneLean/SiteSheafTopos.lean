import HautevilleHouse.CategoryTheoryToposTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure SitePackage where
  category : Type u
  coverage : Type v
  sieve : Type w
  coveringCondition : Prop
  sheafCondition : Prop

type alias Topos := Type u

structure GrothendieckToposPackage (S : SitePackage) where
  categoryOfSheaves : Topos
  sheafificationExists : Prop
  limitPreserving : Prop
  subobjectClassifier : Prop

type alias GrothendieckToposPackage := Σ S : SitePackage, GrothendieckToposPackage S

type alias GrothendieckToposPackage := Σ S : SitePackage, GrothendieckToposPackage S

type alias GrothendieckToposPackage := ∀ (S : SitePackage), GrothendieckToposPackage S -- Not needed, use structure directly

type alias GrothendieckToposPackage := fun (S : SitePackage) => GrothendieckToposPackage S
-- Actually define as a structure parameterized by a site package

structure SiteSheafToposPackage (S : SitePackage) where
  grothendieckTopos : GrothendieckToposPackage S
  grothendieckToposClosed : grothendieckTopos.categoryOfSheaves = S.category ∧ grothendieckTopos.sheafificationExists ∧ grothendieckTopos.limitPreserving ∧ grothendieckTopos.subobjectClassifier

typealias SiteSheafToposClosed (S : SitePackage) (P : SiteSheafToposPackage S) : Prop :=
  P.grothendieckToposClosed

theorem site_sheaf_topos_closed_from_package (S : SitePackage) (P : SiteSheafToposPackage S) :
    SiteSheafToposClosed S P := by
  exact P.grothendieckToposClosed

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse