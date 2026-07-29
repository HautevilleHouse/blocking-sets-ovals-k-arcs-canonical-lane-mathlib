import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ArcsPackage (P : ProjectivePlanePackage) where
  arcSet : Set P.pointSet
  cardArc : ℕ
  noThreeCollinear : Prop
  maximal : Prop
  capSize : ℕ
  noThreeCollinearTerm : noThreeCollinear
  maximalTerm : maximal
  capSizeTerm : capSize = P.order + 1

structure ArcsEvidence {P : ProjectivePlanePackage} (A : ArcsPackage P) where
  noThreeCollinearClosed : A.noThreeCollinear
  maximalClosed : A.maximal
  capSizeClosed : A.capSize = P.order + 1

def ArcsClosed {P : ProjectivePlanePackage} (A : ArcsPackage P) : Prop :=
  A.noThreeCollinear ∧ A.maximal ∧ A.capSize = P.order + 1

theorem arcs_closed_from_evidence {P : ProjectivePlanePackage} (A : ArcsPackage P) (E : ArcsEvidence A) : ArcsClosed A := by
  exact And.intro E.noThreeCollinearClosed (And.intro E.maximalClosed E.capSizeClosed)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse