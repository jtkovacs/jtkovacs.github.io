## Ginsberg, J., Mohebbi, M. H., Patel, R. S., Brammer, L., Smolinski, M. S., & Brilliant, L. (2009). Detecting influenza epidemics using search engine query data. _Nature_, 457.

- Claim: _we can accurately estimate the current level of weekly influenza activity in each region of the United States, with a reporting lag of about one day._
  - CDC projects have a 1-2 week lag and are based on virological (?) and clinical data
- They tried to improve forecasting by identifying related search terms automatically ...
  - _We fit a linear model using the log-odds of an [influenza-like illness, ILI] physician visit and the log-odds of an ILI-related search query: logit(I(t)) = a*logit(Q(t)) + e, whereI(t) is the percentage of ILI physician visits, Q(t) is the ILI-related query fraction at time t, a is the multiplicative coefficient, and e is the error term. logit(p) is simply ln(p/(1-p))._
  - _Our [query-finding] approach rewarded queries that showed regional variations similar to the regional variations in CDC ILI data: the chance that a random search query can fit the ILI percentage in all nine regions is considerably less than the chance that a random search query can fit a single location._
- ... then forecasted on the basis of these terms:
  - The linear model returned queries with the highest correlations, from which they _considered different sets of n top-scoring queries_ and chose the set with the best out-of-sample performance: this ended up being 45 queries.
- Hubris, though? _This system is not designed to be a replacement for traditional surveillance networks or supplant the need for laboratory-based diagnoses and surveillance._
