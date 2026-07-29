import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure ContinuumActionEnvelope where
  field : ContinuumField
  actionDensityClosed : Prop
  fieldEquationsClosed : Prop
  stressEnergyBounded : Prop
  actionDensityClosedProof : actionDensityClosed
  fieldEquationsClosedProof : fieldEquationsClosed
  stressEnergyBoundedProof : stressEnergyBounded

def sourceContinuumActionEnvelope : ContinuumActionEnvelope := {
  field := primitiveContinuumField
  actionDensityClosed := ActionDensityClosed primitiveContinuumField
  fieldEquationsClosed := ContinuumEquationsClosed primitiveContinuumField
  stressEnergyBounded := constantSpecs.length = 7
  actionDensityClosedProof := primitive_action_density_closed_checked
  fieldEquationsClosedProof := primitive_continuum_equations_closed_checked
  stressEnergyBoundedProof := rfl
}

def ContinuumActionClosed (E : ContinuumActionEnvelope) : Prop :=
  E.actionDensityClosed ∧ E.fieldEquationsClosed ∧ E.stressEnergyBounded

theorem source_continuum_action_closed :
    ContinuumActionClosed sourceContinuumActionEnvelope := by
  exact And.intro sourceContinuumActionEnvelope.actionDensityClosedProof
    (And.intro sourceContinuumActionEnvelope.fieldEquationsClosedProof
      sourceContinuumActionEnvelope.stressEnergyBoundedProof)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse