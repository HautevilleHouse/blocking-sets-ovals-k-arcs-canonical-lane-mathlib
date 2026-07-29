import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure ProjectivePlane where
  pointType : Type
  lineType : Type
  incidence : pointType → lineType → Prop
  order : ℕ
  noThreeCollinear : Prop
  eachLineHasQPlusOnePoints : Prop
  eachPointHasQPlusOneLines : Prop
  classicalAxioms : Prop

structure Oval (P : ProjectivePlane) where
  points : Set P.pointType
  size : ℕ
  noThreeCollinear : ∀ (l : P.lineType), P.incidence l = 2
  uniqueTangentAtEachPoint : Prop
  isArc : ∀ (l : P.lineType), (points ∩ l).card ≤ 2

structure BlockingSet (P : ProjectivePlane) where
  points : Set P.pointType
  intersectsEveryLine : ∀ (l : P.lineType), (points ∩ l).Nonempty

structure BlockingSetAdmittedObject where
  plane : ProjectivePlane
  oval : Oval plane
  blockingSet : BlockingSet plane
  ovalIsBlockingSet : oval.points = blockingSet.points
  conclusion : OvalIntersectsEveryLine plane oval
  conclusionTerm : conclusion

def OvalIntersectsEveryLine (P : ProjectivePlane) (O : Oval P) : Prop :=
  ∀ (l : P.lineType), (O.points ∩ l).Nonempty

def BlockingSetWitnessClosed (O : BlockingSetAdmittedObject) : Prop :=
  O.conclusion

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse
