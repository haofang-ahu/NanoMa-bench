# NanoMa‑bench
A nanotechnology majority logic benchmark suite and a majority logic standard cell library, which provide support for the verification and evaluation of FCN physical design.

## File Format Documentation
Two types of benchmark files are provided:
1. **AIG files**: Standard binary `.aig` files, compatible with the ABC synthesis tool.
2. **MIG files**: Majority‑Inverter Graph netlists for nanoscale FCN physical‑design evaluation.
Each file stores gate‑level netlist, primary inputs/outputs and interconnection information for logic synthesis and placement‑and‑routing experiments.

## Quick Usage Example
Clone the repository:
```bash
git clone https://github.com/haofang-ahu/NanoMa-bench.git
cd NanoMa-bench
