# Part (i)
set.seed(123)               # for reproducibility
n <- 25
mu_true <- 45               # mean
sigma_true <- 2             # standard deviation

# generate random sample
sample_times <- rnorm(n, mean = mu_true, sd = sigma_true)
print("Sample baking times (minutes):")
print(round(sample_times, 3))

# Part (ii)
# H0: mu = 46
# H1: mu < 46

t_result <- t.test(sample_times, mu = 46, alternative = "less")
print("One-sided t-test result (H1: mean < 46):")
print(t_result)

# Show p-value and decision
alpha <- 0.05
cat("\nOne-sided p-value =", t_result$p.value, "\n")

if (t_result$p.value < alpha) {
  cat("Conclusion: Reject H0. Evidence that mean < 46.\n")
} else {
  cat("Conclusion: Fail to reject H0. Not enough evidence that mean < 46.\n")
}
