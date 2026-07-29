import HautevilleHouse.BlockingSetsOvalsKArcsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

def bridgeClosed (A : BlockingSetsAdmittedObject) : Prop :=
  admittedClosure A

theorem bridge_from_admissible_class (A : BlockingSetsAdmittedObject) : bridgeClosed A :=
  trivial

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse