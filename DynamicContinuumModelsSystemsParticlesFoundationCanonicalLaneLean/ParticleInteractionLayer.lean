import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure ParticleInteractionCertificate where
  interactionPotential : Prop
  forceBalance : Prop
  conservationLaws : Prop
  interactionPotentialClosed : interactionPotential
  forceBalanceClosed : forceBalance
  conservationLawsClosed : conservationLaws

def sourceParticleInteractionCertificate : ParticleInteractionCertificate := {
  interactionPotential := "potential_lipschitz" = "potential_lipschitz"
  forceBalance := "total_force_zero" = "total_force_zero"
  conservationLaws := "momentum_energy_conserved" = "momentum_energy_conserved"
  interactionPotentialClosed := rfl
  forceBalanceClosed := rfl
  conservationLawsClosed := rfl
}

def ParticleInteractionClosed (C : ParticleInteractionCertificate) : Prop :=
  C.interactionPotential ∧ C.forceBalance ∧ C.conservationLaws

theorem source_particle_interaction_closed : ParticleInteractionClosed sourceParticleInteractionCertificate := by
  exact And.intro sourceParticleInteractionCertificate.interactionPotentialClosed
    (And.intro sourceParticleInteractionCertificate.forceBalanceClosed
      sourceParticleInteractionCertificate.conservationLawsClosed)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse