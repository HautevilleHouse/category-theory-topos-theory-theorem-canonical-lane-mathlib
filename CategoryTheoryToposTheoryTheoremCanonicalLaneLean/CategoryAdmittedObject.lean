import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategorySpace where
  carrier : Type
  categoryStructure : Category carrier

structure CategoryAdmittedObject where
  space : CategorySpace
  toposAxioms : Prop
  yonedaEmbedding : Prop
  sheafCondition : Prop
  subobjectClassifier : Prop
  conclusion : toposAxioms ∧ yonedaEmbedding ∧ sheafCondition ∧ subobjectClassifier

structure CategoryEndgameState where
  object : CategoryAdmittedObject

def ToposWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.toposAxioms ∧ O.yonedaEmbedding ∧ O.sheafCondition ∧ O.subobjectClassifier

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse