import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure OvalsPackage (P : ProjectivePlanePackage) where
  ovalSet : Set P.pointSet
  cardOval : ℕ
  noThreeCollinear : Prop
  tangentAtEachPoint : Prop
  cardinalityEqualsOrderPlusOne : Prop
  noThreeCollinearTerm : noThreeCollinear
  tangentAtEachPointTerm : tangentAtEachPoint
  cardinalityTerm : cardinalityEqualsOrderPlusOne

structure OvalsEvidence {P : ProjectivePlanePackage} (O : OvalsPackage P) where
  noThreeCollinearClosed : O.noThreeCollinear
  tangentAtEachPointClosed : O.tangentAtEachPoint
  cardinalityClosed : O.cardinalityEqualsOrderPlusOne

def OvalsClosed {P : ProjectivePlanePackage} (O : OvalsPackage P) : Prop :=
  O.noThreeCollinear ∧ O.tangentAtEachPoint ∧ O.cardinalityEqualsOrderPlusOne

theorem ovals_closed_from_evidence {P : ProjectivePlanePackage} (O : OvalsPackage P) (E : OvalsEvidence O) : OvalsClosed O := by
  exact And.intro E.noThreeCollinearClosed (And.intro E.tangentAtEachPointClosed E.cardinalityClosed)

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse