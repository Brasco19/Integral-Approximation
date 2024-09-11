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

quadgk_print(x -> exp(-x), 0, Inf, rtol=1e-2)

# Integrands with singularities and discontinuities
# 1/sqrt(x) blows up at x=0
quadgk_count(x -> 1/sqrt(x), 1, 0)

# Complex Integrand

quadgk_count(x -> 1/sqrt(complex(x)), -1, 0, 1)

# Vector-valued integrand
quadgk( x -> [1, x, x^2,x^3], 0,1, norm=v->maximum(abs,v))

#Arbitrary-precision integrals

setprecision(60, base=10) # use 60-digit arithnetic

quadgk_count(x -> exp(-x^2), big"0.0", big"1.0", rtol=1e-50)

# Gauss-Legendre quadrature rule

a=1; b=3;  n=5;

x, w =gauss(n, a,b)

[x w]

# For example for f(x)=cos(x)
sum(w .* cos.(x)) # evaluate ∑i wi f(xi)

sin(3) -sin(1) # the exact integral

setprecision(30, base=10);

x, w = gauss(BigFloat, n, a, b); @show x; @show w;


using  FastGaussQuadrature

