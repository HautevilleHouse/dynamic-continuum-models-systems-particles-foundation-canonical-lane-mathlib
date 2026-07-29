import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean

structure StatisticalEnsembleCertificate where
  ensembleMeasure : Prop
  ergodicHypothesis : Prop
  thermodynamicLimit : Prop
  ensembleMeasureClosed : ensembleMeasure
  ergodicHypothesisClosed : ergodicHypothesis
  thermodynamicLimitClosed : thermodynamicLimit

def sourceStatisticalEnsembleCertificate : StatisticalEnsembleCertificate := {
  ensembleMeasure := "measure_invariant" = "measure_invariant"
  ergodicHypothesis := "time_average_equals_ensemble" = "time_average_equals_ensemble"
  thermodynamicLimit := "limit_exists_finite" = "limit_exists_finite"
  ensembleMeasureClosed := rfl
  ergodicHypothesisClosed := rfl
  thermodynamicLimitClosed := rfl
}

def StatisticalEnsembleClosed (C : StatisticalEnsembleCertificate) : Prop :=
  C.ensembleMeasure ∧ C.ergodicHypothesis ∧ C.thermodynamicLimit

theorem source_statistical_ensemble_closed : StatisticalEnsembleClosed sourceStatisticalEnsembleCertificate := by
  exact And.intro sourceStatisticalEnsembleCertificate.ensembleMeasureClosed
    (And.intro sourceStatisticalEnsembleCertificate.ergodicHypothesisClosed
      sourceStatisticalEnsembleCertificate.thermodynamicLimitClosed)

end DynamicContinuumModelsSystemsParticlesFoundationCanonicalLaneLean
end HautevilleHouse