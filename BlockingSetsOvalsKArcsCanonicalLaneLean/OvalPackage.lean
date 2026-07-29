import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure OvalPackage where
  plane : ProjectivePlane Type
  oval : Set (plane.Plane)
  pointsOnOval : ∀ (p : plane.Plane), p ∈ oval → True
  tangentAxiom : ∀ (p : plane.Plane), p ∈ oval → ∃! (L : Set (plane.Plane)), L ∈ plane.line ∧ p ∈ L ∧ ∀ (q : plane.Plane), q ∈ oval ∧ q ≠ p → q ∉ L
  externalLines : ∀ (L : Set (plane.Plane)), L ∈ plane.line → ¬(∀ (p : plane.Plane), p ∈ L → p ∈ oval) → ∃ (p : plane.Plane), p ∈ oval ∧ (L.intersection {p}).Nonempty

structure OvalEvidence (O : OvalPackage) where
  pointsOnOvalClosed : O.pointsOnOval
  tangentAxiomClosed : O.tangentAxiom
  externalLinesClosed : O.externalLines

def OvalClosed (O : OvalPackage) : Prop :=
  O.pointsOnOval ∧ O.tangentAxiom ∧ O.externalLines

theorem oval_closed_from_evidence (O : OvalPackage) (E : OvalEvidence O) : OvalClosed O :=
  And.intro E.pointsOnOvalClosed (And.intro E.tangentAxiomClosed E.externalLinesClosed)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse