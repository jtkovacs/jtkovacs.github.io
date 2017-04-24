
# Tools by degree of change sought

Per Dennis et al. (2012), 

![](../ILLOS/BPA-BPI-BPR.png)

## Business process automation (BPA)

BPA is focused on making current processes more efficient through automation; it requires thorough analysis of the current system.

### Problem analysis

This entails asking current system users about problems they face or features they desire. Problems identified with this technique are often related to UI and their resolution produces little if any business value.

### Root cause analysis

This entails asking current system users to explore the root causes of problems they've identified (since these problems may only be symptoms). Root causes may be uncovered by asking "Why?" five times; causal relationships may be represented as a hierarchy, web, or fishbone/Ishikawa diagram.

## Business process improvement (BPI)

BPI goes beyond increased efficiency to the realm of increased effectiveness, for instance taking advantage of new opportunities and technologies.
    
### Duration analysis

First, major processes are timed; second, all individual steps in those processes are timed. If the sum of step durations is smaller than the overall duration, this indicates a need for improvement --- which may be achieved through **integration** (fewer people involved in doing the work across its lifecycle) or **parallelization** (steps being done concurrently).

### Activity-based costing

Steps in a process are costed, and improvement efforts are focused on the costliest step.

### Informal bench-marking 

Examine competitors to identify performance targets and process improvements.
    
## Business process reengineering (BPR)

BPR is a radical upending of current business processes and systems, so spends little time analyzing them. Per Rigby (2015; also includes references for further reading), a BPR effort focuses on

- Reorienting organizational culture towards user needs
- Reorganizing traditional functional departments into cross-functional teams
- Redesigning and improving core processes, perhaps using IT to:
    - Reduce costs, waste, and cycle times
    - Increase quality

### Outcome analysis

Trying to think about the business from the perspective of users' ultimate goals and needs (recognizing that your product or service may be only a means to an end).

### Technology analysis

Reviewing existing and emerging technologies and asking how they might be applied in your company (either as a process improvement or a product).

### Activity elimination

Systematically (but as a thought exercise) eliminating each step in a process, and asking what the implications are.




# Continuous Process Improvement (CPI)

_These notes are based on Jeevon Powell's class, [Process Improvement Tools.](https://ucs.admin.uw.edu/pod/Course/Details/Q1170)_

## Depict system

See [notes on systems modeling.](modeling.html)

## Identify problems

### Eleven wastes checklist

### Pareto analysis

## Analyze problems 

### Cause-and-effect diagram

### CEDAC

## Address problem

### Opportunities rating matrix 

### 5S organization methodology

### Brainstorming




# Operations Management

_These notes are based on Christian Terwiesch's Coursera class, [Intro. to Operations Management.](https://www.coursera.org/learn/wharton-operations)_

Strategy and assessment often reference four **operational dimensions:** 

- Cost
- Time
- Variety/responsiveness to consumer tastes
- Quality (performance, conformance)

Between any two dimensions, there may be a **tradeoff;** obtain this curve by locating the performance of existing companies for any two dimensions. Then the question is whether your company is operating on the frontier or within it.

## Business process analysis

### Flow diagram

Business processes underlie performance. One way to measure them: graph flow units vs. time, showing cumulative inflow and cumulative outflow. Then:

- (Instantaneous) inventory is the vertical distance between c.inflow and c.outflow
- Flow time is the horizontal distance between c.inflow and c.outflow—the time a flow unit spends in the system

Create a process flow diagram aka value stream map showing how flow units are transformed from inputs to outputs by process activities. Represent wait times, lines, or inventories with triangles, and activities with boxes (labeled with activity time in units, and m, the number of workers or resources). Then:

- Processing time is the sum of all the individual activity times
- Capacity is driven by processing time: m/processing time
- The bottleneck is the activity with lowest capacity, and this lowest capacity is the overall process capacity
- Flow rate aka throughput is min{demand_rate, process_capacity}, so flow rate is driven by these factors
- Utilization is flow_rate/capacity (dimensionless)

Realistically, processing times will vary from flow unit to flow unit. Flow units may even follow different pathways through all possible process activities. So, how to find the bottleneck and determine the flow rate? Depict multiple flow units on same process diagram, symbolized as types of flow units, then:

- Approach #1, “adding up demand streams”: (1) Compute capacity of each process activity: m/activity_time (2) Compute demand experienced by each activity (3) Compute implied utilization as ratio of demand to capacity (can sum to more than 100%); now, the activity with highest implied utilization is the bottleneck
- Approach #2, “minutes of work”: (1) Based on m, how many minutes of work per hour can each activity supply? (2)  Calculate how many minutes of work is required by each demand stream (3) Compute ratio of minutes required to minutes available; highest is the bottleneck

### Measuring labor productivity

Why focus on this when labor seems to contribute less to modern firms’ costs? —because many firms keep labor costs off their balance sheet by ‘outsourcing’ them to their suppliers. If you account for labor in the cost of goods supplied, the role of labor becomes evident.

- Labor content: sum of all the individual activity times
- Cycle time: 1/flow_rate
- All activities except the bottleneck have idle time=cycle_time-process_time, and the sum of these is direct idle time
- Average labor utilization is labor_content / (labor_content+direct_idle_time)
- Cost of direct labor: total wages/time / flow_rate/time

### Inventory metrics

#### Little’s law

Inventory=Flow_rate*Flow_time. Given any two variables, can solve for a third (especially flow time); also, can decide how to manipulate outcomes by adjusting a variable. Note that flow time here is essentially average flow time, a line fitted to the actual data recorded from observations of inflow and outflow. “Not an empirical law; to prove it, we need to turn to stochastic optimization.”

#### Inventory turns

Cost_Of_Goods_Sold/Inventory. Gives the amount of time that a flow unit spends inside the process; comes from Little’s law (where COGS=Flow_rate). High inventory turns can dramatically reduce inventory costs (capital, storage, obsolescence). Per unit inventory costs=Annual_inventory_cost/Inventory_turns.

#### Make-to-stock vs make-to-order

Motivating question here is why should there be inventory? What are the drivers of inventory? (Note that, per Little’s law, these same factors are implicit drivers of flow time.) Contrast McDonald’s and Subway—not all companies use inventory to increase flow rate; there are make-to-stock vs. make-to-order strategies.

- The reason is variability of activity times; workers do not “work like robots”, so “buffer or suffer”. 
- Reasons for inventory: buffer seasonal demand, internal demand (between processes or activities), customer demand, inherent time lag in production (e.g., aging cheese).

## Analyzing & improving productivity

Frederick Winslow Taylor (1911), [Principles of Scientific Management.](https://en.wikipedia.org/wiki/The_Principles_of_Scientific_Management). In general, (multifactor) productivity  is a ratio of output_produced / input(s)_used. 

- Basic productivity ratio is output/input; at firm or industry level, “output” is revenue, and “input” is cost categories
- Disaggregate ratio to pinpoint source of productivity difference: 
    - Productivity = Operational_yield * Transformation_efficiency * Per-unit_capacity_cost
    - Error
    - Revenue/Cost = Revenue/Output * Output/Capacity * Capacity/Cost

### Sources of wastes

- Waste (or inefficiency) may be represented as the distance between a firm and an industry-wide PPF
- Overproduction: Produce sooner or in greater quantities than required by customers or inventories
- Transportation: Unnecessary, unergonomic movement (Taiichi Ohno: “Moving is not necessarily working”)
- Rework: Having to doing it right the second time; called “bounce backs” in hospitals
- Over-processing: Doing more work than is required to meet the customer’s demands; driven by operator’s high standards, or ignorance about customers’ actual requirements
- Inventory: Poorly managed, can be one of the biggest forms of waste. Inventory may take the form of raw materials, works in progress (WIP), or finished products.
- Waiting: Underutilizing resources because of poor process design
- Intellect: Esp. the intellect of workers

### Financial value of productivity

- “Productivity [i.e., capacity improvements] are not the goal in and of themselves; the goal is to save money”
- Profit: Process_capacity*Per_capita_revenue - (Fixed_costs + Variable_costs)
- “How does the profit change as we change the operational variables?”
- “Every second counts—however, not every second counts equally.” The largest impact comes from improvements to the bottleneck when demand is not a binding constraint; also, in organizations with large fixed costs and lower marginal costs (can see this by checking the relative slopes of the cost and revenue lines past the break even point).

### Key Performance Indicators (KPIs) and KPI trees

KPI trees are about “visualizing the relationship between operational variables and the financial bottom line, and are also the starting point for sensitivity analysis wherein we identify those operational variables that have the largest impact.” Map out dependencies between variables, then take the partial derivative of the terminal KPI w/r/t an operational variable or evaluate using a spreadsheet.

<img src="../ILLOS/KPI-tree.png" width="450px">

### Overall equipment effectiveness (OEE) and overall people effectiveness (OPE)

- Available_time=Total_planned_uptime - Downtime
- Downtime = Break_downs + Product_change_overs
- Net_operating_time = Available_time - Speed_losses
- Speed_losses = Idling + Minor_stoppages + Reduced_operating_speed
- OEE = Net_operating_time - Quality_losses
- Quality_losses = Defects + Startup_time
- Availability_rate * Performance_rate * Quality_rate = Value_add_time / Available_time = OEE

### Reducing idle time

- Takt time is the pace required to keep up with demand: “every person has to dance to the meet of demand”
    - Demand leveling: Average out demand over a period of time
- Line balancing: Equal processing time at each station (ideal). Calculate takt time; assign tasks such that all processing times fall below the takt time; make sure that all tasks are assigned; and minimize the number of workers needed.

### Smoothing performance across workers

- Quartile analysis: Observing workers, noting differences in processing time, grouping into quartiles based on processing time, and identifying best practices that appear to shorten processing time
    - e.g. 260% different observed in ER between 10% and 90% quartiles
    - Biggest differences tend to be observed in knowledge-intensive tasks

## Quality control

- Ford production system: Influenced by Taylor; aspired to optimization of work. Used a moving line, big machinery, economies of scale, standardization of product.
- Toyota production system: c. 1950s, focused on elimination of waste and matching demand after failure to replicate Ford system in a postwar context where inputs and domestic demand was scarce.
    - Worry about: waste, inflexibility, and variability

### Basic defect calculations

- Activity yield is %units produced according to specification = 1 - p(defect)
- Process yield = f(activity_yield); if dependent (Swiss cheese) activities, then product of activity yields, 1-p(defect)n; if independent, then sum, represented as (1-p(defect))<sup>n</sup>. 
- Swiss Cheese model: think of a hole as a defect; as you stack slices of cheese, there is always the chance that all the holes will line up. This redundancy reduces the probability of process failure. Then the process yield is 1-p(defect)<sup>n</sup>.

### Quality & flow

- Adding representations of quality to a flow diagram:
    - Dropped flow units: Calculate end demand; calculate yield of each step (include defects); calculate how much each step must produce to meet demand (e.g., a 50% defect rate means that an activity must produce 2xD); calculate implied utilization (D/capacity); highest implied utilization is the bottleneck.    
    - Re-worked flow units: Calculate the expected processing time. E.g. if there is a 30% defect rate and defects are re-worked, then the real processing time is 0.7*processing_time + 0.3*rework_time. After this modification, the activity with lowest capacity is the bottleneck.
- Costs of defects: Say that we pay $2 per flow unit as an input, but receive $20 per flow unit post-processing, as an output. Then the cost of defects depends not on where they occur, but where they are detected—before or after the bottleneck. Before is cheaper. Pre-bottleneck, defect costs are driven by input costs; post-bottleneck, by revenue (opportunity cost).
- Variability & buffering dilemma: 
    - For a 2-step process where each step has p(defect)=0.5, there are four possibilities: both defect-free; first step defective, leaving step 2 “starved”; second step defective, leaving step one “blocked”; and both defective. This variability dramatically lowers the expected flow rate; by adding a buffer, the flow rate may be increased. 
    - However, buffers remove the incentive for process improvement; buffering hides problems.
    - Toyota developed the Kanban “demand-pull” card system to manage this dilemma. Kanban cards authorize work, and are themselves authorized by customer demand. This puts a cap on inventory.

### Six Sigma

Improving a process by reducing internal variability.

- LSL, USL: lower and upper specification limits
- Capability score (AKA CP score), where higher is better: (USL-LSL)/(6*process_stdev). Clearly, the CP score can be raised by widening the range between upper and lower specifications, or by decreasing the standard deviation in the process.
- For interpretation, relates to defect probabilities.
- Quality targets are often expressed as ppm, parts per million.
- A “six sigma” quality target corresponds to a defect probability of 0.002 and a capability score of 2.

### Control charts

Help distinguish between normal and abnormal variation; part of statistical process control

- Common cause variation may be high or low, but has one basic root
- Assignable cause variation is when the variation stems from multiple sources: “something in the underlying process that changed”, resulting in more variability
- How to identify assignable causes? 
- Establish LCL, UCL---upper and lower control limits, different from LSL, USL. 
- LCL= mean - 3*stdev; UCL = mean + 3*stdev 
- Plot means of samples against LCL, UCL; if a sample’s mean crosses control limits, we suspect assignable cause.

### Jidoka

Detect → Alert → Stop, as quickly as possible, to prevent defects from reaching the bottleneck. In manufacturing assembly lines, jidoka is often implemented with andon cords (for workers to pull, freezing the whole line) and a central andon board (to indicate which station initiated the stop).

- ITAT is “information turnaround time”, something that is (detrimentally) increased by inventory. Low ITAT means quick feedback and the potential for quick learning.

### Problem solving

Looking for root cause(s):

- Kaizen: Process improvement is best carried out by frontline employees
- Ishikawa diagram, also called fishbone diagram, for brainstorming; complemented by 5 whys
- Pareto chart “maps out the assignable causes of a problem in the categories from the Ishikawa diagram, ordering root causes in decreasing order of frequency of occurrance”; 
    - Pareto principle: 80% of the defects are explained by 20% of the root causes

![](../ILLOS/reality-models.png)

<br/>

![](../ILLOS/problem-solving.png)
    



# Sources

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley.

Rigby, D. K. (2015). _Management tools 2015: An executive’s guide._ Boston, MA: Bain & Company.