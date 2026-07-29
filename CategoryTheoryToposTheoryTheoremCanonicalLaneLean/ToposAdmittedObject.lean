import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Topos.Basic

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

open CategoryTheory

structure ToposAdmittedObject where
  topos : Type u
  category : Category topos
  toposStruct : Topos topos
  conclusion : ToposWitnessClosed this

def ToposWitnessClosed (O : ToposAdmittedObject) : Prop :=
  O.toposStruct.sheafCondition

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse