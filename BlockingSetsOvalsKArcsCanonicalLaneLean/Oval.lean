import canonicalLaneMathlib.AdmissibleClass
import BlockingSetsOvalsKArcsCanonicalLaneLean.ProjectivePlane

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure Oval (π : ProjectivePlane) where
  points : Set π.point
  noThreeCollinear : ∀ (p q r : π.point), p ∈ points → q ∈ points → r ∈ points → p ≠ q → q ≠ r → p ≠ r → ¬ (∃ (ℓ : π.line), π.incidence p ℓ ∧ π.incidence q ℓ ∧ π.incidence r ℓ)
  sizeEqualsOrderPlusOne : Finset.card (Set.toFinset points) = π.order + 1

theorem oval_size_ge_3 (O : Oval π) : Finset.card (Set.toFinset O.points) ≥ 3 := by
  sorry

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse