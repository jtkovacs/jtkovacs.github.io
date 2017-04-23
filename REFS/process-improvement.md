
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

BPR is a radical upending of current business processes and systems, so spends little time analyzing them.

### Outcome analysis

Trying to think about the business from the perspective of users' ultimate goals and needs (recognizing that your product or service may be only a means to an end).

### Technology analysis

Reviewing existing and emerging technologies and asking how they might be applied in your company (either as a process improvement or a product).

### Activity elimination

Systematically (but as a thought exercise) eliminating each step in a process, and asking what the implications are.




# Continuous Process Improvement (CPI)

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





# Sources

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley.