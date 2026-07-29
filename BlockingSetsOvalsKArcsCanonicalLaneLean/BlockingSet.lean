import canonicalLaneMathlib.AdmissibleClass
import BlockingSetsOvalsKArcsCanonicalLaneLean.ProjectivePlane

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSet (π : ProjectivePlane) where
  points : Set π.point
  blocksEveryLine : ∀ (ℓ : π.line), Set.Nonempty (Set.inter points {p | π.incidence p ℓ})

theorem blockingSet_nonempty (B : BlockingSet π) : Set.Nonempty B.points := by
  have h : Nonempty (π.line) := by
    infer_instance
  rcases h with ⟨ℓ⟩
  have h_inter : Set.Nonempty (Set.inter B.points {p | π.incidence p ℓ}) := B.blocksEveryLine ℓ
  rcases h_inter with ⟨p, hp⟩
  refine ⟨p, hp.1⟩

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse