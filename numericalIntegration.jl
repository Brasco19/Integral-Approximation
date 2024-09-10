using  QuadGK

integral, error = quadgk(x -> cos(200x), 0,1)

quadgk(x -> cos(200x), 0, 1, rtol=1e-3)

# quadgk support "improper" integral over infinite and semi-infinite  interval, simply by passing ±∞ for the endpoints.

quadgk(x -> exp(-x), 0, Inf)

# Gauss integral
quadgk(x -> exp(-x^2), -Inf, Inf)

# quadgk_count and quadgk_print

quadgk_count(x -> exp(-x), 0, Inf)

# We can also print the evaluation  points

using  FastGaussQuadrature

