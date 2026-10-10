# NanoMa‑bench
A nanotechnology majority logic benchmark suite and a majority logic standard cell library, which provide support for the verification and evaluation of FCN physical design.

## Repository Information
- Repository URL: https://github.com/haofang‑ahu/NanoMa‑bench
- **Archival Commit**: `fbc4bef`
- License: MIT License (see `LICENSE` file in root directory)

## File Format Documentation

The NanoMa‑bench suite provides pre‑processed benchmark circuits under **MIG (Majority‑Inverter Graph)** and **XMG (XOR‑Majority Graph)** representations.
All circuits have gone through fan‑out preprocessing to satisfy the FCN maximum fan‑out constraint of 3.

Two inverter variants are available for each benchmark:
1. **Implicit‑inverter mode**: Inverters are embedded into gate input terminals (hidden inverters), optimized for QCA technology.
2. **Explicit‑inverter mode**: Inverters exist as standalone logic gates, intended for SiDBs and NML evaluation.

Two file formats are distributed in this repository:
1. **NanoMa native circuit format**: The custom intermediate format. Each file consists of two parts: node‑list and edge‑list, storing gate‑level circuit structure, primary inputs/outputs, and interconnection information for FCN placement‑and‑routing experiments (under `benchmarks/circuit_mig/` and `benchmarks/circuit_xmg/`).
2. **Processed Verilog files**: Structural Verilog netlists located in `circuit_processed/`. These are derived from the pre‑processed NanoMa benchmarks and can be used for general‑purpose logic synthesis flows.

## Quick Usage Example
Clone the repository:
```bash
git clone https://github.com/haofang-ahu/NanoMa-bench.git
cd NanoMa-bench
