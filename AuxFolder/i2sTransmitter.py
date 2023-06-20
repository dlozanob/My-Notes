from migen import *
from migen.genlib.cdc import MultiReg
# Interconnections between registers and processor through wishbone
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

## Main module

class I2STransmitter(Module, AutoCSR):
    # Module constructor
    # data -> Pin connections
    def __init__(self, data):
        # CSRStatus(<n>) -> Read-only by the CPU ports (creates a buffer)
        # CSRStorage() -> Write-only by the CPU ports
        
        self.MCLK = ClockSignal() # System's clock - 100 MHz
        self.SCLK = data.SCLK
        self.LRCLK = data.LRCLK
        self.SD = data.SD

        self.enable = CSRStorage()
        self.audioSel = CSRStorage()

        # Instantiating
        self.specials += Instance("audioTest", 
            i_MCLK = self.MCLK,
            i_enable = self.enable.storage,
            i_audioSel = self.audioSel.storage,
            o_SCLK = self.SCLK,
            o_LRCLK = self.LRCLK,
            o_SD = self.SD,
        )
    
        # Interruption signals
        #self.submodules.ev = EventManager() # Activate event
        #self.ev.ok = EventSourceProcess() # Check if triggered
        #self.ev.finalize() # Finalizing event
        #self.ev.ok.trigger.eq(self.<signal>) # Setting the triggering signal




