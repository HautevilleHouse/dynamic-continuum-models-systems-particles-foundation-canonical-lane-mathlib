import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

def ConstrainedContinuumParticleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuum_particle_endgame (A : AdmissibleClass) :
    ConstrainedContinuumParticleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse