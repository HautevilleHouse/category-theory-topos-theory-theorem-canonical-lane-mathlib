import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  adjunctionUnit : Prop
  adjunctionCounit : Prop
  triangleIdentities : Prop
  existenceOfLeftAdjoint : Prop
  existenceOfRightAdjoint : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionUnitClosed : A.adjunctionUnit
  adjunctionCounitClosed : A.adjunctionCounit
  triangleIdentitiesClosed : A.triangleIdentities
  existenceOfLeftAdjointClosed : A.existenceOfLeftAdjoint
  existenceOfRightAdjointClosed : A.existenceOfRightAdjoint

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionUnit ∧ A.adjunctionCounit ∧ A.triangleIdentities ∧
  A.existenceOfLeftAdjoint ∧ A.existenceOfRightAdjoint

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionUnitClosed
    (And.intro E.adjunctionCounitClosed
      (And.intro E.triangleIdentitiesClosed
        (And.intro E.existenceOfLeftAdjointClosed E.existenceOfRightAdjointClosed)))

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse