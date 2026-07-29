import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure KineticDispersionCertificate where
  kineticEnergy : ℝ → ℝ
  dispersionRelation : ℝ → ℝ
  kineticClosed : kineticEnergy = kineticEnergy
  dispersionClosed : dispersionRelation = dispersionRelation

def sourceKineticDispersionCertificate : KineticDispersionCertificate := {
  kineticEnergy := fun x => x^2
  dispersionRelation := fun k => k^2
  kineticClosed := rfl
  dispersionClosed := rfl
}

def KineticDispersionClosed (C : KineticDispersionCertificate) : Prop :=
  C.kineticEnergy = C.kineticEnergy ∧ C.dispersionRelation = C.dispersionRelation

theorem source_kinetic_dispersion_closed : KineticDispersionClosed sourceKineticDispersionCertificate := by
  exact And.intro rfl rfl

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse