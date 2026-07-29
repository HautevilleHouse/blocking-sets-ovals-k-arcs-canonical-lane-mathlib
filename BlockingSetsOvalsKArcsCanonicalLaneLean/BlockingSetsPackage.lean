import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSetsPackage (P : ProjectivePlanePackage) where
  blockingSet : Set P.pointSet
  blocksEveryLine : Prop
  minimal : Prop
  size : ℕ
  blocksEveryLineTerm : blocksEveryLine
  minimalTerm : minimal
  sizeTerm : size = P.order + 1

structure BlockingSetsEvidence {P : ProjectivePlanePackage} (B : BlockingSetsPackage P) where
  blocksEveryLineClosed : B.blocksEveryLine
  minimalClosed : B.minimal
  sizeClosed : B.size = P.order + 1

def BlockingSetsClosed {P : ProjectivePlanePackage} (B : BlockingSetsPackage P) : Prop :=
  B.blocksEveryLine ∧ B.minimal ∧ B.size = P.order + 1

theorem blocking_sets_closed_from_evidence {P : ProjectivePlanePackage} (B : BlockingSetsPackage P) (E : BlockingSetsEvidence B) : BlockingSetsClosed B := by
  exact And.intro E.blocksEveryLineClosed (And.intro E.minimalClosed E.sizeClosed)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse