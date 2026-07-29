import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSetPackage where
  plane : ProjectivePlane Type
  blockSet : Set (plane.Plane) → Prop
  blocksEveryLine : ∀ (L : Set (plane.Plane)), L ∈ plane.line → blockSet L
  minimal : ∃ (B : Set (plane.Plane)), blockSet B ∧ ∀ (C : Set (plane.Plane)), blockSet C → B ⊆ C

structure BlockingSetEvidence (B : BlockingSetPackage) where
  blocksEveryLineClosed : B.blocksEveryLine
  minimalClosed : B.minimal

def BlockingSetClosed (B : BlockingSetPackage) : Prop :=
  B.blocksEveryLine ∧ B.minimal

theorem blocking_set_closed_from_evidence (B : BlockingSetPackage) (E : BlockingSetEvidence B) : BlockingSetClosed B :=
  And.intro E.blocksEveryLineClosed E.minimalClosed

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse