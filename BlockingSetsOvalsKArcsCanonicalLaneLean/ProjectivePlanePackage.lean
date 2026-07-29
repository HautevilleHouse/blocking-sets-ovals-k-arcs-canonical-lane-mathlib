import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ProjectivePlanePackage (α : Type u) where
  points : Type v
  lines : Type w
  incidence : points → lines → Prop
  pointCount : ℕ
  lineCount : ℕ
  everyLineHasAtLeastTwoPoints : Prop
  everyTwoPointsDetermineUniqueLine : Prop
  everyTwoLinesIntersectInUniquePoint : Prop
  existsQuadrangle : Prop

structure ProjectivePlaneEvidence {α : Type u} (P : ProjectivePlanePackage α) where
  everyLineHasAtLeastTwoPointsClosed : P.everyLineHasAtLeastTwoPoints
  everyTwoPointsDetermineUniqueLineClosed : P.everyTwoPointsDetermineUniqueLine
  everyTwoLinesIntersectInUniquePointClosed : P.everyTwoLinesIntersectInUniquePoint
  existsQuadrangleClosed : P.existsQuadrangle

def ProjectivePlaneClosed {α : Type u} (P : ProjectivePlanePackage α) : Prop :=
  P.everyLineHasAtLeastTwoPoints ∧ P.everyTwoPointsDetermineUniqueLine ∧
  P.everyTwoLinesIntersectInUniquePoint ∧ P.existsQuadrangle

theorem projective_plane_closed_from_evidence {α : Type u} (P : ProjectivePlanePackage α)
    (E : ProjectivePlaneEvidence P) : ProjectivePlaneClosed P := by
  exact And.intro E.everyLineHasAtLeastTwoPointsClosed
    (And.intro E.everyTwoPointsDetermineUniqueLineClosed
      (And.intro E.everyTwoLinesIntersectInUniquePointClosed E.existsQuadrangleClosed))

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse