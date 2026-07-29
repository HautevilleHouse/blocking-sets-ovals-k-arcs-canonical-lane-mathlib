import BlockingSetsOvalsKArcsCanonicalLaneLean.BlockingSetObjects

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSetEvidence where
  ovalIsBlockingSetClosed : OvalIntersectsEveryLine

structure BlockingSetClosed where
  ovalIsBlockingSet : Prop

definition BlockingSetClosed (O : BlockingSetAdmittedObject) : Prop :=
  O.ovalIsBlockingSet

theorem blocking_set_evidence_from_object (O : BlockingSetAdmittedObject) :
    BlockingSetClosed O := by
  exact O.ovalIsBlockingSet

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse
