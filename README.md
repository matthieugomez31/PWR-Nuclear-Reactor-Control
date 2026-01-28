# PWR Nuclear Reactor Control System Simulation ☢️

### 🚀 Project Overview
Design and simulation of the control architecture for a Pressurized Water Reactor (PWR) primary circuit.
The objective was to regulate the core temperature and pressure under variable load conditions while strictly adhering to safety margins (critical heat flux, overpressure protection).

**Key Focus:** System Engineering, PID Control, Safety-Critical Logic, Thermodynamics.

### 🛠 Tech Stack & Methods
* **Simulation:** Modeling of thermal inertia and actuator dynamics (Valves/Pumps).
* **Control Theory:** PID Regulation (Proportional-Integral-Derivative), Feedback Loops.
* **Physics:** Fluid Mechanics, Heat Transfer equations.

### 📊 Key Technical Challenges

#### 1. Managing Thermal Inertia
**The Problem:** The reactor core has significant thermal inertia. A simple reactive control leads to oscillations (instability).
**The Solution:** Implemented a predictive control logic using the "Average Temperature" ($T_{avg}$) trend to adjust the control rods and turbine bypass valves *before* the temperature limits were breached.

#### 2. The "Scram" Logic (Safety First)
Designed the fail-safe logic algorithm:
* *Condition:* If Pressure < $P_{min}$ OR Temperature > $T_{max}$.
* *Action:* Trigger Emergency Shutdown (SCRAM) + Activate Safety Injection System (RIS).
* Modeled the transient phase to ensure the cooling of residual heat.

#### 3. Valve Flow Linearization
Modeled the non-linear flow characteristics of the bypass valves and implemented a correction factor to linearize the system response for the PID controller.

### 💻 Logic Snippet (Control Loop Concept)

*Simplified logic of the regulation algorithm:*

```python
def reactor_control_loop(T_hot, T_cold, target_power):
    T_avg = (T_hot + T_cold) / 2
    error = T_ref - T_avg
    
    # PID Calculation for Control Rods speed
    rod_speed = (Kp * error) + (Ki * error_sum) + (Kd * d_error_dt)
    
    # Safety Check (Redundancy)
    if T_hot > MAX_TEMP_LIMIT:
        trigger_scram()
        return "EMERGENCY_STOP"
    
    return rod_speed
