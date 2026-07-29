import BlockingSetsOvalsKArcsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ProjectivePlaneFoundation where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop
  order : ℕ
  finite : Prop
  projectivePlaneAxioms : Prop
  pointCount : ℕ
  lineCount : ℕ
  eachLineHasQPlusOnePoints : Prop

structure ProjectivePlaneEvidence (P : ProjectivePlaneFoundation) where
  finiteClosed : P.finite
  projectivePlaneAxiomsClosed : P.projectivePlaneAxioms
  eachLineHasQPlusOnePointsClosed : P.eachLineHasQPlusOnePoints

def ProjectivePlaneClosed (P : ProjectivePlaneFoundation) : Prop :=
  P.finite ∧ P.projectivePlaneAxioms ∧ P.eachLineHasQPlusOnePoints

theorem projective_plane_closed_from_evidence (P : ProjectivePlaneFoundation)
    (E : ProjectivePlaneEvidence P) : ProjectivePlaneClosed P := by
  exact And.intro E.finiteClosed
    (And.intro E.projectivePlaneAxiomsClosed E.eachLineHasQPlusOnePointsClosed)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse