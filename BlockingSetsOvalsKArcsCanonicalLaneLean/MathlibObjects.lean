import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure BlockingSetSpace where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop
  finiteProjectivePlane : Prop
  order : ℕ

structure BlockingSetAdmittedObject where
  space : BlockingSetSpace
  blockingSetProperty : Prop
  conclusion : blockingSetProperty

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse