import HautevilleHouse.DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse