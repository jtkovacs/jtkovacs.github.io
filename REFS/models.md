
_The following notes are largely based on [Scott Page's](https://vserver1.cscs.lsa.umich.edu/~spage/) Coursera class on [Model Thinking.](https://www.coursera.org/course/modelthinking)_

_For information systems-related applications of modeling, see [notes on system and process modeling;](modeling.html) for business applications of models as analytic frameworks, see [notes on project management](project-management.html) and [process improvement.](process-improvement.html)_
 
 
 
 
# Models for ... 

## Decision-making 

We talk about decision-making models for normative reasons (to help us make better decisions) and positive ones (to predict or analyze others’ decisions)

Multi-criterion models (many features bundled together): 
Can plot options in multidimensional space and calculate least distance to ideal point; this is a spatial model. A preference is spatial if people prefer things “just right” rather than infinitely large or small.
Use a matrix and compare column by column; compute score or weighted score, e.g. MCRI decision

Probabilistic models (uncertainty in the world):
Probability basics:
Classical probability: easy to calculate, e.g. for a dice
Frequency: can estimate probability by counting lots of data; makes assumption of stationarity
Subjective probabilities: dangerous, subject to bias, make easily violate axioms of probability
Decision trees: write down payoffs and probabilities; also can infer what other people think p is based on their decisions, or calculate payoffs knowing probabilities
Value of information: calculate value without and with information; then take the difference
   
## Mechanism design

Formalizing institutions; designing the rules of the game by defining permitted actions and payoffs.

Hidden actions: Effort={0,1}; Outcome={Good,Bad}; p(Good|Effort=1)=1; p(Good|Effort=0)=p; c, cost of effort=1. Contract: pay M if Good, 0 if Bad→ Payoff(effort=1)=M-c and Payoff(effort=0)=pM; set M-c>pM → M>c/(1-p).

Hidden information: Ability={a,b}; cost(a)=c, cost(b)=C. Contract: pay M after k hours where M>kc, M<kC → k=M/C. Costly signaling; how does this apply to internships?

Auction design: From the perspective of the seller, the objective is to get as much money as possible for a fixed amount of goods. Three basic designs: ascending bid vs. sealed bid vs. second price bid. In second price bidding, people makes a sealed bid; the highest bid wins but they actually pay the amount of the second highest bidder. 
For an ascending bid, the winner may not reach their upper limit; the item sells at just over the upper limit of the person with the second highest WTP. 
For second price bidding, a rational bidder will bid their true WTP because this maximizes ‘net gain’: WTP - actual price paid. Prevents arms race dynamic.
In sealed bids, people tend to underbid; in fact, the optimal bid is WTP/2 .This turns out to be the expected value of the second highest bidder.
→ revenue equivalence thm

Mechanisms in public goods projects: 
Clarke-Groves-Vickery Pivot mechanism: each person states what the project is worth to them. If the sum of these claims is higher than the cost of hte project, then the project goes ahead with each paying only the minimum amount needed to make the project viable: e.g. person_1 pays max{cost - V2 - V3 … - Vn, 0}. → everyone has an incentive to reveal their true value, rather than over- or under-bidding.
All mechanisms for these sorts of problems have trade-offs.

## Prediction

Prediction at the individual level → “[W]e tend to pay undue attention to single model thinkers. We shouldn’t. We should heed the advice of those who think more subtly. Better still, we should learn many models ourselves.”
We’ve looked at three types of predictive models: categorical, linear, and Markov

Prediction by groups → Wisdom of crowds = f(individual’s accuracy, diversity of ideas)
Crowd’s error = Avg error - Variation

## Categorization

Categorical: data can be sorted into different ‘boxes’
Calculation of total variation: subtract mean from each data point, square and sum the results
Proper categories greatly reduce total variation
R2 = %variation explained = (total_variation_pre-categories - total_variation_with_categories)/tv_pc





# Models theorizing ... 
 
## Segregation
 
There's an identification problem with segregation: do we deliberately seek the company of those who are similar to us (sorting), or do we become like those with whom we associate (peer effects)?
 
### Measuring segregation

- **Index of dissimilarity**
    - o ≤ DI ≤ 1
    - b = #units-in-block; B = #total-units-across-blocks b/B = %units-in-block; and y, Y, y/Y → |b/B - y/Y|/2
    D- I for a region of blocks = sum of (#blocks*block’s-DI)
- **[Isolation index](https://en.wikipedia.org/wiki/Index_of_dissimilarity)**

### Thomas Schelling’s spatial segregation model

Agent-based model where people choose whether to move or stay depending on the composition of their immediate neighborhood. The deep insight is that a similarity threshold of 30% has an equilibrium (everyone happy) with segregation of 70%; and 50% tolerance leads to nearly 100% segregation, including borders made up of empty cells. Perhaps counterintuitively, when intolerance is set very high, the system won’t find an equilibrium since everyone is perpetually moving. 
Micromotives ≠ macrobehavior
I would want to augment this model, giving cell-classes their own mobility parameter.
Exodus tip: agent leaves because someone else exits the neighborhood
Genesis tip: agent leaves because someone else enters the neighborhood

### Granovetter’s model of peer effects 

In re: people’s decision to join in a social movement

N individuals; the jth individual has threshold Tj, and will join if T others do
‘tail wagging the dog’: a population needs someone with Tj=0 to get things going
collective action more likely to happen if: low thresholds, variation in thresholds
calculate avg. T for a population; avg. discontent doesn’t matter

### Standing ovation model

- builds off Granovetter model; adds information to peer effects
- T, threshold to stand, and T=f(Q) is a function of quality
- S, signal from peers, and S=Q+E is a function of quality and error
- If S > T, then stand; if more people, X%, stand, then stand
- Since Q+E>T is the decision rule, either Q↑ or E↑ increases the number of people standing
- Lower threshold ⇒ higher number of people standing
- Lower X% ⇒ higher numbers of people standing
- If Q<T, more stand
- Big groups more likely to stand together (local X%)
- Celebrities (people in front row, everyone sees them, they don’t see anyone) → wield large influence

## Aggregation

Aggregation is tricky; “more is different” (can’t just look at individual parts). So, we model to get the logic correct. e.g. water is made of molecules, where wetness comes from the hydrogen bond; cognition comes from connected neurons.

Additional readings:

- http://stattrek.com/sampling/sampling-distribution.aspx
- http://stattrek.com/probability-distributions/binomial.aspx
- https://en.wikipedia.org/wiki/Six_Sigma 

### Central Limit Theorem

[Aggregating actions or numbers] : If you add up many independent events with finite variance, the distribution should be bell-shaped with mean=N/2 for the binomial distribution (or mean=p*N, more generally) and sigma=sqrt(N)/2 for the binomial distribution (or sigma=sqrt(p(1-p)N), more generally).
p(x > 6*sigma) = 3.4 in a million. In production processes, the six sigma approach means that you shoot for a sigma such that your likelihood of exceeding some specific tolerance is 3.4 in a million.

### Game of Life

[Aggregating rules]  by John Conway, a mathematician in group theory:  
Dead → Come alive if three of your neighbors are alive
Alive → Die if you have fewer than two neighbors or more than three neighbors
Results: Self-organization into complex patterns; emergence of distinct functional entities, e.g. f-pentomino, that can be used for computation
    
### Cellular automata
    
[Aggregating families of rules] , developed by John von Neumann and covered extensively in Wolfram, S. A New Kind of Science.
For 1D cellular automata models, we can visualize them on a grid treating each row as an instance of time
From the perspective of each cell, there are 8 possible states for its immediate neighborhood
Wolfram shows that 1D models, depending on their governing rules, exhibit all forms of behavior: equilibrium, oscillation, pure randomness, and complexity → “an information theoretic universe”?
There are a total of 256 rules: 8 neighborhood states, 2 possible responses → 28 = 256
Langton’s lamba: for a given set of rules, what % tell cells to switch on? e.g. ⅛ or ⅞

### Aggregating preferences

[Aggregating preferences] Politics and economics:  
How do we represent preferences? Through inequalities: preference rankings/orderings
How do we discern preferences? Revealed or stated
Usually assume rational, transitive preferences, but even so collective preferences may be nontransitive (Condorcet paradox)
   
## Individual human behavior
    
Murray Gell-Mann: “Imagine how difficult physics would be if electrons could think”; people=purposeful, diverse.

“Three attributes of physical systems (1) simple parts (2) interacting in large numbers (3) that follow fixed rules render physical models amenable to mathematics … Systems that include people as actors– and these include ecological systems – lack the three attributes that produce regularity. The parts of these systems aren’t simple: People are sophisticated, multi-dimensional, and capable of a range of behaviors. We march to our own drummers. Further, though billions of people exist, we interact in small to moderate sized groups. Finally, we don’t follow the same fixed rules. Unlike carbon atoms, we learn. We adapt. We do crazy things.”

### Rational 

== optimizing agents who have goals; can be represented by objective function.
Functions of form X(C-X) are optimized when C=X-C → C=X/2 
Rationality in no way assumes selfishness
Decisions (individual): payoff depends only on your choices
Games (multiplayer): payoff depends on what other people do. In this case, assuming rationality on the part of the other person is very helpful because it helps you make you own decision.
When are we likely to see rationality? When the stakes are large; when decisions are repeated; when groups of people make decisions (although other phenomena like groupthink can occur); or when a problem is particularly simple.
Why is rationality an important assumption? It provides a unique and comparatively easy-to-calculate benchmark; as people learn, they tend towards rationality; and many variations cancel out (i.e., high variance but no bias).

### Behavioral 

== based on empirics; irrational in systematic ways; based on observations and neuroscience
http://us.macmillan.com/thinkingfastandslow/danielkahneman
http://yalepress.yale.edu/book.asp?isbn=9780300122237 
http://www.econlib.org/library/Enc/BehavioralEconomics.html 
Prospect theory: we look at mathematically equivalent gains and losses differently
Hyperbolic discounting: we discount one day in the near future differently than one day in the far future
Status quo bias: 10% check a box to not donate their organs; 25% check a box to donate their organs
Base rate bias: If you get people thinking about one number and then ask them for a second, it will tend to be close to the first number
Hundreds of documented biases; but, themselves subject to criticisms as WEIRD (Western, educated, industrialized, rich, developed countries) rather than universal. 
Can model as rational plus some relevant bias/es.

### Rule-based

Assume that people follow rules/strategies
Can apply fixed or adaptive rules in decision or game contexts
Fixed rule: random choice, most direct route, tit for tat
Adaptive: gradient, mimicry, best possible choice
Rules can be easy to compute, good at capturing main effects; but create ‘people’ who are easily exploited (in a strategic context) and can be very ad hoc

For the sake of aggregate effects, when does individual behavior matter? Which model of people should we choose? “One of the reasons we models is to determine how much it matters how accurate our model is.” 
“In markets, the institution itself has such an influence that we don’t worry about modeling behavior”; this was studied with zero intelligence agents (1,2), and they yield the same equilibrium price as rational agents.

## Coordination & culture

Culture: http://www.worldvaluessurvey.org/WVSContents.jsp, http://geert-hofstede.com/national-culture.html  
differences between groups and
similarities within groups that are 
interesting in some way, i.e., appearing suboptimal or confusing to outsiders.

Culture is an n-person coordination game. In a coordination game, players receive payoffs when they choose the same action. An n-person coordination game can be modeled with a Lyapunov function, F(x)= # of coordinations, k=2. BUT, the process doesn’t have to stop with everyone being the same; you can get blocks of different behaviors. 
Note that suboptimal equilibria are possible with coordination games

### Axelrod’s culture model

http://ccl.northwestern.edu/netlogo/models/community/Dissemination%20of%20Culture 
Features: {1, 2, ..., N}
Traits are actions you take for a feature: {1, 2, …, aN}
Person is a vector of traits on features: [a1, a2, …, ai, aN]
People are placed into a social space, a matrix; they look at neighbors and 
choose whether to interact based on some similarity threshold
if they’re similar enough to interact, then they randomly select a feature and change their behavior to match their neighbor’s trait (if they don’t match already)
→ emergence of distinct cultures with thick boundaries

### Coordination & consistency model

people don’t want to keep infinitely adjusting to people around them; they also have some consistency of worldview. The rule here is, adjust your own traits so they are more numerically similar with each other. → process takes a long time to converge, and small errors at the individual level lead to large population-level divergences. In the transition map below, if we add an error term that allows us to exit the red-red-red-red state of total consistency and coordination, then we suddenly have a Markov process and can represent the process with a transition matrix:

All possible states:


Transition map between states:


Markovian matrix:



Suboptimal outcomes can arise from:
Desire for coordination
Desire for consistency
External change in what’s optimal, but system remains stuck at equilibrium

### Prisoner's dilemma

In Prisoner’s Dilemma, the incentive to defect must be less, on average, than the payoffs available for cooperation. Here are the constraints: T>R, 2T>F, F>T.

What makes PD so interesting is that, in terms of matrix addressing, cell (1,1) is the highest overall payoff; cells (1,2) and (2,1) are Pareto efficient; but cell (2,2), the worst by every criterion, is where the game ends up. It’s the Nash equilibrium. This contrasts with the self-interest game where individual incentives lead players to achieve the highest overall payoff which is also Pareto efficient.
In the case of price competition or tech adoption, we don’t care that the players suffer becomes consumers benefit. (Unless we also consider that consumers are workers.)

7 ways that cooperation arises in 2-person games: Additional constraint b>c where c=cost of cooperation, b=benefit to others. See http://books.simonandschuster.com/SuperCooperators/Martin-Nowak/9781451626636. 
Repeated games with opportunity for direct reciprocity. If p=p(meet again), then p>c/b is the condition.
Indirect reciprocity, i.e. reputation. Let q=p(reputation is known) for the condition q>c/b.
→ denser ties better
Network reciprocity with k neighbors, condition is k > b/c.
→ denser ties worse
Group selection is the mechanism where, through competing against other groups, groups with a higher percentage of cooperators are more successful. 
Kin selection where players are related, r, and care about it; rb>c is the constraint.
Laws or other prohibitions
Creation of incentives

### Collective action problems

n-person Prisoner’s Dilemmas with payoff function for person j making action xj (note that xj’s action is counted as a cost and as a benefit scaled by β): -xj+i=1Nxi, 0 < xj, β < 1.
Common pool resource problems: Rt+1=f(X,Rt) where X is the total consumed, sum of all xi.
What helps with collective action problems? The particulars matter; there’s no panacea. See http://www.onthecommons.org/magazine/elinor-ostroms-8-principles-managing-commmons. Possible options:
Clear ownership
Rotation schemes

## Diversity & innovation 

linked to prior discussion of  economic growth & role of innovation)

F(a), the payoff function for action a. The question is: how do we get to c; and further, how do we avoid getting stuck on local optima to find the global optimum?

Perspectives: how you encode the problem, how you represent it to yourself, creating a landscape (above)
A perspective is a representation of the set of all possible solutions to a problem
A landscape assigns a value to all possible solutions to a problem
A better perspective has fewer peaks: fewer places to get stuck
“Mount Fuji landscape”: single peaked
Savant existence thm: for any problem there’s a perspective that creates a Mt Fuji landscape
With N alternatives, there are N! ways to create a perspective … many bad

Heuristics: rules that guide how you move across/search your landscape
Hillclimb: check left, check right, and move to the higher point
Do the opposite ... of the existing solution
Big rocks first: when filling a bucket with rocks and sand
Random search
Neumann neighborhoods: look N,S,E,W

### No free lunch thm 

(Wolpert & McCready): all algorithms that search the same number of points with the goal of locating the maximum value of a function defined on a finite set, e.g., a landscape, perform exactly the same when averaged over all possible functions → You need to have some instinct for what heuristic suits which landscape; if you don’t know anything about the problem, then no heuristic is better

### Collaborative problem-solving

He uses ‘teams’ in a very loose sense; doesn’t need to be face-to-face or synchronous
Ability: the avg value of all the peaks in your perspective
For teams, look at intersection of perspectives and take the avg
⇒ The team can only get stuck on a solution that’s a local optimum for every member of the team. It might not be the global optimum, but it will be better than individual solutions.
⇒ We want teams with a diversity of perspectives and heuristics
Missing from this model:
Imperfect communication
Error in interpreting the value of a solution

### Recombination

Martin Weitzman’s theory of recombinant economic growth
Exaptation: when something developed for one purpose proves highly useful for another, e.g. feathers
Joel Mokyr: gifts of Athena == technological developments that facilitate the exchange of ideas

## Tipping points & diffusion

“The straw that broke the camel’s back”; not an exponential growth pattern, but a moment when a small change comparable to other prior changes has a wildly disproportionate impact.

### Percolation model (contextual)

Each square in a grid has p probability of being permeable; water can move from the top to the bottom of the grid through adjacent permeable cells, but otherwise stops
At some p ≈ .593, percolation happens (from top to bottom of the grid); this is the tipping point
Can be applied forest fires, where the cells represent trees and we track the spread of fire and also the likely yield of a managed forest
Can be applied to banks/countries in a simple way, to see how failure spreads
Can be applied to the spread of information, where p represents the ‘juciness’ of a rumor; this implies that we shouldn’t expect information to be spread in a linear way
Can be used to explain the synchronicity of scientific discoveries, where p represents the accumulation of related knowledge and technologies: “Once we get above the threshold, there are many paths”

### Contagion models 

#### Diffusion

not a tipping point!

N = total population
Dt = # of people infected with disease D at time t
N - Dt = # of people not infected
T = transmission rate, likelihood of infection upon contact
p(an individual has D) = Dt/N
p(an individual is healthy)  = (N - Dt)/N
c = contact rate; how often people meet, in general
Nc = # of meetings in a population of size N
p(individuals meeting each other will be a healthy-infected pair): Dt/N * (N - Dt)/N * Nc
p(meeting of healthy-infected pair will lead to a new infection): Dt/N * (N - Dt)/N * Nc * T
Dt + 1 = Dt + Dt/N * (N - Dt)/N * Nc * T
Curve D = f(t) is sigmoidal, because initially, there are few people to spread the disease; and eventually, there are few healthy people to spread it to

#### SIS 

tipping point!
Susceptible-Infected-Susceptible
a = likelihood of recovering from the disease
Dt + 1 = Dt + Dt/N * (N - Dt)/N * Nc * T - aDt = Dt + Dt[cT * (N-Dt)/N - a]
If Dt is small, then term N-Dt/N is close to 1, and cT - a > 0, then the disease will spread, i.e.:
R0 = cT/a is the basic reproduction number; if R0 > 1, the disease spreads; this is the tipping point
R0(measles) is about 15, although for this disease, we need to use the SIR model
R0(flu) is about 3
Implications for policy: for V is %N(vaccinated), we need V >= 1 - 1/R0

### Classifying tipping points

Active/direct: due to change in variable, i.e., an unstable equilibria in the phase plane
Contextual: due to change in parameter/s, i.e. a shift of the phase portrait s.t. fixed points change
Within-class tip, e.g. stable equilibrium to new stable equilibrium
Between-class tip, e.g. oscillation to complexity

### Measuring tipping points

how big is the tip? how rare? “measure tippiness by changes in uncertainty”
For p(A) + p(B) + … + p(N) = 1, the likelihood that any member of set A will another member of set A is
 p(A)p(A) = p(A)2, and the diversity index is 1i=A,B,...Np(i)2. This means, roughly, how many ‘types’ of outcomes are there? To quantify tippiness, we calculate the diversity index pre- and post-tip. 

Entropy is -Σ p(i)*log2(p(i)). This tells us the number of bits of information we need to know to identify the outcome. I.e. for outcomes A,B,C,D, the questions are: is it in (A,B) or (C,D)? is it A?


## Economic growth 

Introduction to growth
Growth discussed in terms of GDP per capita
Correlation between GDP and life satisfaction: yes, more money makes you happy if you start poor

### Exponential growth

Compounding: Vt=V0(1+r)t
Continuous compounding: Vt=V0ert, since lim n→ ∞ (1+r/n)nt = ert 
Rule of 72: 72/r is approximately how long it will take GDP or a bank balance to double, where 0.08 interest rate means r=8 ⇒ even small changes in annual growth rate matter

### Basic growth model 

(capital investment, capital depreciation)

Elements:
L1=labor at time t, plus
Kt=capital at time t combine to produce
Yr=GDP at time t, which can be
Ct=consumed at time t, or 
It=invested at time t --- a function of 
s=savings rate.
Finally, d=depreciation rate determines how fast capital deteriorates; and dK is total depreciation.
Assumptions:
Output is an increasing but concave function of labor and capital: Yt = Lt1/2 Kt1/2 
Output is either consumed or invested: Yt = Ct + It and Ir = sYt
Capital can accumulate, but depreciates: Kt+1 = Kt + It - dKt
Result: long-run equilibrium occurs where investment = depreciation
Growth eventually stops because output is concave while depreciation is linear

### Solow growth model 

(capital investment, capital depreciation, innovation)
Same variables as in basic growth model, adding only: 
At, quality of technology at time T, and 
β, a measure of the capital-intensivity of a specific output
Then Yt=f(At,Lt,Kt)=AtLtβKt1-β
Innovation multiplier: since labor and capital are more productive, it makes sense to invest in them more
Notice that multipliers are, obviously, multiplicative rather than additive relationships

“Why are some countries rich and other countries poor?”
Will China keep growing? No, because huge gains early on are possible because there is so little capital relative to labor. Once you accumulate enough capital, you stop growing so rapidly and need to innovate.
Two growth strategies: invest in capital; invest in productivity (innovation). If this is so obvious, why are some countries stagnant? Acemoglu & Robinson, Why Nations Fail: 100s of years of data, a “rich study of history”; make the following main points:
“Growth requires a strong central government to protect capital and investment …” so that people have incentives to invest and innovate,
“… but the government cannot be controlled by a select few,” because it become extractive or protects industries that should die, viz.:
an increase in At, in Solow’s model, means that less labor is needed; i.e., “growth requires creative destruction”, which he asserts is a “short-term” phenomenon.
How do historians feel about Acemoglu?
http://www.nybooks.com/articles/2012/08/16/why-nations-fail/
http://www.economist.com/blogs/buttonwood/2012/04/duelling-academics
http://levine.sscnet.ucla.edu/general/aandrreview.pdf
http://www.historynewsnetwork.org/blog/20780
http://pastspeaks.com/2012/04/17/theory-and-historians/ 

Other applications of this model: for growth of ‘personal GDP’, pursue innovation and continuous learning






   
# Models using ...

## Linear regression

Linear models, not the same thing as a line; y=f(x), a causal relationships; line of best fit; reading regression output
http://www.niaoren.info/pdf/Beauty/9.pdf & other studies, experts never did better at prediction than simple linear models

Strategies for modeling nonlinear data
Approximate nonlinear model with a linear function
Break nonlinear data into parts, e.g. quartiles, each with their own line
Introduce nonlinear terms as linear terms: y = mz+b where z=sqrt(x)

The Big Coefficient approach: making policy decisions based off which coefficient in a multivariate regression is largest, as in evidence based medicine/philanthropy/education/management. The process: build a model, gather data, identify important variables, design intervention.
vs Big Data: gather data, find patterns, identify important variables, design intervention
vs accounting for feedbacks (people’s behavioral adaptations in response to interventions)
vs The New Reality: trying to create a better world, which necessarily means departing from data
e.g. Big Coefficient thinking = tax cigarettes, New Reality thinking = universal health care


## Markov processes

A particularly fertile model that captures dynamic processes between a finite and fixed set of states. It must be possible to get from any one state to any other and the probabilities of moving between states (transition probabilities) must remain fixed over time. If those assumptions hold, then the process will have a unique equilibrium (i.e., initial state doesn’t matter; history doesn’t matter; interventions/perturbations don’t matter).

If A is the transition matrix and x is the state vector, then the equilibrium is: Ax=x. 
Equilibrium=nothing changes vs. statistical equilibrium: individual elements move, but no net change.
http://nicolewhite.github.io/2014/06/10/steady-state-transition-matrix.html    
http://www2.math.uu.se/~takis/L/McRw/mcrw.pdf 

Exaption of Markov models: Useful when there’s a sequence of events with known historical probabilities
Voter turnout, school attendance, student attentiveness, regime transitions
Identification of authors: make a transition matrix of key phrases; how often is the word “for” followed by “the record”, “example”, “the sake of”?


## Lyapunov functions

If we can represent a system/model with a Lyapunov function, then we know it goes to equilibrium and we also know how quickly it does that. A system with equilibrium behavior can lack Lyapunov representation.

Conditions:
There is an absolute minimum/maximum
Movement is only possible in one direction: down/up. In math: if xt+1 ≠ xt, there is some k >0 such that F(xt+1) > F(xt) +/- k, that is, with each timestep the system moves by at least k amount. [Zeno’s paradox; need to define a fixed step distance otherwise we will never arrive at the maximum]
Therefore, eventually, xt+1=xt.
\#periods_to_equilibrium ≤ (max_value - initial_value)/step_size
Does the process necessarily reach a max/min? No, it can get stuck. For example, in the case of preferences, it could be that a pairwise trading scheme leads to a suboptimal allocation while a more sophisticated trading scheme would attain maximum happiness.

The hard part is constructing a Lyapunov function to represent the system.
Self-organized avoidance of gridlock in cities: people have a list of places they need to go in the week, and they determine their route randomly. If they encounter a crowd at their desired location on a particular day, then they modify their route. Say the F(x) = # of people you encounter in your weekly route. This has a minimum value (0), and if people move according to their rule, then #encounters falls by at least k=2.
Exchange economies & externalities: each person brings items to a market, and trades only if that trade increases their happiness by k amount. F(x) = total happiness of all participants in the market. Because of externalities, though, we can’t say that this system will attain equilibrium. Participants not materially involved in a transaction may yet experience its impacts on their happiness.

Even if a system has an equilibrium, we can’t necessarily determine that it does … because of externalities. E.g. Collatz problem: pick a number. If even, divide by 2. If odd, multiply by 3 and add 1. Stop if you ever reach 1. Does this process ever stop?

Difference between Lyapunov processes (reaches an equilibrium that need not be unique or efficient) and Markov processes (stochastic equilibrium that doesn’t depend on initial conditions).

## Path dependence

What is path dependence?
Path dependence=the sequence of previous outcomes matter
Early path dependence, or full path dependence
Recent path dependence
Path dependence of outcomes
Path dependence of equilibria
Phat dependence=the set of events in the path matter, but not their order
State/set dependence=the paths can be partitioned into a finite number of states which contain all relevant information; the outcome in any period depends only upon the state of the process at that time; a kind of Markov process

What isn’t path dependence?
Strict Markov processes, where history doesn’t matter; path-dependent systems violate the Markov assumption of fixed transition probabilities
Externalities: can play a role in creating path dependence, especially negative externalities
Increasing returns/virtuous cycle/self reinforcement/positive feedbacks: often co-occurs with path dependence, but doesn’t need to; increasing returns are a kind of externality
Chaos, where systems exhibit extreme sensitivity to initial conditions; deterministic
Tipping points: similar to the case of chaos, where one moment or point holds undue influence over the fate of the system; it’s a difference of degree, an issue of abrupt versus gradual change

Urn models illustrate types of in/dependence: different colored balls in an urn, picking some out
Bernoulli process (independent): Select ball & return after picking.
Polya process (phat dependent; outcome and equilibrium dependent): Select, return along with another ball of the same color. Results: any probability of picking a red ball is an equally likely equilibrium, and a given set of outcomes is equally likely, no matter what order they occur in.
Balancing process (phat dependent; outcome dependent, equilibrium independent): Opposite of Polya process, so add the opposite color ball. Result: converges to equal percentages.
Sway process (path dependent): In period t, add a ball of the same color as the selected ball and add (2t-s - 2t-s-1) balls of the color chosen in each period s<t. Result: the past takes on more weight over time.


## Networks

Internet has made networks more visible and measurable; popular and scientific interest has increased. Networks have been used to examine segregation; information flow within organizations (e.g. email traffic patterns); link patterns among blogs to demonstrate political polarization; intellectual traditions, citation patterns, etc.
https://flowingdata.com/category/visualization/network-visualization/
https://gephi.org/
http://www.kdnuggets.com/2015/06/top-30-social-network-analysis-visualization-tools.html
http://kateto.net/network-visualization 
http://www.ladamic.com/netlearn/ 
http://www.cs.cornell.edu/home/kleinber/networks-book/ 

Logic of network formation:
Random: N nodes with P probability that they’re attached; interesting to investigate, but not realistic
Contextual tipping point: for large N, P > 1/(N-1) the network almost always becomes connected
Small worlds: Some percentage of local friends and some percentage of random friends 
Random-clique: A variant where local friends are extremely interconnected
Preferential attachment: Node arrives; P(connects to an existing node) is proportional to the existing node’s degree (i.e., more likely to attached to currently well-connected nodes)

Structure & measurement of networks:
Nodes/points & edges/lines
A node might be a state and an edge might be a shared border
Directed edges vs undirected edges
K-neighbor: a node that is k edges distant from another node by the most efficient path

Degree: #edges connected to a node; avg. degree across all nodes, calculated as 2*#edges/#nodes
thm: your friends have more friends than you do
degree has implications for density of connections; social capital; speed of diffusion
Path length: min(#edges) to get from A→B; avg path length between all pairs of nodes
path length has implications for choosing efficient routes, measuring social distance, calculating likelihood that information will spread
Connectedness vs. disconnectedness
has implications for whether Markov convergence thm applies; Internet/power failure
Clustering coefficient: percentage of triples of nodes that have edges between all three nodes
has implications for redundancy/robustness of network; social capital; innovation adoption

Function of networks: is emergent
Explaining 6 degrees of connection through random-clique model
Granovetter’s “Strength of weak ties” paper
Internet is extremely robust against random failure, but not targeted failure (of highly-connected nodes) because it’s a preferentially-attached network
Helps identify who to vaccinate (more targeted than SIS model)


## Randomness

Randomness is a quality of a variable. We want to know two things: What is the source of the randomness, i.e. the error term? What is the distribution of the randomness?

Skill vs luck model: http://success-equation.com/
Outcome = a*luck + (1-a)*skill, 0<a<1
If luck figures heavily, we expect to see regression to the mean
The “paradox of skill”: when the very best compete against each other, randomness matters a lot

Random walk is a process where each time step is random. A random walk has these properties:
For n an even number, n flips has an expected value of 0
For any k,  a random walk will cross |k| an infinite number of times; i.e., no trend will emerge
For any k, a random walk will exhibit a streak/cluster of k outcomes in a row an infinite number of times
Binary random walk: keep a running total when flipping a coin where H=1, T=-1
Normal random walk → Efficient Markets Hypothesis: stock prices are random walks because markets are efficient; people anticipate trends and act in ways that cancel them out. OR, p(tomorrow)=f(p(today), news_tommorow) and news is unpredictable.
http://books.wwnorton.com/books/978-0-393-24611-7/ 
But, there is too much fluctuation in stock prices, and there are consistent winners, e.g. Warren Buffett. 
Finite memory random walk: VT=XT + XT-1 + … XT-n 

## Game theory

### Colonel Blotto

CB is about strategic mismatch and allocation of resources, e.g. as of opposing troops forming battle fronts. One of two models, the other being Prisoner’s Dilemma, that brought game theory into policy settings.

Basic CB model: 2 players with T troops trying to form N fronts, where T >> N. Action = allocation of troops; payoffs =  # fronts won, determined by simple majority (although different fronts can have different payoffs associated with them). Reflected by a matrix of players*fronts. CB is a zero-sum game → Very competitive; “you have to work very very hard to win”. The behavior of this system is equilibrium with a random element. That is, there is an area within the space of possible choices where each player has an expected value of 0, and the winner is determined by luck. → Best strategy: randomize your troop allocation; be confusing.
Any strategy can be defeated
Don’t need all your troops to win
If Blotto is played sequentially, the second player has enormous advantage

Model where one side has an advantage in the form of more resources: As the number of fronts increases, so does the amount of additional resources needed in order to maintain an advantage. Or, the advantage of having k more troops decreases as N increases. If you’re the weaker player, what you want to do is increase the number of fronts/dimensions of competition.

Model where many players compete: Can have nontransitive victories → Lots of cycles, not equilibrium

Applications of this model: US Electoral College, terrorism, trials, hiring


## Replicators

Used in psychology, to model learning; in economics, to model populations of people learning; and in ecology, to model evolution. In a nutshell, there is a distribution containing types, and the distribution is shifting in response to the payoffs that each type experiences. The dynamics of the model offer commentary on the strategies of (1) copying the most common strategy and (2) copying the most successful strategy. Elements of model:
Set of types, {1, 2, 3, … N}
Payoff for/performance of each type, π(i)
Proportion of each type in population, Pr(i)
The proportion of any type in the next period its its population ‘weight’ divided by the sum of all types’ population weights:
Prt+1(i) =Prt(i) (i)j=1NPrt(j) (j)
Weights can be represented graphically by a fitness wheel where (1) the number of slices a type gets reflect its proportion, and (2) the width of the slices reflect its fitness.

Can use replicator models to investigate games if proportions are specified (since payoffs are specified as part of games). This can lead to a different equilibrium that arises from rational actors.
The tricky part here is calculating weights, since payoffs can vary with actions. For a 2x2 game with Pr(½,½) and where player A has payoffs a or b depending on player B’s actions, weightA=½ (½ a + ½ b). 

Fisher’s fundamental theorem: Higher variance increases rate of evolutionary adaptation. Can examine this by taking the average of each generation of low-variation and high-variation populations. Seems to run counter to Six Sigma! But SS is for a fixed problemscape, while Fisher’s is for complex systems.


# Sources

## References

## Read

- [Qualitative analysis](http://www.sosmath.com/diffeq/system/qualitative/qualitative.html)
- [<i>Dynamic models in biology</i>&nbsp;](https://people.cam.cornell.edu/~dmb/DMBsupplements.html)

## Unread

- [11 important model evaluation techniques](http://www.datasciencecentral.com/profiles/blogs/7-important-model-evaluation-error-metrics-everyone-should-know)
- [Prediction vs extrapolation vs interpolation](http://www.datasciencecentral.com/forum/topics/what-are-the-differences-between-prediction-extrapolation-and)
- [The model complexity myth: (or, yes you can fit models with more parameters than data points)](http://jakevdp.github.io/blog/2015/07/06/model-complexity-myth/)
- [Overfitting](http://nlpers.blogspot.co.uk/2015/09/overfitting.html)
- [A Data Scientist’s Guide to Disarmament](https://www.r-bloggers.com/weapons-of-math-destruction-a-data-scientists-guide-to-disarmament/)
- [The Chaos Hypertextbook](http://hypertextbook.com/chaos/)
- [The simple and useful side of dynamical analysis I](http://www.ideaeconomics.org/blog/2015/2/20/inside-vol-2-no-4)
- [Dimensions](http://www.dimensions-math.org/Dim_E.htm)
- [Chaos](http://www.chaos-math.org/en)
- _Weapons of Math Destruction_



