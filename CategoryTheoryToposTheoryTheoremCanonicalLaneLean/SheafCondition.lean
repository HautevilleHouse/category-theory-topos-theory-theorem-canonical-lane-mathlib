import CategoryTheoryToposTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure SheafConditionPackage (A : AdmissibleClass) where
  site : GrothendieckTopology A.object.cat
  presheaf : Presheaf A.object.cat
  sheafCondition : ∀ (U : Cover site), sheafCondition site presheaf U
  sheafProperty : Prop
  sheafPropertyClosed : sheafProperty

structure SheafConditionEvidence {A : AdmissibleClass} (S : SheafConditionPackage A) where
  sheafPropertyClosed : S.sheafProperty

def SheafConditionClosed {A : AdmissibleClass} (S : SheafConditionPackage A) : Prop :=
  S.sheafProperty

theorem sheaf_condition_closed_from_evidence {A : AdmissibleClass}
    (S : SheafConditionPackage A) (E : SheafConditionEvidence S) :
    SheafConditionClosed S := by
  exact E.sheafPropertyClosed

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse