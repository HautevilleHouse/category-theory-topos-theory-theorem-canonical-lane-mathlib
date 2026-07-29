import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure ToposSheafPackage where
  siteStructure : Prop
  sheafCondition : Prop
  toposProperties : Prop
  grothendieckTopos : Prop

structure ToposSheafEvidence (T : ToposSheafPackage) where
  siteStructureClosed : T.siteStructure
  sheafConditionClosed : T.sheafCondition
  toposPropertiesClosed : T.toposProperties
  grothendieckToposClosed : T.grothendieckTopos

def ToposSheafClosed (T : ToposSheafPackage) : Prop :=
  T.siteStructure ∧ T.sheafCondition ∧ T.toposProperties ∧ T.grothendieckTopos

theorem topos_sheaf_closed_from_evidence (T : ToposSheafPackage) (E : ToposSheafEvidence T) : ToposSheafClosed T := by
  exact And.intro E.siteStructureClosed (And.intro E.sheafConditionClosed (And.intro E.toposPropertiesClosed E.grothendieckToposClosed))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse