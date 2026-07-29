import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

def ConstrainedBlockingSetsOvalsKArcsClosure (A : BlockingSetsAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_blocking_sets_ovals_k_arcs_endgame (A : BlockingSetsAdmittedObject) :
    ConstrainedBlockingSetsOvalsKArcsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse