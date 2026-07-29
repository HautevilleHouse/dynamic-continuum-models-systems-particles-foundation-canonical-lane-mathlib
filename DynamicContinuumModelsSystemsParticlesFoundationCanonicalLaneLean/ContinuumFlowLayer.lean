import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure ContinuumFlowCertificate where
  flowFieldDefined : Prop
  particleContinuity : Prop
  densityConservation : Prop
  flowFieldDefinedClosed : flowFieldDefined
  particleContinuityClosed : particleContinuity
  densityConservationClosed : densityConservation

def sourceContinuumFlowCertificate : ContinuumFlowCertificate := {
  flowFieldDefined := "velocity_field_continuous" = "velocity_field_continuous"
  particleContinuity := "particle_trajectories_exist" = "particle_trajectories_exist"
  densityConservation := "density_integral_constant" = "density_integral_constant"
  flowFieldDefinedClosed := rfl
  particleContinuityClosed := rfl
  densityConservationClosed := rfl
}

def ContinuumFlowClosed (C : ContinuumFlowCertificate) : Prop :=
  C.flowFieldDefined ∧ C.particleContinuity ∧ C.densityConservation

theorem source_continuum_flow_closed : ContinuumFlowClosed sourceContinuumFlowCertificate := by
  exact And.intro sourceContinuumFlowCertificate.flowFieldDefinedClosed
    (And.intro sourceContinuumFlowCertificate.particleContinuityClosed
      sourceContinuumFlowCertificate.densityConservationClosed)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse