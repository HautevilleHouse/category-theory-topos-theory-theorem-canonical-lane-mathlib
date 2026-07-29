import CategoryTheoryToposTheoryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ToposSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ToposAdmittedObject where
  space : ToposSpace
  isTopos : Prop
  sheafCondition : Prop
  grothendieckTopology : Prop
  conclusion : isTopos ∧ sheafCondition ∧ grothendieckTopology

structure ToposEndgameState where
  object : ToposAdmittedObject

def ToposWitnessClosed (O : ToposAdmittedObject) : Prop :=
  O.isTopos ∧ O.sheafCondition ∧ O.grothendieckTopology

end CategoryTheoryToposTheoryTheoremCanonicalLaneLean
end HautevilleHouse