import BlockingSetsOvalsKArcsCanonicalLaneLean.ProjectivePlaneFoundation

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSetConfig {P : ProjectivePlaneFoundation} where
  blockingSet : Set P.pointSet
  blocksEveryLine : ∀ (l : P.lineSet), ∃ (x : P.pointSet), x ∈ blockingSet ∧ P.incidence x l

structure OvalConfig {P : ProjectivePlaneFoundation} where
  ovalSet : Set P.pointSet
  noThreeCollinear : ∀ (x y z : P.pointSet), x ≠ y → y ≠ z → x ≠ z →
    (x ∈ ovalSet ∧ y ∈ ovalSet ∧ z ∈ ovalSet) → ¬(∃ (l : P.lineSet), P.incidence x l ∧ P.incidence y l ∧ P.incidence z l)

structure KArcsConfig {P : ProjectivePlaneFoundation} (k : ℕ) where
  arcSet : Set P.pointSet
  maxCollinear : ℕ
  atMostKCollinear : ∀ (l : P.lineSet), Finset.card (Finset.filter (λ x => x ∈ arcSet ∧ P.incidence x l) (Finset.univ : Finset P.pointSet)) ≤ k

def BlockingSetWitnessClosed (O : BlockingSetAdmittedObject) : Prop :=
  O.conclusion

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse