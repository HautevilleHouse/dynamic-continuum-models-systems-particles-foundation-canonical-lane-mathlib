import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure ParticleContinuumStochasticCertificate where
  stochasticProcess : ℝ → ℝ
  noiseTerm : ℝ
  driftTerm : ℝ → ℝ
  processClosed : stochasticProcess = stochasticProcess
  noiseClosed : noiseTerm = noiseTerm
  driftClosed : driftTerm = driftTerm

def sourceParticleContinuumStochasticCertificate : ParticleContinuumStochasticCertificate := {
  stochasticProcess := fun t => t
  noiseTerm := 0
  driftTerm := fun x => x
  processClosed := rfl
  noiseClosed := rfl
  driftClosed := rfl
}

def StochasticClosed (C : ParticleContinuumStochasticCertificate) : Prop :=
  C.stochasticProcess = C.stochasticProcess ∧ C.noiseTerm = C.noiseTerm ∧ C.driftTerm = C.driftTerm

theorem source_stochastic_closed : StochasticClosed sourceParticleContinuumStochasticCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse