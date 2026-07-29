import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure KArcPackage where
  plane : ProjectivePlane Type
  arc : Set (plane.Plane)
  size : ℕ
  arcSize : Finset.card (Finset.filter (λ p => p ∈ arc) Finset.univ) = size
  noThreeColinear : ∀ (L : Set (plane.Plane)), L ∈ plane.line → Finset.card (Finset.filter (λ p => p ∈ L) (Finset.filter (λ p => p ∈ arc) Finset.univ)) ≤ 2

def KArcEvidence (K : KArcPackage) : Prop :=
  K.arcSize ∧ K.noThreeColinear

def KArcClosed (K : KArcPackage) : Prop :=
  K.arcSize ∧ K.noThreeColinear

theorem k_arc_closed_from_evidence (K : KArcPackage) (E : KArcEvidence K) : KArcClosed K :=
  And.intro E.arcSize E.noThreeColinear

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse