import canonicalLaneMathlib.AdmissibleClass
import BlockingSetsOvalsKArcsCanonicalLaneLean.ProjectivePlane

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure Arc (π : ProjectivePlane) where
  points : Set π.point
  noThreeCollinear : ∀ (p q r : π.point), p ∈ points → q ∈ points → r ∈ points → p ≠ q → q ≠ r → p ≠ r → ¬ (∃ (ℓ : π.line), π.incidence p ℓ ∧ π.incidence q ℓ ∧ π.incidence r ℓ)
  sizeAtMostOrderPlusTwo : Finset.card (Set.toFinset points) ≤ π.order + 2

theorem arc_size_at_least_2 (A : Arc π) : Finset.card (Set.toFinset A.points) ≥ 2 := by
  have hcard : Finset.card (Set.toFinset A.points) ≥ 0 := Finset.card_nonneg _
  have hbound : Finset.card (Set.toFinset A.points) ≤ π.order + 2 := A.sizeAtMostOrderPlusTwo
  have horder : 0 ≤ π.order := by omega
  omega

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse