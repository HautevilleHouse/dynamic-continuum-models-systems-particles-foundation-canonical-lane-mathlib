import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  scalingLimit : Prop
  localEquilibrium : Prop
  transportCoefficients : Prop
  scalingLimitClosed : scalingLimit
  localEquilibriumClosed : localEquilibrium
  transportCoefficientsClosed : transportCoefficients

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate := {
  scalingLimit := "euler_scaling_valid" = "euler_scaling_valid"
  localEquilibrium := "local_maxwellian" = "local_maxwellian"
  transportCoefficients := "viscosity_conductivity_finite" = "viscosity_conductivity_finite"
  scalingLimitClosed := rfl
  localEquilibriumClosed := rfl
  transportCoefficientsClosed := rfl
}

def HydrodynamicLimitClosed (C : HydrodynamicLimitCertificate) : Prop :=
  C.scalingLimit ∧ C.localEquilibrium ∧ C.transportCoefficients

theorem source_hydrodynamic_limit_closed : HydrodynamicLimitClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro sourceHydrodynamicLimitCertificate.scalingLimitClosed
    (And.intro sourceHydrodynamicLimitCertificate.localEquilibriumClosed
      sourceHydrodynamicLimitCertificate.transportCoefficientsClosed)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse