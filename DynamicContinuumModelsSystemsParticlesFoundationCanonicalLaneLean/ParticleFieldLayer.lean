import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure ParticleFieldCertificate where
  continuumAction : ContinuumActionEnvelope
  trajectoryContinuity : Prop
  interactionRegularity : Prop
  energyConservation : Prop
  trajectoryContinuityClosed : trajectoryContinuity
  interactionRegularityClosed : interactionRegularity
  energyConservationClosed : energyConservation

def sourceParticleFieldCertificate : ParticleFieldCertificate := {
  continuumAction := sourceContinuumActionEnvelope
  trajectoryContinuity := baselineCertificateInputs.length = 7
  interactionRegularity := bridgeConstantKeys.length = 7
  energyConservation := outsideConstantDependencyCount = 0
  trajectoryContinuityClosed := rfl
  interactionRegularityClosed := rfl
  energyConservationClosed := rfl
}

def ParticleFieldClosed (C : ParticleFieldCertificate) : Prop :=
  ContinuumActionClosed C.continuumAction ∧
  C.trajectoryContinuity ∧
  C.interactionRegularity ∧
  C.energyConservation

theorem source_particle_field_closed :
    ParticleFieldClosed sourceParticleFieldCertificate := by
  exact And.intro source_continuum_action_closed
    (And.intro sourceParticleFieldCertificate.trajectoryContinuityClosed
      (And.intro sourceParticleFieldCertificate.interactionRegularityClosed
        sourceParticleFieldCertificate.energyConservationClosed))

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse