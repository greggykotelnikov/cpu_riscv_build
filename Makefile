# Default simulator
SIM ?= verilator
TOPLEVEL_LANG ?= verilog

# Top-level module name inside the Verilog file
TOPLEVEL = alu

# Ensure this path points exactly to your Verilog file
VERILOG_SOURCES += $(PWD)/and_gate.v
VERILOG_SOURCES += $(PWD)/or_gate.v
VERILOG_SOURCES += $(PWD)/xor_gate.v
VERILOG_SOURCES += $(PWD)/not_gate.v
VERILOG_SOURCES += $(PWD)/alu.v

# Name of the Python test file (without .py extension)
MODULE = test

# Verilator specific flags to enable VCD waveform dumping
EXTRA_ARGS += --trace --trace-structs

# Include cocotb's default make rules
include $(shell cocotb-config --makefiles)/Makefile.sim
