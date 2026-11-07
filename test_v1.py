import logging
import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test(dut):
    logger = logging.getLogger("my_testbench")
    dut.a.value = 1
    dut.b.value = 0
    await Timer(1, units="ns")
    cocotb.log.info("a = %d", dut.a.value)
    cocotb.log.info("b = %d", dut.b.value)
    cocotb.log.info("y_and = %d", dut.y_and.value)
    cocotb.log.info("y_or = %d", dut.y_or.value)
    cocotb.log.info("y_xor = %d", dut.y_xor.value)
    cocotb.log.info("y_not = %d", dut.y_not.value)

    
