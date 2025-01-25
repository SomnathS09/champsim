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
git clone https://github.com/ChampSim/ChampSim.git
```

### 2. Download Traces
Download the following trace: `403.gcc-16B.champsimtrace.xz`.

You can find the trace under the [SPEC traces](https://dpc3.compas.cs.stonybrook.edu/champsim-traces/speccpu/).

After downloading, create a folder named `dp3_traces` and move the trace file there.

### 3. Build ChampSim
Navigate to the main directory and build ChampSim using the following command:

```bash
./build_champsim.sh bimodal no no no no 1 lru
```

### 4. Run ChampSim
Execute the following command to run ChampSim:

```bash
./run_champsim.sh
```

---

## For More Information
Refer to the original [README file](/README-original.md).
