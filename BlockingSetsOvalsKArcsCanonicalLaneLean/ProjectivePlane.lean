import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ProjectivePlane where
  point : Type u
  line : Type v
  incidence : point → line → Prop
  incidenceProperties : Prop
  order : ℕ

theorem projectivePlane_order_nonzero (π : ProjectivePlane) : π.order ≥ 2 := by
  sorry

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse