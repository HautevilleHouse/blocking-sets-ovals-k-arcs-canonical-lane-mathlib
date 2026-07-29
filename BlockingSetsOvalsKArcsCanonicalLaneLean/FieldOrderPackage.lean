import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlockingSetsOvalsKArcsCanonicalLaneLean

structure FieldOrderPackage (𝔽 : Type u) where
  field : 𝔽
  characteristic : ℕ
  order : ℕ
  fieldAxioms : Prop
  finite : Prop
  charPrime : Prop
  orderPrimePower : Prop

structure FieldOrderEvidence {𝔽 : Type u} (F : FieldOrderPackage 𝔽) where
  fieldAxiomsClosed : F.fieldAxioms
  finiteClosed : F.finite
  charPrimeClosed : F.charPrime
  orderPrimePowerClosed : F.orderPrimePower

def FieldOrderClosed {𝔽 : Type u} (F : FieldOrderPackage 𝔽) : Prop :=
  F.fieldAxioms ∧ F.finite ∧ F.charPrime ∧ F.orderPrimePower

theorem field_order_closed_from_evidence {𝔽 : Type u} (F : FieldOrderPackage 𝔽)
    (E : FieldOrderEvidence F) : FieldOrderClosed F := by
  exact And.intro E.fieldAxiomsClosed
    (And.intro E.finiteClosed
      (And.intro E.charPrimeClosed E.orderPrimePowerClosed))

end BlockingSetsOvalsKArcsCanonicalLaneLean
end HautevilleHouse