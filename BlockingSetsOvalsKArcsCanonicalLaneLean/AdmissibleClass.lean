import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ProjectivePlane (Point : Type) where
  line : Set (Set Point)
  incidence : ∀ (p : Point) (L : Set Point), p ∈ L → L ∈ line
  lineContainsTwoPoints : ∀ (L : Set Point), L ∈ line → ∃ (p q : Point), p ≠ q ∧ p ∈ L ∧ q ∈ L
  twoPointsDetermineLine : ∀ (p q : Point), p ≠ q → ∃! (L : Set Point), L ∈ line ∧ p ∈ L ∧ q ∈ L

structure BlockingSetsAdmittedObject where
  plane : ProjectivePlane Type
  field : Type
  fieldStructure : AddCommGroup field
  fieldMult : Ring field
  char : field.char ≠ 2
  order : ℕ
  points : Set (plane.Plane)

def admittedClosure (A : BlockingSetsAdmittedObject) : Prop :=
  True

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse