<h1 align="center">ChampSim</h1>
<p align="center">ChampSim is a trace-based simulator for microarchitecture studies.</p>

## Steps for Installation

### 0. Prerequisites
Ensure your Linux system is updated and has essential build tools installed. Run the following commands:

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential
```

### 1. Clone the Repository
Clone this repository or download and extract the source code:

```bash
git clone https://github.com/SomnathS09/champsim.git
```

### 2. Download Traces
Download the following trace: [`403.gcc-16B.champsimtrace.xz`](https://dpc3.compas.cs.stonybrook.edu/champsim-traces/speccpu/403.gcc-16B.champsimtrace.xz).

Alternatively, browse other traces on the [SPEC traces page](https://dpc3.compas.cs.stonybrook.edu/champsim-traces/speccpu/).

After downloading, create a folder named `dpc3_traces` and move the downloaded trace archieve there.

### 3. Build ChampSim
Navigate to the main directory and build ChampSim using the following command:

```bash
./build_champsim.sh bimodal no no no no 1 lru
```

### 4. Run ChampSim
Single-core simulation: Run simulation with `run_champsim.sh` script.

```
Usage: ./run_champsim.sh [BINARY] [N_WARM] [N_SIM] [TRACE] [OPTION]

$ ./run_champsim.sh bimodal-no-no-no-no-lru-1core 1 10 403.gcc-16B.champsimtrace.xz

where,
${BINARY}: ChampSim binary compiled by "build_champsim.sh" (bimodal-no-no-lru-1core)
${N_WARM}: number of instructions for warmup (1 million)
${N_SIM}:  number of instructinos for detailed simulation (10 million)
${TRACE}: trace name (403.gcc-16B.champsimtrace.xz)
${OPTION}: extra option for "-low_bandwidth" (src/main.cc)
```
Simulation results will be stored under "results_${N_SIM}M" as a form of "TRACE-BINARY-OPTION.txt".<br>

---

## For More Information
- Refer to this [Youtube video](https://www.youtube.com/watch?v=-ud3bqHaBCk&authuser=0)
- Refer to the original [README file](/README-original.md).
