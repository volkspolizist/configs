/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00007E0A (32266)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x33
 *     OEM ID           "1ADTS"
 *     OEM Table ID     "1ADTS008"
 *     OEM Revision     0x00000008 (8)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "DSDT", 1, "1ADTS", "1ADTS008", 0x00000008)
{
    Scope (_PR)
    {
        Processor (P001, 0x01, 0x00000810, 0x06){}
        Alias (P001, CPU1)
    }

    Scope (_PR)
    {
        Processor (P002, 0x02, 0x00000810, 0x06){}
        Alias (P002, CPU2)
    }

    Scope (_PR)
    {
        Processor (P003, 0x03, 0x00000810, 0x06){}
        Alias (P003, CPU3)
    }

    Scope (_PR)
    {
        Processor (P004, 0x04, 0x00000810, 0x06){}
        Alias (P004, CPU4)
    }

    Name (DP80, 0x80)
    Name (DP90, 0x90)
    Name (APIC, One)
    Name (PMBS, 0x0800)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0480)
    Name (GPLN, 0x40)
    Name (SMBS, Zero)
    Name (SMBL, Zero)
    Name (PM30, 0x0830)
    Name (SUSW, 0xFF)
    Name (TPBA, 0xFED40000)
    Name (TPBL, Zero)
    Name (SMIP, 0xB2)
    Name (TOBS, 0x0860)
    Name (SUCC, One)
    Name (NVLD, 0x02)
    Name (CRIT, 0x04)
    Name (NCRT, 0x06)
    Name (LIDS, One)
    Name (PCIB, 0xE0000000)
    Name (PCIL, 0x10000000)
    Name (IO1L, 0x20)
    Name (RP0F, One)
    Name (RP2F, Zero)
    OperationRegion (BIOS, SystemMemory, 0xBFF9E064, 0xFF)
    Field (BIOS, ByteAcc, NoLock, Preserve)
    {
        SS1,    1, 
        SS2,    1, 
        SS3,    1, 
        SS4,    1, 
        Offset (0x01), 
        IOST,   16, 
        TOPM,   32, 
        ROMS,   32, 
        MG1B,   32, 
        MG1L,   32, 
        MG2B,   32, 
        MG2L,   32, 
        Offset (0x1C), 
        DMAX,   8, 
        HPTA,   32, 
        CPB0,   32, 
        CPB1,   32, 
        CPB2,   32, 
        CPB3,   32, 
        ASSB,   8, 
        AOTB,   8, 
        AAXB,   32, 
        SMIF,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        MPEN,   8, 
        TPMF,   8, 
        MG3B,   32, 
        MG3L,   32, 
        MH1B,   32, 
        MH1L,   32, 
        OSTP,   8
    }

    Method (RRIO, 4, NotSerialized)
    {
        Debug = "RRIO"
    }

    Method (RDMA, 3, NotSerialized)
    {
        Debug = "rDMA"
    }

    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
        _T_0 = OSYS ()
        If ((_T_0 == One))
        {
            OSVR = 0x03
        }
        ElseIf ((_T_0 == 0x10))
        {
            OSVR = One
        }
        ElseIf ((_T_0 == 0x11))
        {
            OSVR = 0x02
        }
        ElseIf ((_T_0 == 0x12))
        {
            OSVR = 0x04
        }
        ElseIf ((_T_0 == 0x13))
        {
            OSVR = Zero
        }
        ElseIf ((_T_0 == 0x14))
        {
            OSVR = Zero
        }
        ElseIf ((_T_0 == 0x15))
        {
            OSVR = Zero
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, DP80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, DP90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Method (OSYS, 0, NotSerialized)
    {
        Local0 = 0x10
        If (CondRefOf (_OSI, Local1))
        {
            If (_OSI ("Windows 2000"))
            {
                Local0 = 0x12
            }

            If (_OSI ("Windows 2001"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001.1"))
            {
                Local0 = 0x14
            }

            If (_OSI ("Windows 2001.1 SP1"))
            {
                Local0 = 0x14
            }

            If (_OSI ("Windows 2006"))
            {
                Local0 = 0x15
            }
        }
        ElseIf (MCTH (_OS, "Microsoft Windows NT"))
        {
            Local0 = 0x12
        }
        Else
        {
            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                Local0 = 0x11
            }

            If (MCTH (_OS, "Linux"))
            {
                Local0 = One
            }
        }

        Return (Local0)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x16)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }
        })
        Name (AR00, Package (0x16)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR01, Package (0x01)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR01, Package (0x01)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,6,7,10,11,12,14,15}
        })
        Name (PRSB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5}
        })
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                If (((OSFL () == One) || (OSFL () == 0x02)))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Device (MCH)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFED10000,         // Address Base
                        0x0000A000,         // Address Length
                        )
                })
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (ERR0, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    Name (ERR1, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x80                           // ....
                    })
                    Name (VER1, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    })
                    Method (NVIF, 3, NotSerialized)
                    {
                        Local0 = ERR1 /* \_SB_.PCI0.P0P2.VGA_.ERR1 */
                        If ((Arg0 == One))
                        {
                            Concatenate (ERR0, VER1, Local0)
                        }
                        ElseIf ((Arg0 == 0x0B))
                        {
                            If ((Arg1 == Zero))
                            {
                                Local0 = ERR0 /* \_SB_.PCI0.P0P2.VGA_.ERR0 */
                            }
                            ElseIf ((Arg1 == 0x03))
                            {
                                DDDS = Arg2
                                DGSM ()
                                Notify (VGA, 0x80) // Status Change
                                Local0 = ERR0 /* \_SB_.PCI0.P0P2.VGA_.ERR0 */
                            }
                        }
                        Else
                        {
                        }

                        Return (Local0)
                    }

                    Name (DSMD, One)
                    Name (LCDA, One)
                    Name (CRTA, One)
                    Name (HDMA, One)
                    Name (MXM2, Buffer (0x2B)
                    {
                        /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x02, 0x01, 0x23, 0x00,  // MXM_..#.
                        /* 0008 */  0x30, 0x12, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  // 0....>..
                        /* 0010 */  0x82, 0xFF, 0xF9, 0x3E, 0x20, 0x21, 0x8A, 0xFF,  // ...> !..
                        /* 0018 */  0xF9, 0x3E, 0x01, 0x90, 0x01, 0x00, 0x02, 0x69,  // .>.....i
                        /* 0020 */  0x00, 0x00, 0x13, 0x32, 0xC8, 0x00, 0x03, 0x13,  // ...2....
                        /* 0028 */  0x4C, 0x00, 0x34                                 // L.4
                    })
                    Name (MXM1, Buffer (0x19)
                    {
                        /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x01, 0x01, 0x18, 0x00,  // MXM_....
                        /* 0008 */  0x00, 0x60, 0x02, 0x10, 0x02, 0x01, 0x07, 0x03,  // .`......
                        /* 0010 */  0x58, 0x0A, 0x00, 0x13, 0x2C, 0x05, 0x00, 0x70,  // X...,..p
                        /* 0018 */  0x70                                             // p
                    })
                    OperationRegion (APMP, SystemIO, 0xB2, 0x02)
                    Field (APMP, ByteAcc, NoLock, Preserve)
                    {
                        APMC,   8, 
                        APMS,   8
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DSMD = (Arg0 & 0x03)
                    }

                    Name (SWIT, Zero)
                    Name (DDDS, Buffer (0x14){})
                    CreateDWordField (DDDS, Zero, D0ST)
                    CreateDWordField (DDDS, 0x04, D1ST)
                    CreateDWordField (DDDS, 0x08, D2ST)
                    CreateDWordField (DDDS, 0x0C, D3ST)
                    CreateDWordField (DDDS, 0x10, D4ST)
                    CreateWordField (DDDS, Zero, D0ID)
                    CreateBitField (DDDS, 0x11, D0EV)
                    CreateBitField (DDDS, 0x12, D0EN)
                    CreateBitField (DDDS, 0x13, D0CV)
                    CreateBitField (DDDS, 0x14, D0CN)
                    CreateWordField (DDDS, 0x04, D1ID)
                    CreateBitField (DDDS, 0x31, D1EV)
                    CreateBitField (DDDS, 0x32, D1EN)
                    CreateBitField (DDDS, 0x33, D1CV)
                    CreateBitField (DDDS, 0x34, D1CN)
                    CreateWordField (DDDS, 0x08, D2ID)
                    CreateBitField (DDDS, 0x51, D2EV)
                    CreateBitField (DDDS, 0x52, D2EN)
                    CreateBitField (DDDS, 0x53, D2CV)
                    CreateBitField (DDDS, 0x54, D2CN)
                    CreateWordField (DDDS, 0x0C, D3ID)
                    CreateBitField (DDDS, 0x71, D3EV)
                    CreateBitField (DDDS, 0x72, D3EN)
                    CreateBitField (DDDS, 0x73, D3CV)
                    CreateBitField (DDDS, 0x74, D3CN)
                    CreateWordField (DDDS, 0x10, D4ID)
                    CreateBitField (DDDS, 0x91, D4EV)
                    CreateBitField (DDDS, 0x92, D4EN)
                    CreateBitField (DDDS, 0x93, D4CV)
                    CreateBitField (DDDS, 0x94, D4CN)
                    Method (DDEV, 1, NotSerialized)
                    {
                        Local0 = (Arg0 & 0xFFFF)
                        If ((Local0 == D0ID))
                        {
                            Return (D0EN) /* \_SB_.PCI0.P0P2.VGA_.D0EN */
                        }
                        ElseIf ((Local0 == D1ID))
                        {
                            Return (D1EN) /* \_SB_.PCI0.P0P2.VGA_.D1EN */
                        }
                        ElseIf ((Local0 == D2ID))
                        {
                            Return (D2EN) /* \_SB_.PCI0.P0P2.VGA_.D2EN */
                        }
                        ElseIf ((Local0 == D3ID))
                        {
                            Return (D3EN) /* \_SB_.PCI0.P0P2.VGA_.D3EN */
                        }
                        ElseIf ((Local0 == D4ID))
                        {
                            Return (D4EN) /* \_SB_.PCI0.P0P2.VGA_.D4EN */
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (DDCN, 1, NotSerialized)
                    {
                        Local0 = (Arg0 & 0xFFFF)
                        If ((Local0 == D0ID))
                        {
                            Return (D0CN) /* \_SB_.PCI0.P0P2.VGA_.D0CN */
                        }
                        ElseIf ((Local0 == D1ID))
                        {
                            Return (D1CN) /* \_SB_.PCI0.P0P2.VGA_.D1CN */
                        }
                        ElseIf ((Local0 == D2ID))
                        {
                            Return (D2CN) /* \_SB_.PCI0.P0P2.VGA_.D2CN */
                        }
                        ElseIf ((Local0 == D3ID))
                        {
                            Return (D3CN) /* \_SB_.PCI0.P0P2.VGA_.D3CN */
                        }
                        ElseIf ((Local0 == D4ID))
                        {
                            Return (D4CN) /* \_SB_.PCI0.P0P2.VGA_.D4CN */
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (DGSM, 0, NotSerialized)
                    {
                        Local0 = Zero
                        If (DDCN (0x0110))
                        {
                            Local0 |= One
                        }

                        If (DDCN (0x80000100))
                        {
                            Local0 |= 0x02
                        }

                        If (DDCN (0x80000120))
                        {
                            Local0 |= 0x08
                        }

                        Local1 = Zero
                        If (DDEV (0x0110))
                        {
                            Local1 |= One
                        }

                        If (DDEV (0x80000100))
                        {
                            Local1 |= 0x02
                        }

                        If (DDEV (0x80000120))
                        {
                            Local1 |= 0x08
                        }

                        Local3 = 0x0A
                        While (Local3)
                        {
                            Local1 = GNAD (Local1)
                            Local2 = (Local0 & Local1)
                            If ((Local1 == Local2))
                            {
                                SWIT = Local1
                                Break
                            }

                            Local3--
                        }

                        Return (DSMD) /* \_SB_.PCI0.P0P2.VGA_.DSMD */
                    }

                    Method (GNAD, 1, NotSerialized)
                    {
                        If ((Arg0 == One))
                        {
                            Return (0x02)
                        }

                        If ((Arg0 == 0x02))
                        {
                            Return (0x04)
                        }

                        If ((Arg0 == 0x04))
                        {
                            Return (0x08)
                        }

                        If ((Arg0 == 0x08))
                        {
                            Return (0x03)
                        }

                        If ((Arg0 == 0x03))
                        {
                            Return (0x05)
                        }

                        If ((Arg0 == 0x05))
                        {
                            Return (0x09)
                        }

                        If ((Arg0 == 0x09))
                        {
                            Return (0x06)
                        }

                        If ((Arg0 == 0x06))
                        {
                            Return (0x0A)
                        }

                        If ((Arg0 == 0x0A))
                        {
                            Return (0x0C)
                        }

                        If ((Arg0 == 0x0C))
                        {
                            Return (One)
                        }

                        Return (One)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x03)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x00010120
                        })
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Local0 = (SWIT & 0x02)
                            If (Local0)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }

                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (CBCL, 0x46)
                        Name (SBCF, One)
                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Local0 = (SWIT & One)
                            If (Local0)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }

                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (Package (0x09)
                            {
                                0x46, 
                                0x32, 
                                0x14, 
                                0x1E, 
                                0x28, 
                                0x3C, 
                                0x50, 
                                0x5A, 
                                0x64
                            })
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            SBCF = Zero
                            MBCM (Arg0)
                        }

                        Method (MBCM, 1, NotSerialized)
                        {
                            CBCL = Arg0
                            ^^^^SBRG.EC.BCLE = CBAE (CBCL)
                        }

                        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                        {
                            Return (CBCL) /* \_SB_.PCI0.P0P2.VGA_.LCD_.CBCL */
                        }

                        Method (CBAE, 1, NotSerialized)
                        {
                            Divide (Arg0, 0x0A, Local0, Local1)
                            Local0 = (Local1 - 0x02)
                            Return (Local0)
                        }

                        Method (CBEA, 1, NotSerialized)
                        {
                            Local0 = (Arg0 + 0x02)
                            Local1 = (Local0 * 0x0A)
                            Return (Local1)
                        }

                        Method (BNDN, 0, NotSerialized)
                        {
                            SBCF = One
                            Notify (LCD, 0x87) // Device-Specific
                            If (SBCF)
                            {
                                CBCL = CBEA (^^^^SBRG.EC.BCLE)
                                If ((CBCL > 0x14))
                                {
                                    MBCM ((CBCL - 0x0A))
                                }
                            }
                        }

                        Method (BNUP, 0, NotSerialized)
                        {
                            SBCF = One
                            Notify (LCD, 0x86) // Device-Specific
                            If (SBCF)
                            {
                                CBCL = CBEA (^^^^SBRG.EC.BCLE)
                                If ((CBCL < 0x64))
                                {
                                    MBCM ((CBCL + 0x0A))
                                }
                            }
                        }
                    }

                    Device (HDMI)
                    {
                        Name (_ADR, 0x0120)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Local0 = (SWIT & 0x08)
                            If (Local0)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }

                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }
                    }

                    Method (DSSS, 0, NotSerialized)
                    {
                        APMC = 0xB4
                        Local0 = APMS /* \_SB_.PCI0.P0P2.VGA_.APMS */
                        LCDA = (Local0 & One)
                        Local0 >>= One
                        HDMA = (Local0 & One)
                        Local0 >>= One
                        CRTA = (Local0 & One)
                        Return (DSMD) /* \_SB_.PCI0.P0P2.VGA_.DSMD */
                    }

                    Method (MXMI, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x13))
                        {
                            Return (0x13)
                        }
                        Else
                        {
                            Return (0x20)
                        }
                    }

                    Method (MXMS, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x13))
                        {
                            Return (MXM1) /* \_SB_.PCI0.P0P2.VGA_.MXM1 */
                        }
                        Else
                        {
                            Return (MXM2) /* \_SB_.PCI0.P0P2.VGA_.MXM2 */
                        }
                    }

                    Scope (^^^PCI0)
                    {
                        Device (WMI1)
                        {
                            Name (_HID, "pnp0c14")  // _HID: Hardware ID
                            Name (_UID, "MXM2")  // _UID: Unique ID
                            Name (_WDG, Buffer (0x3C)
                            {
                                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  // <\.....N
                                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  // .w...*,.
                                /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x57, 0x93, 0x8A, 0xF2,  // MX..W...
                                /* 0018 */  0x4B, 0xCF, 0x1A, 0x4A, 0x88, 0x93, 0xBB, 0x1F,  // K..J....
                                /* 0020 */  0x58, 0xEE, 0xA1, 0xAF, 0xD1, 0x00, 0x01, 0x08,  // X.......
                                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                                /* 0038 */  0x58, 0x4D, 0x01, 0x00                           // XM..
                            })
                            Method (WMMX, 3, NotSerialized)
                            {
                                If ((SizeOf (Arg2) >= 0x04))
                                {
                                    CreateDWordField (Arg2, Zero, FUNC)
                                    CreateDWordField (Arg2, 0x04, ARGS)
                                    If ((FUNC == 0x494D584D))
                                    {
                                        Return (^^P0P2.VGA.MXMI (ARGS))
                                    }
                                    ElseIf ((FUNC == 0x534D584D))
                                    {
                                        Return (^^P0P2.VGA.MXMS (ARGS))
                                    }
                                    ElseIf ((FUNC == 0x584D584D))
                                    {
                                        If ((SizeOf (Arg1) >= 0x08))
                                        {
                                            CreateDWordField (Arg1, 0x08, SARG)
                                            If ((ARGS == 0x00010100))
                                            {
                                                Return (^^P0P2.VGA.CRT.MXMX (SARG))
                                            }
                                            ElseIf ((ARGS == 0x00010110))
                                            {
                                                Return (^^P0P2.VGA.LCD.MXMX (SARG))
                                            }
                                            ElseIf ((ARGS == 0x00010120))
                                            {
                                                Return (^^P0P2.VGA.HDMI.MXMX (SARG))
                                            }
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Name (WQXM, Buffer (0x029C)
                            {
                                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                                /* 0008 */  0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                                /* 0018 */  0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,  // ......B.
                                /* 0028 */  0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,  // .C.00(. 
                                /* 0030 */  0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,  // ...&&@..
                                /* 0038 */  0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,  // ...).$..
                                /* 0040 */  0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,  // ..(..%.B
                                /* 0048 */  0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,  // .....[.a
                                /* 0050 */  0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,  // ........
                                /* 0058 */  0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,  // J.....!.
                                /* 0060 */  0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,  // ....-@;.
                                /* 0068 */  0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,  // $...#...
                                /* 0070 */  0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,  // .qh.0,.L
                                /* 0078 */  0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,  // .8...E`.
                                /* 0080 */  0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,  // N... L.x
                                /* 0088 */  0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,  // Ta4.E.Bc
                                /* 0090 */  0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,  // d@......
                                /* 0098 */  0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,  // ........
                                /* 00A0 */  0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,  // .p(@..k.
                                /* 00A8 */  0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,  // r.![..hP
                                /* 00B0 */  0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,  // .E...,*.
                                /* 00B8 */  0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,  // .P......
                                /* 00C0 */  0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,  // .....T.!
                                /* 00C8 */  0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,  // ......A.
                                /* 00D0 */  0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,  // .....i4.
                                /* 00D8 */  0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,  // .&8v...;
                                /* 00E0 */  0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,  // . }n.9..
                                /* 00E8 */  0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,  // .s.dx.+.
                                /* 00F0 */  0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,  // ..O.x...
                                /* 00F8 */  0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,  // ..3Ap.!z
                                /* 0100 */  0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,  // ..N....A
                                /* 0108 */  0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,  // ..qcgu2.
                                /* 0110 */  0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,  // ].......
                                /* 0118 */  0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,  // .i.I....
                                /* 0120 */  0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,  // .yll....
                                /* 0128 */  0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,  // ...A.V..
                                /* 0130 */  0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,  // ........
                                /* 0138 */  0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,  // x...x4..
                                /* 0140 */  0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,  // f...`P.9
                                /* 0148 */  0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,  // ..J....%
                                /* 0150 */  0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,  // .C.1..zF
                                /* 0158 */  0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,  // E#k">.x.
                                /* 0160 */  0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,  // ..B...s.
                                /* 0168 */  0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,  // ;.aq....
                                /* 0170 */  0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,  // .......B
                                /* 0178 */  0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,  // ....<`..
                                /* 0180 */  0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,  // (.>$... 
                                /* 0188 */  0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,  // .[?...'.
                                /* 0190 */  0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,  // .X.0z..+
                                /* 0198 */  0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,  // .!...S..
                                /* 01A0 */  0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,  // @.c.)rlh
                                /* 01A8 */  0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,  // x~p...\.
                                /* 01B0 */  0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,  // .M.S8..9
                                /* 01B8 */  0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,  // ...I....
                                /* 01C0 */  0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,  // ....[...
                                /* 01C8 */  0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,  // G.. .h..
                                /* 01D0 */  0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,  // |:....t.
                                /* 01D8 */  0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,  // ....7j.I
                                /* 01E0 */  0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,  // |,....C.
                                /* 01E8 */  0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,  // ..x:.4.L
                                /* 01F0 */  0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,  // BD..!..'
                                /* 01F8 */  0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,  // F..1l.7.
                                /* 0200 */  0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,  // ......t.
                                /* 0208 */  0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,  // B>4..t.P
                                /* 0210 */  0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,  // ...:...t
                                /* 0218 */  0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,  // ...O....
                                /* 0220 */  0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,  // .......x
                                /* 0228 */  0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,  // .E.OP...
                                /* 0230 */  0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,  // O...,..|
                                /* 0238 */  0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,  // :...|:..
                                /* 0240 */  0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,  // h`.O.wt.
                                /* 0248 */  0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,  // .O.0....
                                /* 0250 */  0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,  // .1^.1.C.
                                /* 0258 */  0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,  // .x.8=+..
                                /* 0260 */  0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,  // .$...9..
                                /* 0268 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,  // ......U.
                                /* 0270 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,  // 25.4...R
                                /* 0278 */  0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,  // c.......
                                /* 0280 */  0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,  // ........
                                /* 0288 */  0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,  // ..X..E .
                                /* 0290 */  0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,  // ...?.#..
                                /* 0298 */  0xC4, 0xFF, 0x7F, 0x7F                           // ....
                            })
                        }
                    }
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01) /* \_SB_.AR01 */
                    }

                    Return (PR01) /* \_SB_.PR01 */
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Device (IELK)
                {
                    Name (_HID, "AWY0001")  // _HID: Hardware ID
                    OperationRegion (RXA0, PCI_Config, 0xA0, 0x20)
                    Field (RXA0, ByteAcc, NoLock, Preserve)
                    {
                            ,   9, 
                        PBLV,   1, 
                        Offset (0x10), 
                            ,   1, 
                        PBMS,   1, 
                            ,   1, 
                        PMCS,   1, 
                        ECNS,   1, 
                        Offset (0x11), 
                        ECT1,   16, 
                        ELEN,   1, 
                        Offset (0x14)
                    }

                    Method (\_GPE._L0A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                    {
                        Notify (\_SB.PCI0.SBRG.IELK, 0x81) // Information Change
                        \_SB.PCI0.SBRG.IELK.PMCS = One
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ELEN)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (SMOD, 1, NotSerialized)
                    {
                    }

                    Method (GPBS, 0, NotSerialized)
                    {
                        Return ((PBLV ^ One))
                    }
                }

                Method (SPTS, 1, NotSerialized)
                {
                    PS1S = One
                    PS1E = One
                    SLPS = One
                }

                Method (SWAK, 1, NotSerialized)
                {
                    SLPS = Zero
                    PS1E = Zero
                    If (((Arg0 == One) && RTCS)){}
                    ElseIf (((Arg0 == 0x03) && BRTC)){}
                    Else
                    {
                        Notify (PWRB, 0x02) // Device Wake
                    }

                    If ((Arg0 == 0x03))
                    {
                        Notify (PWRB, 0x02) // Device Wake
                    }

                    If ((Arg0 == 0x04))
                    {
                        Notify (PWRB, 0x02) // Device Wake
                    }
                }

                OperationRegion (APMP, SystemIO, SMIP, 0x02)
                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    APMC,   8, 
                    APMS,   8
                }

                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                        ,   1, 
                    BRTC,   1
                }

                OperationRegion (PMS0, SystemIO, PMBS, 0x04)
                Field (PMS0, ByteAcc, NoLock, Preserve)
                {
                        ,   10, 
                    RTCS,   1, 
                        ,   4, 
                    WAKS,   1, 
                    Offset (0x03), 
                    PWBT,   1, 
                    Offset (0x04)
                }

                OperationRegion (SMIE, SystemIO, PM30, 0x08)
                Field (SMIE, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PS1E,   1, 
                        ,   31, 
                    PS1S,   1, 
                    Offset (0x08)
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((SUSW != 0xFF))
                            {
                                Return (0x0F)
                            }

                            Return (Zero)
                        }

                        Method (SBEV, 0, NotSerialized)
                        {
                            If (SLPS)
                            {
                                Notify (SLPB, 0x02) // Device Wake
                            }
                            Else
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }

                        Method (\_GPE._L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                        {
                            \_SB.SLPB.SBEV ()
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x1B, 
                                0x04
                            })
                        }
                    }
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = (One << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03") /* Microsoft PS/2-style Mouse */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = (One << 0x0C)
                        If ((IOST & Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (M2R0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (M2R1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = (One << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (M2R0) /* \_SB_.PCI0.SBRG.PS2M.M2R0 */
                        }
                        Else
                        {
                            Return (M2R1) /* \_SB_.PCI0.SBRG.PS2M.M2R1 */
                        }
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04C0,             // Range Minimum
                            0x04C0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D2,             // Range Minimum
                            0x04D2,             // Range Maximum
                            0x00,               // Alignment
                            0x2E,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y00)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y01)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y02)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y03)
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y04)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y00._MIN, GP00)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y00._MAX, GP01)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y00._LEN, GP0L)  // _LEN: Length
                        GP00 = PMBS /* \PMBS */
                        GP01 = PMBS /* \PMBS */
                        GP0L = PMLN /* \PMLN */
                        If (SMBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y01._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y01._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y01._LEN, GP1L)  // _LEN: Length
                            GP10 = SMBS /* \SMBS */
                            GP11 = SMBS /* \SMBS */
                            GP1L = SMBL /* \SMBL */
                        }

                        If (GPBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y02._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y02._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y02._LEN, GP2L)  // _LEN: Length
                            GP20 = GPBS /* \GPBS */
                            GP21 = GPBS /* \GPBS */
                            GP2L = GPLN /* \GPLN */
                        }

                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y03._LEN, TML1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y03._BAS, TMB1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y04._LEN, TML2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y04._BAS, TMB2)  // _BAS: Base Address
                        TMB1 = 0xFED20000
                        TML1 = (TPBA - 0xFED20000)
                        If (TPMF)
                        {
                            TMB2 = (TPBA + TPBL) /* \TPBL */
                        }
                        Else
                        {
                            TMB2 = (TPBA + Zero)
                        }

                        TML2 = (0xFED90000 - TMB2) /* \_SB_.PCI0.SBRG.RMSC._CRS.TMB2 */
                        Return (CRS) /* \_SB_.PCI0.SBRG.RMSC.CRS_ */
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y05)
                    })
                    OperationRegion (^LPCR, SystemMemory, 0xFED1F404, 0x04)
                    Field (LPCR, AnyAcc, NoLock, Preserve)
                    {
                        HPTS,   2, 
                            ,   5, 
                        HPTE,   1, 
                        Offset (0x04)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSFL () == Zero))
                        {
                            If (HPTE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPTE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.HPET._Y05._BAS, HPT)  // _BAS: Base Address
                        Local0 = (HPTS * 0x1000)
                        HPT = (Local0 + 0xFED00000)
                        Return (CRS) /* \_SB_.PCI0.SBRG.HPET.CRS_ */
                    }
                }

                OperationRegion (RX80, PCI_Config, Zero, 0xFF)
                Field (RX80, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x80), 
                    LPCD,   16, 
                    LPCE,   16
                }

                Name (DBPT, Package (0x04)
                {
                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x03)
                    {
                        0x0378, 
                        0x0278, 
                        0x03BC
                    }, 

                    Package (0x02)
                    {
                        0x03F0, 
                        0x0370
                    }
                })
                Name (DDLT, Package (0x04)
                {
                    Package (0x02)
                    {
                        Zero, 
                        0xFFF8
                    }, 

                    Package (0x02)
                    {
                        0x04, 
                        0xFF8F
                    }, 

                    Package (0x02)
                    {
                        0x08, 
                        0xFCFF
                    }, 

                    Package (0x02)
                    {
                        0x0C, 
                        0xEFFF
                    }
                })
                Method (RRIO, 4, NotSerialized)
                {
                    If (((Arg0 <= 0x03) && (Arg0 >= Zero)))
                    {
                        Local0 = Match (DerefOf (DBPT [Arg0]), MEQ, Arg2, MTR, Zero, 
                            Zero)
                        If ((Local0 != Ones))
                        {
                            Local1 = DerefOf (DerefOf (DDLT [Arg0]) [Zero])
                            Local2 = DerefOf (DerefOf (DDLT [Arg0]) [One])
                            Local0 <<= Local1
                            LPCD &= Local2
                            LPCD |= Local0
                            WX82 (Arg0, Arg1)
                        }
                    }

                    If ((Arg0 == 0x08))
                    {
                        If ((Arg2 == 0x0200))
                        {
                            WX82 (0x08, Arg0)
                        }
                        ElseIf ((Arg2 == 0x0208))
                        {
                            WX82 (0x09, Arg0)
                        }
                    }

                    If (((Arg0 <= 0x0D) && (Arg0 >= 0x0A)))
                    {
                        WX82 (Arg0, Arg1)
                    }
                }

                Method (WX82, 2, NotSerialized)
                {
                    Local0 = (One << Arg0)
                    If (Arg1)
                    {
                        LPCE |= Local0
                    }
                    Else
                    {
                        Local0 = ~Local0
                        LPCE &= Local0
                    }
                }

                Method (RDMA, 3, NotSerialized)
                {
                }

                Device (FWH)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y06)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y07)
                    })
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y06._BAS, BS00)  // _BAS: Base Address
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y06._LEN, BL00)  // _LEN: Length
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y07._BAS, BS10)  // _BAS: Base Address
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y07._LEN, BL10)  // _LEN: Length
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = 0xFF800000
                        FindSetRightBit (FHD0, Local1)
                        Local1--
                        If (Local1)
                        {
                            Local1 *= 0x00080000
                        }

                        Local2 = (Local0 + Local1)
                        BS00 = Local2
                        BS10 = (BS00 + 0x00400000)
                        BL00 = (Zero - BS10) /* \_SB_.PCI0.SBRG.FWH_.BS10 */
                        BL10 = BL00 /* \_SB_.PCI0.SBRG.FWH_.BL00 */
                        Return (CRS) /* \_SB_.PCI0.SBRG.FWH_.CRS_ */
                    }
                }

                Device (FWHE)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y08)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.FWHE._Y08._BAS, BS00)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.FWHE._Y08._LEN, BL00)  // _LEN: Length
                        If ((^^FWH.BS00 == Zero))
                        {
                            ^^FWH._CRS ()
                        }

                        BS00 = (^^FWH.BS00 + ^^FWH.BL00) /* \_SB_.PCI0.SBRG.FWH_.BL00 */
                        BL00 = (^^FWH.BS10 - BS00) /* \_SB_.PCI0.SBRG.FWHE._CRS.BS00 */
                        Return (CRS) /* \_SB_.PCI0.SBRG.FWHE.CRS_ */
                    }
                }

                OperationRegion (FHR0, PCI_Config, 0xD8, 0x02)
                Field (FHR0, ByteAcc, NoLock, Preserve)
                {
                    FHD1,   4, 
                    Offset (0x01), 
                    FHD0,   8
                }

                Device (^PCIE)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x11)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y09)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y09._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y09._LEN, LEN1)  // _LEN: Length
                        BAS1 = PCIB /* \PCIB */
                        LEN1 = PCIL /* \PCIL */
                        Return (CRS) /* \_SB_.PCI0.PCIE.CRS_ */
                    }
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0A)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0B)
                    })
                    Name (CRS1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0C)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0D)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0A._LEN, ML01)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0A._BAS, MB01)  // _BAS: Base Address
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0B._LEN, ML02)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y0B._BAS, MB02)  // _BAS: Base Address
                            MB01 = 0xFEC00000
                            ML01 = 0x1000
                            MB02 = 0xFEE00000
                            ML02 = 0x1000
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y0C._LEN, ML03)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y0C._BAS, MB03)  // _BAS: Base Address
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y0D._LEN, ML04)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y0D._BAS, MB04)  // _BAS: Base Address
                            MB03 = 0xFEC00000
                            ML03 = 0x1000
                            MB04 = 0xFEE00000
                            ML04 = 0x1000
                        }

                        Local0 = (0x05 << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (CRS) /* \_SB_.PCI0.SBRG.OMSC.CRS_ */
                        }
                        Else
                        {
                            Return (CRS1) /* \_SB_.PCI0.SBRG.OMSC.CRS1 */
                        }
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0E)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y0F)
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x00000000,         // Address Length
                            _Y10)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y11)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y0E._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y0E._LEN, LEN1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y0F._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y0F._LEN, LEN2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y10._LEN, LEN3)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y11._BAS, BAS4)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y11._LEN, LEN4)  // _LEN: Length
                        If (OSFL ()){}
                        Else
                        {
                            If (MG1B)
                            {
                                If ((MG1B > 0x000C0000))
                                {
                                    BAS1 = 0x000C0000
                                    LEN1 = (MG1B - BAS1) /* \_SB_.RMEM._CRS.BAS1 */
                                }
                            }
                            Else
                            {
                                BAS1 = 0x000C0000
                                LEN1 = 0x00020000
                            }

                            If (Local0 = (MG1B + MG1L) /* \MG1L */)
                            {
                                BAS2 = Local0
                                LEN2 = (0x00100000 - BAS2) /* \_SB_.RMEM._CRS.BAS2 */
                            }
                        }

                        LEN3 = (MG2B - 0x00100000)
                        BAS4 = MH1B /* \MH1B */
                        LEN4 = (Zero - BAS4) /* \_SB_.RMEM._CRS.BAS4 */
                        Return (CRS) /* \_SB_.RMEM.CRS_ */
                    }
                }

                Scope (\_GPE)
                {
                    Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                    {
                        Sleep (0x64)
                        \_SB.PCI0.WAWA.PDC1 = One
                        \_SB.PCI0.WAWA.HPCS = One
                        Notify (\_SB.PCI0.P0P4, Zero) // Bus Check
                    }
                }

                Scope (^^PCI0)
                {
                    Device (WAWA)
                    {
                        Name (_ADR, 0x001C0000)  // _ADR: Address
                        OperationRegion (P1CS, PCI_Config, 0x40, 0x0100)
                        Field (P1CS, AnyAcc, NoLock, WriteAsZeros)
                        {
                            Offset (0x1A), 
                            ABP1,   1, 
                                ,   2, 
                            PDC1,   1, 
                                ,   2, 
                            PDS1,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                            PSP1,   1, 
                            Offset (0x9C), 
                                ,   30, 
                            HPCS,   1, 
                            PMCS,   1
                        }

                        Device (PECA)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }
                    }
                }

                Scope (\_TZ)
                {
                    Method (KELV, 1, NotSerialized)
                    {
                        Local0 = (Arg0 & 0xFF)
                        Local0 *= 0x0A
                        Local0 += 0x0AAC
                        Return (Local0)
                    }

                    ThermalZone (THRM)
                    {
                        Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
                        {
                            If (\_SB.PCI0.SBRG.EC.MYEC)
                            {
                                If (\_SB.PCI0.SBRG.EC.CTSD)
                                {
                                    \_SB.PCI0.SBRG.EC.CTSD = Zero
                                    Return (KELV (0x6E))
                                }
                                Else
                                {
                                    Local0 = \_SB.PCI0.SBRG.EC.CPUT
                                    Local0 += 0x02
                                    Return (KELV (Local0))
                                }
                            }
                            Else
                            {
                                Return (KELV (0x2D))
                            }
                        }

                        Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
                        {
                            Return (KELV (0x64))
                        }
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Name (CTID, Zero)
                    Name (MYEC, One)
                    Name (CTSD, Zero)
                    Name (\PTHR, Zero)
                    Name (\ACPT, One)
                    Name (\BACE, Zero)
                    Name (\OVCK, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            MYEC = Arg1
                        }

                        CTSD = Zero
                    }

                    OperationRegion (IO, SystemIO, 0x62, 0x05)
                    Field (IO, ByteAcc, Lock, Preserve)
                    {
                        DAT1,   8, 
                        Offset (0x04), 
                        CMD1,   8
                    }

                    Field (IO, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x04), 
                        OUTS,   1, 
                        INPS,   1
                    }

                    Method (IRDY, 0, Serialized)
                    {
                        Return (!INPS)
                    }

                    Method (ORDY, 0, Serialized)
                    {
                        Return (OUTS) /* \_SB_.PCI0.SBRG.EC__.OUTS */
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    OperationRegion (EC, EmbeddedControl, Zero, 0x0100)
                    Field (EC, ByteAcc, NoLock, Preserve)
                    {
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   264, 
                        SMAA,   8, 
                        Offset (0x30), 
                        POWS,   1, 
                        LIDS,   1, 
                        KBCS,   1, 
                        Offset (0x31), 
                        MBTS,   1, 
                        MBCS,   1, 
                        MBDS,   1, 
                        MBFS,   1, 
                        MBWS,   1, 
                        MBLS,   1, 
                        MBCL,   1, 
                        MBFL,   1, 
                        Offset (0x34), 
                        HSKS,   3, 
                        Offset (0x35), 
                        Offset (0x38), 
                        MDCL,   8, 
                        MDCH,   8, 
                        MDVL,   8, 
                        MDVH,   8, 
                        MCAL,   8, 
                        MCAH,   8, 
                        MSTL,   8, 
                        MSTH,   8, 
                        MCCL,   8, 
                        MCCH,   8, 
                        MPOL,   8, 
                        MPOH,   8, 
                        MFCL,   8, 
                        MFCH,   8, 
                        MCUL,   8, 
                        MCUH,   8, 
                        MRCL,   8, 
                        MRCH,   8, 
                        MVOL,   8, 
                        MVOH,   8, 
                        MTEL,   8, 
                        MTEH,   8, 
                        RSV1,   8, 
                        RSV2,   8, 
                        SDCL,   8, 
                        SDCH,   8, 
                        SDVL,   8, 
                        SDVH,   8, 
                        SCAL,   8, 
                        SCAH,   8, 
                        SSTL,   8, 
                        SSTH,   8, 
                        SCCL,   8, 
                        SCCH,   8, 
                        SPOL,   8, 
                        SPOH,   8, 
                        SFCL,   8, 
                        SFCH,   8, 
                        SCUL,   8, 
                        SCUH,   8, 
                        SRCL,   8, 
                        SRCH,   8, 
                        SVOL,   8, 
                        SVOH,   8, 
                        STEL,   8, 
                        STEH,   8, 
                        Offset (0x68), 
                        CPUT,   8, 
                        Offset (0x7E), 
                        RES1,   3, 
                        CHET,   1, 
                        Offset (0x80), 
                        SYST,   8, 
                        Offset (0xE4), 
                        TURB,   8, 
                        Offset (0xED), 
                        QID,    8, 
                        Offset (0xF1), 
                        BCLE,   8, 
                        Offset (0xFE), 
                        DCBL,   8, 
                        ACBL,   8
                    }

                    OperationRegion (APMP, SystemIO, 0xB2, 0x02)
                    Field (APMP, ByteAcc, NoLock, Preserve)
                    {
                        APMC,   8, 
                        APMS,   8
                    }

                    Device (ADP1)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (BFLG, One)
                        Name (ACP, One)
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (POWS)
                            {
                                ACPT |= One /* \ACPT */
                                Return (One)
                            }
                            Else
                            {
                                ACPT &= 0xFE /* \ACPT */
                                Return (Zero)
                            }
                        }

                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                    }

                    Name (BIF0, Package (0x0D)
                    {
                        One, 
                        0x1130, 
                        0x1130, 
                        One, 
                        0x39D0, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        "MS-1722", 
                        "1", 
                        "LION", 
                        "MSI Corp."
                    })
                    Name (STAT, Package (0x04)
                    {
                        0x02, 
                        0x0500, 
                        0x0800, 
                        0x03E8
                    })
                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (MYEC)
                            {
                                If ((MFCH == 0x13))
                                {
                                    BACE |= One /* \BACE */
                                }
                                Else
                                {
                                    BACE &= 0xFE /* \BACE */
                                }

                                If (MBTS)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x0F)
                                }
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            If (MYEC)
                            {
                                UPBI ()
                            }
                            Else
                            {
                                IVBI ()
                                DBG8 = 0x99
                                Sleep (0x03E8)
                            }

                            Return (BIF0) /* \_SB_.PCI0.SBRG.EC__.BIF0 */
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            If (MYEC)
                            {
                                UPBS ()
                            }
                            Else
                            {
                                IVBS ()
                            }

                            Return (STAT) /* \_SB_.PCI0.SBRG.EC__.STAT */
                        }

                        Method (IVBI, 0, NotSerialized)
                        {
                            BIF0 [One] = Ones
                            BIF0 [0x02] = Ones
                            BIF0 [0x04] = Ones
                            BIF0 [0x09] = "Wrong"
                            BIF0 [0x0A] = " "
                            BIF0 [0x0B] = "Wrong"
                            BIF0 [0x0C] = "Wrong"
                        }

                        Method (IVBS, 0, NotSerialized)
                        {
                            STAT [Zero] = Zero
                            STAT [One] = Ones
                            STAT [0x02] = Ones
                            STAT [0x03] = 0x2710
                        }

                        Method (UPBI, 0, NotSerialized)
                        {
                            Local0 = Zero
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                            Local0 = MDCH /* \_SB_.PCI0.SBRG.EC__.MDCH */
                            Local1 = MDCL /* \_SB_.PCI0.SBRG.EC__.MDCL */
                            Local0 <<= 0x08
                            Local0 |= Local1
                            BIF0 [One] = Local0
                            Local0 = MFCH /* \_SB_.PCI0.SBRG.EC__.MFCH */
                            Local1 = MFCL /* \_SB_.PCI0.SBRG.EC__.MFCL */
                            Local0 <<= 0x08
                            Local1 |= Local0
                            BIF0 [0x02] = Local1
                            Local0 = MDVH /* \_SB_.PCI0.SBRG.EC__.MDVH */
                            Local2 = MDVL /* \_SB_.PCI0.SBRG.EC__.MDVL */
                            Local0 <<= 0x08
                            Local2 |= Local0
                            BIF0 [0x04] = Local2
                            BIF0 [0x0A] = "\n"
                            BIF0 [0x0B] = "LION\n"
                            Local0 = CTID /* \_SB_.PCI0.SBRG.EC__.CTID */
                            If ((Local0 == Zero))
                            {
                                BIF0 [0x09] = "MS-1722\n"
                                BIF0 [0x0C] = "MSI Corp.\n"
                            }
                            Else
                            {
                                BIF0 [0x09] = "?MODEL\n"
                                BIF0 [0x0C] = "?CUSTOMER\n"
                            }
                        }

                        Method (UPBS, 0, NotSerialized)
                        {
                            Local0 = Zero
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                            Local4 = Zero
                            Local7 = Zero
                            Local0 = MBTS /* \_SB_.PCI0.SBRG.EC__.MBTS */
                            If ((Local0 == One))
                            {
                                Local0 = POWS /* \_SB_.PCI0.SBRG.EC__.POWS */
                                If ((Local0 == One))
                                {
                                    Local1 = MBCS /* \_SB_.PCI0.SBRG.EC__.MBCS */
                                    If ((Local1 == One))
                                    {
                                        Local4 |= 0x02
                                    }
                                }
                                Else
                                {
                                    Local4 |= One
                                    Local0 = MBLS /* \_SB_.PCI0.SBRG.EC__.MBLS */
                                    If ((Local0 == One))
                                    {
                                        Local4 |= 0x04
                                    }
                                }

                                Local0 = POWS /* \_SB_.PCI0.SBRG.EC__.POWS */
                                If ((Local0 == One))
                                {
                                    Local0 = MBCS /* \_SB_.PCI0.SBRG.EC__.MBCS */
                                    If ((Local0 == One))
                                    {
                                        Local0 = MCUH /* \_SB_.PCI0.SBRG.EC__.MCUH */
                                        Local1 = MCUL /* \_SB_.PCI0.SBRG.EC__.MCUL */
                                        Local0 <<= 0x08
                                        Local1 |= Local0
                                        If ((Local1 == 0xFFFF))
                                        {
                                            Local1 = Ones
                                        }

                                        STAT [One] = Local1
                                    }
                                    Else
                                    {
                                        STAT [One] = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = MCUH /* \_SB_.PCI0.SBRG.EC__.MCUH */
                                    Local1 = MCUL /* \_SB_.PCI0.SBRG.EC__.MCUL */
                                    Local0 <<= 0x08
                                    Local1 |= Local0
                                    Local1 ^= 0xFFFF
                                    If ((Local1 == Zero))
                                    {
                                        Local1 = Ones
                                    }

                                    STAT [One] = Local1
                                }

                                Local0 = MRCH /* \_SB_.PCI0.SBRG.EC__.MRCH */
                                Local2 = MRCL /* \_SB_.PCI0.SBRG.EC__.MRCL */
                                Local0 <<= 0x08
                                Local2 |= Local0
                                STAT [0x02] = Local2
                                Local0 = MVOH /* \_SB_.PCI0.SBRG.EC__.MVOH */
                                Local3 = MVOL /* \_SB_.PCI0.SBRG.EC__.MVOL */
                                Local0 <<= 0x08
                                Local3 |= Local0
                                STAT [0x03] = Local3
                                STAT [Zero] = Local4
                                Sleep (0x64)
                            }
                            Else
                            {
                                IVBS ()
                            }
                        }
                    }

                    Device (LID0)
                    {
                        Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                        Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                        {
                            If (MYEC)
                            {
                                Local0 = LIDS /* \_SB_.PCI0.SBRG.EC__.LIDS */
                            }
                            Else
                            {
                                Local0 = One
                            }

                            Return (Local0)
                        }
                    }

                    Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x70
                        QID = 0x70
                        CHET = One
                        OVCK |= One /* \OVCK */
                        Notify (\_PR.P001, 0x81) // C-State Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x81) // C-State Change
                        Sleep (0x64)
                        PTHR |= One /* \PTHR */
                        Notify (\_PR.P001, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x80) // Performance Capability Change
                    }

                    Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x71
                        QID = 0x71
                        CHET = One
                        Local0 = (TURB & 0x02)
                        If ((Local0 != 0x02))
                        {
                            OVCK &= 0xFE /* \OVCK */
                            Notify (\_PR.P001, 0x81) // C-State Change
                            Sleep (0x64)
                            Notify (\_PR.P002, 0x81) // C-State Change
                            Sleep (0x64)
                        }

                        PTHR &= 0xFE /* \PTHR */
                        Notify (\_PR.P001, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x80) // Performance Capability Change
                    }

                    Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x77
                        QID = 0x77
                        ^ADP1.BFLG = Zero
                        Notify (BAT1, 0x81) // Information Change
                        Notify (ADP1, 0x80) // Status Change
                        Sleep (0x64)
                        Local0 = Zero
                        Local0 = MBTS /* \_SB_.PCI0.SBRG.EC__.MBTS */
                        If ((Local0 == One))
                        {
                            ^ADP1.BFLG = One
                            Notify (BAT1, 0x80) // Status Change
                        }
                        Else
                        {
                            ^ADP1.BFLG = Zero
                            Notify (BAT1, 0x81) // Information Change
                        }

                        Notify (ADP1, 0x80) // Status Change
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x80
                        QID = 0x80
                    }

                    Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x81
                        QID = 0x81
                        CHET = One
                        PTHR |= One /* \PTHR */
                        Notify (\_PR.P001, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x80) // Performance Capability Change
                    }

                    Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x82
                        QID = 0x82
                        CHET = One
                        PTHR &= 0xFE /* \PTHR */
                        Notify (\_PR.P001, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x80) // Performance Capability Change
                    }

                    Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x83
                        QID = 0x83
                        Local0 = Zero
                        Local0 = POWS /* \_SB_.PCI0.SBRG.EC__.POWS */
                        If ((Local0 == One))
                        {
                            ^ADP1.ACP = One
                            ACPT |= One /* \ACPT */
                        }
                        Else
                        {
                            ^ADP1.ACP = Zero
                            ACPT &= 0xFE /* \ACPT */
                        }

                        Notify (ADP1, 0x80) // Status Change
                        Notify (\_PR.P001, 0x80) // Performance Capability Change
                        Sleep (0x64)
                        Notify (\_PR.P002, 0x80) // Performance Capability Change
                        If ((MFCH == 0x13))
                        {
                            BACE |= One /* \BACE */
                        }
                        Else
                        {
                            BACE &= 0xFE /* \BACE */
                        }
                    }

                    Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x84
                        QID = 0x84
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x85
                        QID = 0x85
                        CTSD = One
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q86, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x86
                        QID = 0x86
                    }

                    Method (_Q87, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x87
                        QID = 0x87
                        Local0 = Zero
                        Local0 = MBTS /* \_SB_.PCI0.SBRG.EC__.MBTS */
                        If ((Local0 == One))
                        {
                            ^ADP1.BFLG = One
                        }
                        Else
                        {
                            ^ADP1.BFLG = Zero
                        }

                        Notify (BAT1, 0x81) // Information Change
                    }

                    Method (_Q88, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x88
                        QID = 0x88
                    }

                    Method (_Q89, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x89
                        QID = 0x89
                    }

                    Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x8A
                        QID = 0x8A
                        CTSD = One
                        Notify (\_TZ.THRM, 0x80) // Thermal Status Change
                    }

                    Method (_Q8B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x8B
                        QID = 0x8B
                    }

                    Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x8C
                        QID = 0x8C
                    }

                    Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0x90
                        QID = 0x90
                    }

                    Method (_QB4, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB4
                        QID = 0xB4
                        Notify (^^^P0P2.VGA, 0xCB) // Hardware-Specific
                        Sleep (0x02EE)
                    }

                    Method (_QB5, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB5
                        QID = 0xB5
                    }

                    Method (_QB6, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB6
                        QID = 0xB6
                    }

                    Method (_QB7, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB7
                        QID = 0xB7
                        If (_OSI ("Windows 2006"))
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x87) // Device-Specific
                        }
                        ElseIf ((BCLE != Zero))
                        {
                            Local0 = BCLE /* \_SB_.PCI0.SBRG.EC__.BCLE */
                            Local0--
                            BCLE = Local0
                        }
                    }

                    Method (_QB8, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB8
                        QID = 0xB8
                        If (_OSI ("Windows 2006"))
                        {
                            Notify (^^^P0P2.VGA.LCD, 0x86) // Device-Specific
                        }
                        Else
                        {
                            Local0 = BCLE /* \_SB_.PCI0.SBRG.EC__.BCLE */
                            Local0++
                            BCLE = Local0
                        }
                    }

                    Method (_QB9, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DBG8 = 0xB9
                        QID = 0xB9
                    }

                    Method (MSWK, 1, NotSerialized)
                    {
                        ^^^WAWA.PDC1 = One
                        ^^^WAWA.HPCS = One
                        Notify (P0P4, Zero) // Bus Check
                    }
                }

                Device (CIR)
                {
                    Name (_HID, EisaId ("ENE0100"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUFA, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x004C,             // Range Minimum
                                0x004F,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        Return (BUFA) /* \_SB_.PCI0.SBRG.CIR_._CRS.BUFA */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IO (Decode16,
                            0x004C,             // Range Minimum
                            0x004F,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {4}
                    })
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1C, 
                        0x05
                    })
                }

                Scope (EC)
                {
                    Method (_QC0, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        ^SCM0.TDED = 0xC0
                        DBG8 = 0xC0
                        Notify (SCM0, 0xC0) // Hardware-Specific
                    }

                    Device (SCM0)
                    {
                        Name (_HID, "pnp0c14")  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (TDVR, 0x10)
                        Name (_WDG, Buffer (0xC8)
                        {
                            /* 0000 */  0x6A, 0x8D, 0x41, 0x24, 0x79, 0x0A, 0x4C, 0x52,  // j.A$y.LR
                            /* 0008 */  0x9A, 0xB1, 0x18, 0xB7, 0x8C, 0xA6, 0x8C, 0xE7,  // ........
                            /* 0010 */  0x41, 0x41, 0x22, 0x01, 0x6B, 0xD5, 0xFB, 0x4A,  // AA".k..J
                            /* 0018 */  0x91, 0x9F, 0x49, 0x8F, 0x81, 0xF5, 0x99, 0x5B,  // ..I....[
                            /* 0020 */  0xA7, 0x38, 0x22, 0xAF, 0x41, 0x42, 0x02, 0x01,  // .8".AB..
                            /* 0028 */  0x6C, 0xBA, 0x3C, 0x2D, 0x9C, 0x1C, 0x41, 0x7F,  // l.<-..A.
                            /* 0030 */  0xB5, 0x4C, 0xF5, 0xD5, 0xD5, 0x80, 0xD4, 0x82,  // .L......
                            /* 0038 */  0x41, 0x43, 0x01, 0x01, 0x6D, 0x02, 0xBA, 0x40,  // AC..m..@
                            /* 0040 */  0x5D, 0x07, 0x4A, 0xCD, 0x97, 0x10, 0xF7, 0xC5,  // ].J.....
                            /* 0048 */  0x73, 0x47, 0xCA, 0xC9, 0x41, 0x44, 0x0F, 0x01,  // sG..AD..
                            /* 0050 */  0x6E, 0xCF, 0xBC, 0x8D, 0xB4, 0x9D, 0x46, 0x0E,  // n.....F.
                            /* 0058 */  0xA3, 0xF2, 0x99, 0xAF, 0xAA, 0xA7, 0x7A, 0x7A,  // ......zz
                            /* 0060 */  0x41, 0x45, 0x0D, 0x01, 0x6F, 0x21, 0x2A, 0xBD,  // AE..o!*.
                            /* 0068 */  0xB9, 0x2F, 0x40, 0xA6, 0xB8, 0x07, 0xDD, 0xDB,  // ./@.....
                            /* 0070 */  0xAD, 0x65, 0x68, 0x91, 0x41, 0x46, 0x13, 0x01,  // .eh.AF..
                            /* 0078 */  0x7A, 0xEC, 0xC3, 0x1E, 0x9B, 0x1E, 0x4A, 0xE7,  // z.....J.
                            /* 0080 */  0x90, 0x26, 0xCF, 0x12, 0x2B, 0x0B, 0xBD, 0x21,  // .&..+..!
                            /* 0088 */  0x41, 0x47, 0x12, 0x01, 0x7B, 0x3D, 0x75, 0xA1,  // AG..{=u.
                            /* 0090 */  0x21, 0xB6, 0x4A, 0xDE, 0xB4, 0x1A, 0x55, 0x71,  // !.J...Uq
                            /* 0098 */  0x6A, 0x0E, 0xCE, 0x7A, 0x41, 0x48, 0x15, 0x01,  // j..zAH..
                            /* 00A0 */  0x7C, 0x3D, 0x75, 0xA1, 0x21, 0xB6, 0x4A, 0xDE,  // |=u.!.J.
                            /* 00A8 */  0xB4, 0x1A, 0x55, 0x71, 0x6A, 0x0E, 0xCE, 0x7A,  // ..Uqj..z
                            /* 00B0 */  0x41, 0x49, 0x08, 0x01, 0x8A, 0xC3, 0x3C, 0x5B,  // AI....<[
                            /* 00B8 */  0xD9, 0x40, 0x45, 0x72, 0x8A, 0xE6, 0x11, 0x45,  // .@Er...E
                            /* 00C0 */  0xB7, 0x51, 0xBE, 0x3F, 0xC0, 0x00, 0x01, 0x09   // .Q.?....
                        })
                        OperationRegion (EC, EmbeddedControl, Zero, 0x0100)
                        Field (EC, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x2D), 
                            T2D0,   1, 
                            T2D1,   4, 
                            T2D5,   3, 
                            TD2E,   8, 
                            TD2F,   8, 
                            TD30,   8, 
                            TD31,   8, 
                            TD32,   8, 
                            TD33,   8, 
                            Offset (0x35), 
                            TD35,   8, 
                            TD36,   8, 
                            Offset (0x38), 
                            TD38,   16, 
                            TD3A,   16, 
                            TD3C,   16, 
                            TD3E,   16, 
                            TD40,   16, 
                            TD42,   16, 
                            TD44,   16, 
                            TD46,   16, 
                            TD48,   16, 
                            TD4A,   16, 
                            TD4C,   16, 
                            Offset (0x50), 
                            TD50,   16, 
                            TD52,   16, 
                            TD54,   16, 
                            TD56,   16, 
                            TD58,   16, 
                            TD5A,   16, 
                            TD5C,   16, 
                            TD5E,   16, 
                            TD60,   16, 
                            TD62,   16, 
                            TD64,   16, 
                            Offset (0x68), 
                            TD68,   8, 
                            TD69,   8, 
                            TD6A,   8, 
                            TD6B,   8, 
                            TD6C,   8, 
                            TD6D,   8, 
                            TD6E,   8, 
                            TD6F,   8, 
                            TD70,   8, 
                            TD71,   8, 
                            TD72,   8, 
                            TD73,   8, 
                            TD74,   8, 
                            TD75,   8, 
                            TD76,   8, 
                            TD77,   8, 
                            TD78,   8, 
                            TD79,   8, 
                            Offset (0x80), 
                            TD80,   8, 
                            TD81,   8, 
                            TD82,   8, 
                            TD83,   8, 
                            TD84,   8, 
                            TD85,   8, 
                            TD86,   8, 
                            TD87,   8, 
                            TD88,   8, 
                            TD89,   8, 
                            TD8A,   8, 
                            TD8B,   8, 
                            TD8C,   8, 
                            TD8D,   8, 
                            TD8E,   8, 
                            TD8F,   8, 
                            TD90,   8, 
                            Offset (0xA0), 
                            TDA0,   8, 
                            TDA1,   8, 
                            TDA2,   8, 
                            TDA3,   8, 
                            TDA4,   8, 
                            TDA5,   8, 
                            TDA6,   8, 
                            TDA7,   8, 
                            TDA8,   8, 
                            TDA9,   8, 
                            TDAA,   8, 
                            TDAB,   8, 
                            TDAC,   8, 
                            TDAD,   8, 
                            TDAE,   8, 
                            TDAF,   8, 
                            TDB0,   8, 
                            TDB1,   8, 
                            TDB2,   8, 
                            TDB3,   8, 
                            TDB4,   8, 
                            TDB5,   8, 
                            TDB6,   8, 
                            TDB7,   8, 
                            TDB8,   8, 
                            TDB9,   8, 
                            TDBA,   8, 
                            TDBB,   8, 
                            Offset (0xC8), 
                            TDC8,   8, 
                            TDC9,   8, 
                            TDCA,   8, 
                            TDCB,   8, 
                            TDCC,   8, 
                            TDCD,   8, 
                            TDCE,   8, 
                            TDCF,   8, 
                            Offset (0xE0), 
                            TDE0,   8, 
                            Offset (0xE3), 
                            TDE3,   8, 
                            TE40,   3, 
                            TE43,   5, 
                            TDE5,   8, 
                            TDE6,   8, 
                            TDE7,   8, 
                            TDE8,   8, 
                            TDE9,   8, 
                            Offset (0xED), 
                            TDED,   8, 
                            TDEE,   8, 
                            Offset (0xF0), 
                            TDF0,   8, 
                            TDF1,   8, 
                            TDF2,   8, 
                            TDF3,   8, 
                            TDF4,   8, 
                            TDF5,   8, 
                            TDF6,   8, 
                            TDF7,   8, 
                            TDF8,   8, 
                            TDF9,   8, 
                            TDFA,   8, 
                            TDFB,   8, 
                            TDFC,   8, 
                            TDFD,   8, 
                            TDFE,   8, 
                            TDFF,   8
                        }

                        Method (WQAA, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = T2D0 /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D0 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = T2D1 /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D1 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TDEE /* \_SB_.PCI0.SBRG.EC__.SCM0.TDEE */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = T2D5 /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D5 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TDE5 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE5 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TDE6 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE6 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TDA0 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA0 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TDA1 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA1 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TDA2 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA2 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TDA3 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA3 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TDA4 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA4 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TDA5 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA5 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TDA6 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA6 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0D))
                            {
                                Local0 = TDA7 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA7 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0E))
                            {
                                Local0 = TDA8 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA8 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0F))
                            {
                                Local0 = TDA9 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA9 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = TDAA /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAA */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = TDAB /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAB */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x12))
                            {
                                Local0 = TDAC /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAC */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x13))
                            {
                                Local0 = TDAD /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAD */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x14))
                            {
                                Local0 = TDAE /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAE */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x15))
                            {
                                Local0 = TDAF /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAF */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x16))
                            {
                                Local0 = TDB0 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB0 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x17))
                            {
                                Local0 = TDB1 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB1 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x18))
                            {
                                Local0 = TDB2 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB2 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x19))
                            {
                                Local0 = TDB3 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB3 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1A))
                            {
                                Local0 = TDB4 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB4 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1B))
                            {
                                Local0 = TDB5 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB5 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1C))
                            {
                                Local0 = TDB6 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB6 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1D))
                            {
                                Local0 = TDB7 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB7 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1E))
                            {
                                Local0 = TDB8 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB8 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x1F))
                            {
                                Local0 = TDB9 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB9 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x20))
                            {
                                Local0 = TDBA /* \_SB_.PCI0.SBRG.EC__.SCM0.TDBA */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x21))
                            {
                                Local0 = TDBB /* \_SB_.PCI0.SBRG.EC__.SCM0.TDBB */
                                Return (Local0)
                            }
                        }

                        Method (WQAB, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local1 = TD2E /* \_SB_.PCI0.SBRG.EC__.SCM0.TD2E */
                                Return (Local1)
                            }

                            If ((Arg0 == One))
                            {
                                Local1 = TD2F /* \_SB_.PCI0.SBRG.EC__.SCM0.TD2F */
                                Return (Local1)
                            }
                        }

                        Method (WQAC, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local2 = TD30 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD30 */
                                Return (Local2)
                            }
                        }

                        Method (WQAD, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TD31 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD31 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = TD38 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD38 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TD3A /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3A */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TD3C /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3C */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TD3E /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3E */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TD40 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD40 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TD42 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD42 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TD44 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD44 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TD46 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD46 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TD48 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD48 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TD4A /* \_SB_.PCI0.SBRG.EC__.SCM0.TD4A */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TD4C /* \_SB_.PCI0.SBRG.EC__.SCM0.TD4C */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TDE8 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE8 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0D))
                            {
                                Local0 = TD35 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD35 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0E))
                            {
                                Local0 = TD36 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD36 */
                                Return (Local0)
                            }
                        }

                        Method (WQAE, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TD32 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD32 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = TD50 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD50 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TD52 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD52 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TD54 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD54 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TD56 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD56 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TD58 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD58 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TD5A /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5A */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TD5C /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5C */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TD5E /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5E */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TD60 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD60 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TD62 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD62 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TD64 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD64 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TDE9 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE9 */
                                Return (Local0)
                            }
                        }

                        Method (WQAF, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TD33 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD33 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = TD68 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD68 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TD71 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD71 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TD70 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD70 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TD69 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD69 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TD6A /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6A */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TD6B /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6B */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TD6C /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6C */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TD6D /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6D */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TD6E /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6E */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TD6F /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6F */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TD72 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD72 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TD73 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD73 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0D))
                            {
                                Local0 = TD74 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD74 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0E))
                            {
                                Local0 = TD75 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD75 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0F))
                            {
                                Local0 = TD76 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD76 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = TD77 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD77 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = TD78 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD78 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x12))
                            {
                                Local0 = TD79 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD79 */
                                Return (Local0)
                            }
                        }

                        Method (WQAG, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TD33 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD33 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = TD80 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD80 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TD89 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD89 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TD88 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD88 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TD81 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD81 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TD82 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD82 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TD83 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD83 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TD84 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD84 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TD85 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD85 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TD86 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD86 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TD87 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD87 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TD8A /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8A */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TD8B /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8B */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0D))
                            {
                                Local0 = TD8C /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8C */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0E))
                            {
                                Local0 = TD8D /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8D */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0F))
                            {
                                Local0 = TD8E /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8E */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = TD8F /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8F */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = TD90 /* \_SB_.PCI0.SBRG.EC__.SCM0.TD90 */
                                Return (Local0)
                            }
                        }

                        Method (WQAH, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TE40 /* \_SB_.PCI0.SBRG.EC__.SCM0.TE40 */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                Local0 = TE43 /* \_SB_.PCI0.SBRG.EC__.SCM0.TE43 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TDE7 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE7 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TDF0 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF0 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TDF1 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF1 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TDFE /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFE */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TDFF /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFF */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TDF2 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF2 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x08))
                            {
                                Local0 = TDF3 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF3 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x09))
                            {
                                Local0 = TDF4 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF4 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0A))
                            {
                                Local0 = TDF5 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF5 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local0 = TDF6 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF6 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0C))
                            {
                                Local0 = TDF7 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF7 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0D))
                            {
                                Local0 = TDF8 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF8 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0E))
                            {
                                Local0 = TDF9 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF9 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x0F))
                            {
                                Local0 = TDFA /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFA */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = TDFB /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFB */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = TDFC /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFC */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x12))
                            {
                                Local0 = TDFD /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFD */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x13))
                            {
                                Local0 = TDE0 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE0 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x14))
                            {
                                Local0 = TDE3 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE3 */
                                Return (Local0)
                            }
                        }

                        Method (WQAI, 1, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                Local0 = TDCF /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCF */
                                Return (Local0)
                            }

                            If ((Arg0 == One))
                            {
                                TDCE = TDVR /* \_SB_.PCI0.SBRG.EC__.SCM0.TDVR */
                                Local0 = TDCE /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCE */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x02))
                            {
                                Local0 = TDCD /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCD */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x03))
                            {
                                Local0 = TDCC /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCC */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x04))
                            {
                                Local0 = TDCB /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCB */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x05))
                            {
                                Local0 = TDCA /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCA */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x06))
                            {
                                Local0 = TDC9 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDC9 */
                                Return (Local0)
                            }

                            If ((Arg0 == 0x07))
                            {
                                Local0 = TDC8 /* \_SB_.PCI0.SBRG.EC__.SCM0.TDC8 */
                                Return (Local0)
                            }
                        }

                        Method (WSAA, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                T2D0 = Arg1
                                Return (T2D0) /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D0 */
                            }

                            If ((Arg0 == One))
                            {
                                T2D1 = Arg1
                                Return (T2D1) /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D1 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TDEE = Arg1
                                Return (TDEE) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDEE */
                            }

                            If ((Arg0 == 0x03))
                            {
                                T2D5 = Arg1
                                Return (T2D5) /* \_SB_.PCI0.SBRG.EC__.SCM0.T2D5 */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TDE5 = Arg1
                                Return (TDE5) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE5 */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TDE6 = Arg1
                                Return (TDE6) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE6 */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TDA0 = Arg1
                                Return (TDA0) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA0 */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TDA1 = Arg1
                                Return (TDA1) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA1 */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TDA2 = Arg1
                                Return (TDA2) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA2 */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TDA3 = Arg1
                                Return (TDA3) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA3 */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TDA4 = Arg1
                                Return (TDA4) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA4 */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TDA5 = Arg1
                                Return (TDA5) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA5 */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TDA6 = Arg1
                                Return (TDA6) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA6 */
                            }

                            If ((Arg0 == 0x0D))
                            {
                                TDA7 = Arg1
                                Return (TDA7) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA7 */
                            }

                            If ((Arg0 == 0x0E))
                            {
                                TDA8 = Arg1
                                Return (TDA8) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA8 */
                            }

                            If ((Arg0 == 0x0F))
                            {
                                TDA9 = Arg1
                                Return (TDA9) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDA9 */
                            }

                            If ((Arg0 == 0x10))
                            {
                                TDAA = Arg1
                                Return (TDAA) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAA */
                            }

                            If ((Arg0 == 0x11))
                            {
                                TDAB = Arg1
                                Return (TDAB) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAB */
                            }

                            If ((Arg0 == 0x12))
                            {
                                TDAC = Arg1
                                Return (TDAC) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAC */
                            }

                            If ((Arg0 == 0x13))
                            {
                                TDAD = Arg1
                                Return (TDAD) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAD */
                            }

                            If ((Arg0 == 0x14))
                            {
                                TDAE = Arg1
                                Return (TDAE) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAE */
                            }

                            If ((Arg0 == 0x15))
                            {
                                TDAF = Arg1
                                Return (TDAF) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDAF */
                            }

                            If ((Arg0 == 0x16))
                            {
                                TDB0 = Arg1
                                Return (TDB0) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB0 */
                            }

                            If ((Arg0 == 0x17))
                            {
                                TDB1 = Arg1
                                Return (TDB1) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB1 */
                            }

                            If ((Arg0 == 0x18))
                            {
                                TDB2 = Arg1
                                Return (TDB2) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB2 */
                            }

                            If ((Arg0 == 0x19))
                            {
                                TDB3 = Arg1
                                Return (TDB3) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB3 */
                            }

                            If ((Arg0 == 0x1A))
                            {
                                TDB4 = Arg1
                                Return (TDB4) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB4 */
                            }

                            If ((Arg0 == 0x1B))
                            {
                                TDB5 = Arg1
                                Return (TDB5) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB5 */
                            }

                            If ((Arg0 == 0x1C))
                            {
                                TDB6 = Arg1
                                Return (TDB6) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB6 */
                            }

                            If ((Arg0 == 0x1D))
                            {
                                TDB7 = Arg1
                                Return (TDB7) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB7 */
                            }

                            If ((Arg0 == 0x1E))
                            {
                                TDB8 = Arg1
                                Return (TDB8) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB8 */
                            }

                            If ((Arg0 == 0x1F))
                            {
                                TDB9 = Arg1
                                Return (TDB9) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDB9 */
                            }

                            If ((Arg0 == 0x20))
                            {
                                TDBA = Arg1
                                Return (TDBA) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDBA */
                            }

                            If ((Arg0 == 0x21))
                            {
                                TDBB = Arg1
                                Return (TDBB) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDBB */
                            }
                        }

                        Method (WSAB, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD2E = Arg1
                                Return (TD2E) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD2E */
                            }

                            If ((Arg0 == One))
                            {
                                TD2F = Arg1
                                Return (TD2F) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD2F */
                            }
                        }

                        Method (WSAC, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD30 = Arg1
                                Return (TD30) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD30 */
                            }
                        }

                        Method (WSAD, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD31 = Arg1
                                Return (TD31) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD31 */
                            }

                            If ((Arg0 == One))
                            {
                                TD38 = Arg1
                                Return (TD38) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD38 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TD3A = Arg1
                                Return (TD3A) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3A */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TD3C = Arg1
                                Return (TD3C) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3C */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TD3E = Arg1
                                Return (TD3E) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD3E */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TD40 = Arg1
                                Return (TD40) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD40 */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TD42 = Arg1
                                Return (TD42) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD42 */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TD44 = Arg1
                                Return (TD44) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD44 */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TD46 = Arg1
                                Return (TD46) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD46 */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TD48 = Arg1
                                Return (TD48) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD48 */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TD4A = Arg1
                                Return (TD4A) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD4A */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TD4C = Arg1
                                Return (TD4C) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD4C */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TDE8 = Arg1
                                Return (TDE8) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE8 */
                            }

                            If ((Arg0 == 0x0D))
                            {
                                TD35 = Arg1
                                Return (TD35) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD35 */
                            }

                            If ((Arg0 == 0x0E))
                            {
                                TD36 = Arg1
                                Return (TD36) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD36 */
                            }
                        }

                        Method (WSAE, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD32 = Arg1
                                Return (TD32) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD32 */
                            }

                            If ((Arg0 == One))
                            {
                                TD50 = Arg1
                                Return (TD50) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD50 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TD52 = Arg1
                                Return (TD52) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD52 */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TD54 = Arg1
                                Return (TD54) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD54 */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TD56 = Arg1
                                Return (TD56) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD56 */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TD58 = Arg1
                                Return (TD58) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD58 */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TD5A = Arg1
                                Return (TD5A) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5A */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TD5C = Arg1
                                Return (TD5C) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5C */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TD5E = Arg1
                                Return (TD5E) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD5E */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TD60 = Arg1
                                Return (TD60) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD60 */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TD62 = Arg1
                                Return (TD62) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD62 */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TD64 = Arg1
                                Return (TD64) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD64 */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TDE9 = Arg1
                                Return (TDE9) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE9 */
                            }
                        }

                        Method (WSAF, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD33 = Arg1
                                Return (TD33) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD33 */
                            }

                            If ((Arg0 == One))
                            {
                                TD68 = Arg1
                                Return (TD68) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD68 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TD71 = Arg1
                                Return (TD71) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD71 */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TD70 = Arg1
                                Return (TD70) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD70 */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TD69 = Arg1
                                Return (TD69) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD69 */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TD6A = Arg1
                                Return (TD6A) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6A */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TD6B = Arg1
                                Return (TD6B) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6B */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TD6C = Arg1
                                Return (TD6C) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6C */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TD6D = Arg1
                                Return (TD6D) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6D */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TD6E = Arg1
                                Return (TD6E) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6E */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TD6F = Arg1
                                Return (TD6F) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD6F */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TD72 = Arg1
                                Return (TD72) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD72 */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TD73 = Arg1
                                Return (TD73) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD73 */
                            }

                            If ((Arg0 == 0x0D))
                            {
                                TD74 = Arg1
                                Return (TD74) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD74 */
                            }

                            If ((Arg0 == 0x0E))
                            {
                                TD75 = Arg1
                                Return (TD75) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD75 */
                            }

                            If ((Arg0 == 0x0F))
                            {
                                TD76 = Arg1
                                Return (TD76) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD76 */
                            }

                            If ((Arg0 == 0x10))
                            {
                                TD77 = Arg1
                                Return (TD77) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD77 */
                            }

                            If ((Arg0 == 0x11))
                            {
                                TD78 = Arg1
                                Return (TD78) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD78 */
                            }

                            If ((Arg0 == 0x12))
                            {
                                TD79 = Arg1
                                Return (TD79) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD79 */
                            }
                        }

                        Method (WSAG, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TD33 = Arg1
                                Return (TD33) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD33 */
                            }

                            If ((Arg0 == One))
                            {
                                TD80 = Arg1
                                Return (TD80) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD80 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TD89 = Arg1
                                Return (TD89) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD89 */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TD88 = Arg1
                                Return (TD88) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD88 */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TD81 = Arg1
                                Return (TD81) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD81 */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TD82 = Arg1
                                Return (TD82) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD82 */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TD83 = Arg1
                                Return (TD83) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD83 */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TD84 = Arg1
                                Return (TD84) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD84 */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TD85 = Arg1
                                Return (TD85) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD85 */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TD86 = Arg1
                                Return (TD86) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD86 */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TD87 = Arg1
                                Return (TD87) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD87 */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TD8A = Arg1
                                Return (TD8A) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8A */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TD8B = Arg1
                                Return (TD8B) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8B */
                            }

                            If ((Arg0 == 0x0D))
                            {
                                TD8C = Arg1
                                Return (TD8C) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8C */
                            }

                            If ((Arg0 == 0x0E))
                            {
                                TD8D = Arg1
                                Return (TD8D) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8D */
                            }

                            If ((Arg0 == 0x0F))
                            {
                                TD8E = Arg1
                                Return (TD8E) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8E */
                            }

                            If ((Arg0 == 0x10))
                            {
                                TD8F = Arg1
                                Return (TD8F) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD8F */
                            }

                            If ((Arg0 == 0x11))
                            {
                                TD90 = Arg1
                                Return (TD90) /* \_SB_.PCI0.SBRG.EC__.SCM0.TD90 */
                            }
                        }

                        Method (WSAH, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TE40 = Arg1
                                Return (TE40) /* \_SB_.PCI0.SBRG.EC__.SCM0.TE40 */
                            }

                            If ((Arg0 == One))
                            {
                                TE43 = Arg1
                                Return (TE43) /* \_SB_.PCI0.SBRG.EC__.SCM0.TE43 */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TDE7 = Arg1
                                Return (TDE7) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE7 */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TDF0 = Arg1
                                Return (TDF0) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF0 */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TDF1 = Arg1
                                Return (TDF1) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF1 */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TDFE = Arg1
                                Return (TDFE) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFE */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TDFF = Arg1
                                Return (TDFF) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFF */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TDF2 = Arg1
                                Return (TDF2) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF2 */
                            }

                            If ((Arg0 == 0x08))
                            {
                                TDF3 = Arg1
                                Return (TDF3) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF3 */
                            }

                            If ((Arg0 == 0x09))
                            {
                                TDF4 = Arg1
                                Return (TDF4) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF4 */
                            }

                            If ((Arg0 == 0x0A))
                            {
                                TDF5 = Arg1
                                Return (TDF5) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF5 */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                TDF6 = Arg1
                                Return (TDF6) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF6 */
                            }

                            If ((Arg0 == 0x0C))
                            {
                                TDF7 = Arg1
                                Return (TDF7) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF7 */
                            }

                            If ((Arg0 == 0x0D))
                            {
                                TDF8 = Arg1
                                Return (TDF8) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF8 */
                            }

                            If ((Arg0 == 0x0E))
                            {
                                TDF9 = Arg1
                                Return (TDF9) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDF9 */
                            }

                            If ((Arg0 == 0x0F))
                            {
                                TDFA = Arg1
                                Return (TDFA) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFA */
                            }

                            If ((Arg0 == 0x10))
                            {
                                TDFB = Arg1
                                Return (TDFB) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFB */
                            }

                            If ((Arg0 == 0x11))
                            {
                                TDFC = Arg1
                                Return (TDFC) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFC */
                            }

                            If ((Arg0 == 0x12))
                            {
                                TDFD = Arg1
                                Return (TDFD) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDFD */
                            }

                            If ((Arg0 == 0x13))
                            {
                                TDE0 = Arg1
                                Return (TDE0) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE0 */
                            }

                            If ((Arg0 == 0x14))
                            {
                                TDE3 = Arg1
                                Return (TDE3) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDE3 */
                            }
                        }

                        Method (WSAI, 2, NotSerialized)
                        {
                            If ((Arg0 == Zero))
                            {
                                TDCF = Arg1
                                Return (TDCF) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCF */
                            }

                            If ((Arg0 == One))
                            {
                                TDCE = Arg1
                                Return (TDCE) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCE */
                            }

                            If ((Arg0 == 0x02))
                            {
                                TDCD = Arg1
                                Return (TDCD) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCD */
                            }

                            If ((Arg0 == 0x03))
                            {
                                TDCC = Arg1
                                Return (TDCC) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCC */
                            }

                            If ((Arg0 == 0x04))
                            {
                                TDCB = Arg1
                                Return (TDCB) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCB */
                            }

                            If ((Arg0 == 0x05))
                            {
                                TDCA = Arg1
                                Return (TDCA) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDCA */
                            }

                            If ((Arg0 == 0x06))
                            {
                                TDC9 = Arg1
                                Return (TDC9) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDC9 */
                            }

                            If ((Arg0 == 0x07))
                            {
                                TDC8 = Arg1
                                Return (TDC8) /* \_SB_.PCI0.SBRG.EC__.SCM0.TDC8 */
                            }
                        }

                        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                        {
                            If ((Arg0 == 0xC0))
                            {
                                Local1 = TDEE /* \_SB_.PCI0.SBRG.EC__.SCM0.TDEE */
                                DBG8 = Local1
                                TDEE = Zero
                                Return (Local1)
                            }
                        }
                    }
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (^NATA, Package (0x01)
                {
                    0x001F0002
                })
                Name (\FZTF, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5         // .......
                })
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x02))
                    {
                        REGF = Arg1
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14){})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (PSCR << One)
                        Local0 = (PMCR | Local1)
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local1 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local2 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local0 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local1 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local1 |= Local3
                        GMPT = PMRI /* \_SB_.PCI0.SATA.PMRI */
                        GMUE = Local0
                        GMUT = PMUT /* \_SB_.PCI0.SATA.PMUT */
                        GMCR = PMCR /* \_SB_.PCI0.SATA.PMCR */
                        GSPT = PSRI /* \_SB_.PCI0.SATA.PSRI */
                        GSUE = Local1
                        GSUT = PSUT /* \_SB_.PCI0.SATA.PSUT */
                        GSCR = PSCR /* \_SB_.PCI0.SATA.PSCR */
                        STM ()
                        PMRI = GMPT /* \_SB_.PCI0.SATA.GMPT */
                        Local0 = GMUE /* \_SB_.PCI0.SATA.GMUE */
                        PMUT = GMUT /* \_SB_.PCI0.SATA.GMUT */
                        PMCR = GMCR /* \_SB_.PCI0.SATA.GMCR */
                        Local1 = GSUE /* \_SB_.PCI0.SATA.GSUE */
                        PSUT = GSUT /* \_SB_.PCI0.SATA.GSUT */
                        PSCR = GSCR /* \_SB_.PCI0.SATA.GSCR */
                        If ((Local0 & One))
                        {
                            PM3E = One
                        }
                        Else
                        {
                            PM3E = Zero
                        }

                        If ((Local0 & 0x02))
                        {
                            PM6E = One
                        }
                        Else
                        {
                            PM6E = Zero
                        }

                        If ((Local0 & 0x04))
                        {
                            PMAE = One
                        }
                        Else
                        {
                            PMAE = Zero
                        }

                        If ((Local1 & One))
                        {
                            PS3E = One
                        }
                        Else
                        {
                            PS3E = Zero
                        }

                        If ((Local1 & 0x02))
                        {
                            PS6E = One
                        }
                        Else
                        {
                            PS6E = Zero
                        }

                        If ((Local1 & 0x04))
                        {
                            PSAE = One
                        }
                        Else
                        {
                            PSAE = Zero
                        }

                        ATA0 = GTF (Zero, Arg1)
                        ATA1 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (SSCR << One)
                        Local0 = (SMCR | Local1)
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local1 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local2 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local0 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local1 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local1 |= Local3
                        GMPT = SMRI /* \_SB_.PCI0.SATA.SMRI */
                        GMUE = Local0
                        GMUT = SMUT /* \_SB_.PCI0.SATA.SMUT */
                        GMCR = SMCR /* \_SB_.PCI0.SATA.SMCR */
                        GSPT = SSRI /* \_SB_.PCI0.SATA.SSRI */
                        GSUE = Local1
                        GSUT = SSUT /* \_SB_.PCI0.SATA.SSUT */
                        GSCR = SSCR /* \_SB_.PCI0.SATA.SSCR */
                        STM ()
                        SMRI = GMPT /* \_SB_.PCI0.SATA.GMPT */
                        Local0 = GMUE /* \_SB_.PCI0.SATA.GMUE */
                        SMUT = GMUT /* \_SB_.PCI0.SATA.GMUT */
                        SMCR = GMCR /* \_SB_.PCI0.SATA.GMCR */
                        Local1 = GSUE /* \_SB_.PCI0.SATA.GSUE */
                        SSUT = GSUT /* \_SB_.PCI0.SATA.GSUT */
                        SSCR = GSCR /* \_SB_.PCI0.SATA.GSCR */
                        If ((Local0 & One))
                        {
                            SM3E = One
                        }
                        Else
                        {
                            SM3E = Zero
                        }

                        If ((Local0 & 0x02))
                        {
                            SM6E = One
                        }
                        Else
                        {
                            SM6E = Zero
                        }

                        If ((Local0 & 0x04))
                        {
                            SMAE = One
                        }
                        Else
                        {
                            SMAE = Zero
                        }

                        If ((Local1 & One))
                        {
                            SS3E = One
                        }
                        Else
                        {
                            SS3E = Zero
                        }

                        If ((Local1 & 0x02))
                        {
                            SS6E = One
                        }
                        Else
                        {
                            SS6E = Zero
                        }

                        If ((Local1 & 0x04))
                        {
                            SSAE = One
                        }
                        Else
                        {
                            SSAE = Zero
                        }

                        ATA2 = GTF (Zero, Arg1)
                        ATA3 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    PIO0 = Ones
                    PIO1 = Ones
                    DMA0 = Ones
                    DMA1 = Ones
                    CHNF = 0x10
                    If (REGF){}
                    Else
                    {
                        Return (TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                    }

                    If ((Arg1 & 0x20))
                    {
                        CHNF |= 0x02
                    }

                    Local6 = Match (DerefOf (TIM0 [One]), MEQ, Arg0, MTR, Zero, 
                        Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA0 = Local7
                    PIO0 = Local7
                    If ((Arg4 & 0x20))
                    {
                        CHNF |= 0x08
                    }

                    Local6 = Match (DerefOf (TIM0 [0x02]), MEQ, Arg3, MTR, Zero, 
                        Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA1 = Local7
                    PIO1 = Local7
                    If ((Arg1 & 0x07))
                    {
                        Local5 = Arg2
                        If ((Arg1 & 0x02))
                        {
                            Local5 += 0x02
                        }

                        If ((Arg1 & 0x04))
                        {
                            Local5 += 0x04
                        }

                        DMA0 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= One
                    }

                    If ((Arg4 & 0x07))
                    {
                        Local5 = Arg5
                        If ((Arg4 & 0x02))
                        {
                            Local5 += 0x02
                        }

                        If ((Arg4 & 0x04))
                        {
                            Local5 += 0x04
                        }

                        DMA1 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= 0x04
                    }

                    Debug = TMD0 /* \_SB_.PCI0.SATA.TMD0 */
                    Return (TMD0) /* \_SB_.PCI0.SATA.TMD0 */
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        GMUE = Zero
                        GMUT = Zero
                        GSUE = Zero
                        GSUT = Zero
                        If ((CHNF & One))
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA0, MTR, Zero, 
                                Zero)
                            If ((Local0 > 0x05))
                            {
                                Local0 = 0x05
                            }

                            GMUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GMUE |= One
                            If ((Local0 > 0x02))
                            {
                                GMUE |= 0x02
                            }

                            If ((Local0 > 0x04))
                            {
                                GMUE &= 0xFD
                                GMUE |= 0x04
                            }
                        }
                        ElseIf (((PIO0 == Ones) | (PIO0 == Zero)))
                        {
                            If (((DMA0 < Ones) & (DMA0 > Zero)))
                            {
                                PIO0 = DMA0 /* \_SB_.PCI0.SATA.DMA0 */
                                GMUE |= 0x80
                            }
                        }

                        If ((CHNF & 0x04))
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA1, MTR, Zero, 
                                Zero)
                            If ((Local0 > 0x05))
                            {
                                Local0 = 0x05
                            }

                            GSUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GSUE |= One
                            If ((Local0 > 0x02))
                            {
                                GSUE |= 0x02
                            }

                            If ((Local0 > 0x04))
                            {
                                GSUE &= 0xFD
                                GSUE |= 0x04
                            }
                        }
                        ElseIf (((PIO1 == Ones) | (PIO1 == Zero)))
                        {
                            If (((DMA1 < Ones) & (DMA1 > Zero)))
                            {
                                PIO1 = DMA1 /* \_SB_.PCI0.SATA.DMA1 */
                                GSUE |= 0x80
                            }
                        }

                        If ((CHNF & 0x02))
                        {
                            GMUE |= 0x20
                        }

                        If ((CHNF & 0x08))
                        {
                            GSUE |= 0x20
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO0, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = DerefOf (DerefOf (TIM0 [One]) [Local0])
                        GMPT = Local1
                        If ((Local0 < 0x03))
                        {
                            GMUE |= 0x50
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO1, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = DerefOf (DerefOf (TIM0 [0x02]) [Local0])
                        GSPT = Local1
                        If ((Local0 < 0x03))
                        {
                            GSUE |= 0x50
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF         // .......
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90         // .......
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6         // .......
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91         // .......
                })
                Name (ATA0, Buffer (0x1D){})
                Name (ATA1, Buffer (0x1D){})
                Name (ATA2, Buffer (0x1D){})
                Name (ATA3, Buffer (0x1D){})
                Name (ATAB, Buffer (0x1D){})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Local0 = (CMDC * 0x38)
                    Local1 = (Local0 + 0x08)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Local0 = (CMDC * 0x07)
                    CreateByteField (ATAB, (Local0 + 0x02), A001)
                    CreateByteField (ATAB, (Local0 + 0x06), A005)
                    CMDX = Arg0
                    A001 = Arg1
                    A005 = Arg2
                    CMDC++
                }

                Method (GTF, 2, Serialized)
                {
                    Debug = Arg1
                    CMDC = Zero
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If ((SizeOf (Arg1) == 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        ID49 = IW49 /* \_SB_.PCI0.SATA.GTF_.IW49 */
                        CreateWordField (Arg1, 0x6A, IW53)
                        ID53 = IW53 /* \_SB_.PCI0.SATA.GTF_.IW53 */
                        CreateWordField (Arg1, 0x7E, IW63)
                        ID63 = IW63 /* \_SB_.PCI0.SATA.GTF_.IW63 */
                        CreateWordField (Arg1, 0x76, IW59)
                        ID59 = IW59 /* \_SB_.PCI0.SATA.GTF_.IW59 */
                        CreateWordField (Arg1, 0xB0, IW88)
                        ID88 = IW88 /* \_SB_.PCI0.SATA.GTF_.IW88 */
                    }

                    Local7 = 0xA0
                    If (Arg0)
                    {
                        Local7 = 0xB0
                        IRDY = (CHNF & 0x08)
                        If ((CHNF & 0x10))
                        {
                            PIOT = PIO1 /* \_SB_.PCI0.SATA.PIO1 */
                        }
                        Else
                        {
                            PIOT = PIO0 /* \_SB_.PCI0.SATA.PIO0 */
                        }

                        If ((CHNF & 0x04))
                        {
                            If ((CHNF & 0x10))
                            {
                                DMAT = DMA1 /* \_SB_.PCI0.SATA.DMA1 */
                            }
                            Else
                            {
                                DMAT = DMA0 /* \_SB_.PCI0.SATA.DMA0 */
                            }
                        }
                    }
                    Else
                    {
                        IRDY = (CHNF & 0x02)
                        PIOT = PIO0 /* \_SB_.PCI0.SATA.PIO0 */
                        If ((CHNF & One))
                        {
                            DMAT = DMA0 /* \_SB_.PCI0.SATA.DMA0 */
                        }
                    }

                    If ((((ID53 & 0x04) && (ID88 & 0xFF00)) && DMAT))
                    {
                        Local1 = Match (DerefOf (TIM0 [0x03]), MLE, DMAT, MTR, Zero, 
                            Zero)
                        If ((Local1 > 0x05))
                        {
                            Local1 = 0x05
                        }

                        GTFB (AT01, (0x40 | Local1), Local7)
                    }
                    ElseIf (((ID63 & 0xFF00) && PIOT))
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, 
                            Zero) & 0x03)
                        Local1 = (0x20 | DerefOf (DerefOf (TIM0 [0x07]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = (0x08 | DerefOf (DerefOf (TIM0 [0x06]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf ((ID49 & 0x0400))
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If (((ID59 & 0x0100) && (ID59 & 0xFF)))
                    {
                        GTFB (AT03, (ID59 & 0xFF), Local7)
                    }

                    Debug = ATAB /* \_SB_.PCI0.SATA.ATAB */
                    Return (ATAB) /* \_SB_.PCI0.SATA.ATAB */
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Local0 = (CMDN * 0x38)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Debug = RETB /* \_SB_.PCI0.SATA.RATA.RETB */
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x02))
                    {
                        REGF = Arg1
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14){})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (PSCR << One)
                        Local0 = (PMCR | Local1)
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local1 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local2 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local0 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local1 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local1 |= Local3
                        GMPT = PMRI /* \_SB_.PCI0.SAT1.PMRI */
                        GMUE = Local0
                        GMUT = PMUT /* \_SB_.PCI0.SAT1.PMUT */
                        GMCR = PMCR /* \_SB_.PCI0.SAT1.PMCR */
                        GSPT = PSRI /* \_SB_.PCI0.SAT1.PSRI */
                        GSUE = Local1
                        GSUT = PSUT /* \_SB_.PCI0.SAT1.PSUT */
                        GSCR = PSCR /* \_SB_.PCI0.SAT1.PSCR */
                        STM ()
                        PMRI = GMPT /* \_SB_.PCI0.SAT1.GMPT */
                        Local0 = GMUE /* \_SB_.PCI0.SAT1.GMUE */
                        PMUT = GMUT /* \_SB_.PCI0.SAT1.GMUT */
                        PMCR = GMCR /* \_SB_.PCI0.SAT1.GMCR */
                        Local1 = GSUE /* \_SB_.PCI0.SAT1.GSUE */
                        PSUT = GSUT /* \_SB_.PCI0.SAT1.GSUT */
                        PSCR = GSCR /* \_SB_.PCI0.SAT1.GSCR */
                        If ((Local0 & One))
                        {
                            PM3E = One
                        }
                        Else
                        {
                            PM3E = Zero
                        }

                        If ((Local0 & 0x02))
                        {
                            PM6E = One
                        }
                        Else
                        {
                            PM6E = Zero
                        }

                        If ((Local0 & 0x04))
                        {
                            PMAE = One
                        }
                        Else
                        {
                            PMAE = Zero
                        }

                        If ((Local1 & One))
                        {
                            PS3E = One
                        }
                        Else
                        {
                            PS3E = Zero
                        }

                        If ((Local1 & 0x02))
                        {
                            PS6E = One
                        }
                        Else
                        {
                            PS6E = Zero
                        }

                        If ((Local1 & 0x04))
                        {
                            PSAE = One
                        }
                        Else
                        {
                            PSAE = Zero
                        }

                        ATA0 = GTF (Zero, Arg1)
                        ATA1 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (SSCR << One)
                        Local0 = (SMCR | Local1)
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local1 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local2 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local0 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local1 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local1 |= Local3
                        GMPT = SMRI /* \_SB_.PCI0.SAT1.SMRI */
                        GMUE = Local0
                        GMUT = SMUT /* \_SB_.PCI0.SAT1.SMUT */
                        GMCR = SMCR /* \_SB_.PCI0.SAT1.SMCR */
                        GSPT = SSRI /* \_SB_.PCI0.SAT1.SSRI */
                        GSUE = Local1
                        GSUT = SSUT /* \_SB_.PCI0.SAT1.SSUT */
                        GSCR = SSCR /* \_SB_.PCI0.SAT1.SSCR */
                        STM ()
                        SMRI = GMPT /* \_SB_.PCI0.SAT1.GMPT */
                        Local0 = GMUE /* \_SB_.PCI0.SAT1.GMUE */
                        SMUT = GMUT /* \_SB_.PCI0.SAT1.GMUT */
                        SMCR = GMCR /* \_SB_.PCI0.SAT1.GMCR */
                        Local1 = GSUE /* \_SB_.PCI0.SAT1.GSUE */
                        SSUT = GSUT /* \_SB_.PCI0.SAT1.GSUT */
                        SSCR = GSCR /* \_SB_.PCI0.SAT1.GSCR */
                        If ((Local0 & One))
                        {
                            SM3E = One
                        }
                        Else
                        {
                            SM3E = Zero
                        }

                        If ((Local0 & 0x02))
                        {
                            SM6E = One
                        }
                        Else
                        {
                            SM6E = Zero
                        }

                        If ((Local0 & 0x04))
                        {
                            SMAE = One
                        }
                        Else
                        {
                            SMAE = Zero
                        }

                        If ((Local1 & One))
                        {
                            SS3E = One
                        }
                        Else
                        {
                            SS3E = Zero
                        }

                        If ((Local1 & 0x02))
                        {
                            SS6E = One
                        }
                        Else
                        {
                            SS6E = Zero
                        }

                        If ((Local1 & 0x04))
                        {
                            SSAE = One
                        }
                        Else
                        {
                            SSAE = Zero
                        }

                        ATA2 = GTF (Zero, Arg1)
                        ATA3 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    PIO0 = Ones
                    PIO1 = Ones
                    DMA0 = Ones
                    DMA1 = Ones
                    CHNF = 0x10
                    If (REGF){}
                    Else
                    {
                        Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                    }

                    If ((Arg1 & 0x20))
                    {
                        CHNF |= 0x02
                    }

                    Local6 = Match (DerefOf (TIM0 [One]), MEQ, Arg0, MTR, Zero, 
                        Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA0 = Local7
                    PIO0 = Local7
                    If ((Arg4 & 0x20))
                    {
                        CHNF |= 0x08
                    }

                    Local6 = Match (DerefOf (TIM0 [0x02]), MEQ, Arg3, MTR, Zero, 
                        Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA1 = Local7
                    PIO1 = Local7
                    If ((Arg1 & 0x07))
                    {
                        Local5 = Arg2
                        If ((Arg1 & 0x02))
                        {
                            Local5 += 0x02
                        }

                        If ((Arg1 & 0x04))
                        {
                            Local5 += 0x04
                        }

                        DMA0 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= One
                    }

                    If ((Arg4 & 0x07))
                    {
                        Local5 = Arg5
                        If ((Arg4 & 0x02))
                        {
                            Local5 += 0x02
                        }

                        If ((Arg4 & 0x04))
                        {
                            Local5 += 0x04
                        }

                        DMA1 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= 0x04
                    }

                    Debug = TMD0 /* \_SB_.PCI0.SAT1.TMD0 */
                    Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        GMUE = Zero
                        GMUT = Zero
                        GSUE = Zero
                        GSUT = Zero
                        If ((CHNF & One))
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA0, MTR, Zero, 
                                Zero)
                            If ((Local0 > 0x05))
                            {
                                Local0 = 0x05
                            }

                            GMUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GMUE |= One
                            If ((Local0 > 0x02))
                            {
                                GMUE |= 0x02
                            }

                            If ((Local0 > 0x04))
                            {
                                GMUE &= 0xFD
                                GMUE |= 0x04
                            }
                        }
                        ElseIf (((PIO0 == Ones) | (PIO0 == Zero)))
                        {
                            If (((DMA0 < Ones) & (DMA0 > Zero)))
                            {
                                PIO0 = DMA0 /* \_SB_.PCI0.SAT1.DMA0 */
                                GMUE |= 0x80
                            }
                        }

                        If ((CHNF & 0x04))
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA1, MTR, Zero, 
                                Zero)
                            If ((Local0 > 0x05))
                            {
                                Local0 = 0x05
                            }

                            GSUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GSUE |= One
                            If ((Local0 > 0x02))
                            {
                                GSUE |= 0x02
                            }

                            If ((Local0 > 0x04))
                            {
                                GSUE &= 0xFD
                                GSUE |= 0x04
                            }
                        }
                        ElseIf (((PIO1 == Ones) | (PIO1 == Zero)))
                        {
                            If (((DMA1 < Ones) & (DMA1 > Zero)))
                            {
                                PIO1 = DMA1 /* \_SB_.PCI0.SAT1.DMA1 */
                                GSUE |= 0x80
                            }
                        }

                        If ((CHNF & 0x02))
                        {
                            GMUE |= 0x20
                        }

                        If ((CHNF & 0x08))
                        {
                            GSUE |= 0x20
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO0, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = DerefOf (DerefOf (TIM0 [One]) [Local0])
                        GMPT = Local1
                        If ((Local0 < 0x03))
                        {
                            GMUE |= 0x50
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO1, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = DerefOf (DerefOf (TIM0 [0x02]) [Local0])
                        GSPT = Local1
                        If ((Local0 < 0x03))
                        {
                            GSUE |= 0x50
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF         // .......
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90         // .......
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6         // .......
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91         // .......
                })
                Name (ATA0, Buffer (0x1D){})
                Name (ATA1, Buffer (0x1D){})
                Name (ATA2, Buffer (0x1D){})
                Name (ATA3, Buffer (0x1D){})
                Name (ATAB, Buffer (0x1D){})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Local0 = (CMDC * 0x38)
                    Local1 = (Local0 + 0x08)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Local0 = (CMDC * 0x07)
                    CreateByteField (ATAB, (Local0 + 0x02), A001)
                    CreateByteField (ATAB, (Local0 + 0x06), A005)
                    CMDX = Arg0
                    A001 = Arg1
                    A005 = Arg2
                    CMDC++
                }

                Method (GTF, 2, Serialized)
                {
                    Debug = Arg1
                    CMDC = Zero
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If ((SizeOf (Arg1) == 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        ID49 = IW49 /* \_SB_.PCI0.SAT1.GTF_.IW49 */
                        CreateWordField (Arg1, 0x6A, IW53)
                        ID53 = IW53 /* \_SB_.PCI0.SAT1.GTF_.IW53 */
                        CreateWordField (Arg1, 0x7E, IW63)
                        ID63 = IW63 /* \_SB_.PCI0.SAT1.GTF_.IW63 */
                        CreateWordField (Arg1, 0x76, IW59)
                        ID59 = IW59 /* \_SB_.PCI0.SAT1.GTF_.IW59 */
                        CreateWordField (Arg1, 0xB0, IW88)
                        ID88 = IW88 /* \_SB_.PCI0.SAT1.GTF_.IW88 */
                    }

                    Local7 = 0xA0
                    If (Arg0)
                    {
                        Local7 = 0xB0
                        IRDY = (CHNF & 0x08)
                        If ((CHNF & 0x10))
                        {
                            PIOT = PIO1 /* \_SB_.PCI0.SAT1.PIO1 */
                        }
                        Else
                        {
                            PIOT = PIO0 /* \_SB_.PCI0.SAT1.PIO0 */
                        }

                        If ((CHNF & 0x04))
                        {
                            If ((CHNF & 0x10))
                            {
                                DMAT = DMA1 /* \_SB_.PCI0.SAT1.DMA1 */
                            }
                            Else
                            {
                                DMAT = DMA0 /* \_SB_.PCI0.SAT1.DMA0 */
                            }
                        }
                    }
                    Else
                    {
                        IRDY = (CHNF & 0x02)
                        PIOT = PIO0 /* \_SB_.PCI0.SAT1.PIO0 */
                        If ((CHNF & One))
                        {
                            DMAT = DMA0 /* \_SB_.PCI0.SAT1.DMA0 */
                        }
                    }

                    If ((((ID53 & 0x04) && (ID88 & 0xFF00)) && DMAT))
                    {
                        Local1 = Match (DerefOf (TIM0 [0x03]), MLE, DMAT, MTR, Zero, 
                            Zero)
                        If ((Local1 > 0x05))
                        {
                            Local1 = 0x05
                        }

                        GTFB (AT01, (0x40 | Local1), Local7)
                    }
                    ElseIf (((ID63 & 0xFF00) && PIOT))
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, 
                            Zero) & 0x03)
                        Local1 = (0x20 | DerefOf (DerefOf (TIM0 [0x07]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, 
                            Zero) & 0x07)
                        Local1 = (0x08 | DerefOf (DerefOf (TIM0 [0x06]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf ((ID49 & 0x0400))
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If (((ID59 & 0x0100) && (ID59 & 0xFF)))
                    {
                        GTFB (AT03, (ID59 & 0xFF), Local7)
                    }

                    Debug = ATAB /* \_SB_.PCI0.SAT1.ATAB */
                    Return (ATAB) /* \_SB_.PCI0.SAT1.ATAB */
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Local0 = (CMDN * 0x38)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Debug = RETB /* \_SB_.PCI0.SAT1.RATA.RETB */
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (GBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (P0P5)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05) /* \_SB_.AR05 */
                    }

                    Return (PR05) /* \_SB_.PR05 */
                }
            }

            Device (P0P6)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06) /* \_SB_.AR06 */
                    }

                    Return (PR06) /* \_SB_.PR06 */
                }
            }

            Device (P0P7)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07) /* \_SB_.AR07 */
                    }

                    Return (PR07) /* \_SB_.PR07 */
                }
            }

            Device (P0P8)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08) /* \_SB_.AR08 */
                    }

                    Return (PR08) /* \_SB_.PR08 */
                }
            }

            Device (P0P9)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09) /* \_SB_.AR09 */
                    }

                    Return (PR09) /* \_SB_.PR09 */
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (EUSB)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
            }

            Device (USB3)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (((OSFL () == One) || (OSFL () == 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        USBW = 0x03
                    }
                    Else
                    {
                        USBW = Zero
                    }
                }
            }

            Device (USBE)
            {
                Name (_ADR, 0x001A0007)  // _ADR: Address
            }

            Device (P0P4)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04) /* \_SB_.AR04 */
                    }

                    Return (PR04) /* \_SB_.PR04 */
                }
            }

            Device (HDAC)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.P0P2, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P5, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P6, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P7, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P8, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P9, 0x02) // Device Wake
                Notify (\_SB.PCI0.P0P4, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.GBE, 0x02) // Device Wake
                Notify (\_SB.PCI0.HDAC, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    OperationRegion (_SB.PCI0.SBRG.PIX0, PCI_Config, 0x60, 0x0C)
    Field (\_SB.PCI0.SBRG.PIX0, ByteAcc, NoLock, Preserve)
    {
        PIRA,   8, 
        PIRB,   8, 
        PIRC,   8, 
        PIRD,   8, 
        Offset (0x08), 
        PIRE,   8, 
        PIRF,   8, 
        PIRG,   8, 
        PIRH,   8
    }

    Scope (_SB)
    {
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        CreateWordField (BUFA, One, IRA0)
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRA & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRA |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRA & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRA = Local0
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRB & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRB |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRB & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRB = Local0
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRC & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRC |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRC & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRC = Local0
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRD & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRD |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRD & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRD = Local0
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRE & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRE & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRF & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRF & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRG & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRG & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRH & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRH & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RBPE.XCFG */
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFE
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RWPE.XCFG */
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RDPE.XCFG */
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFE
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Local1 = (XCFG & Arg2)
            XCFG = (Local1 | Arg1)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Local0 = (Arg0 + 0x84)
            Local1 = RDPE (Local0)
            If ((Local1 == Ones))
            {
                Return (Zero)
            }
            Else
            {
                If ((Local1 && 0x00010000))
                {
                    WDPE (Local0, (Local1 & 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (SUPP, Zero)
        Name (CTRL, Zero)
        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                If (((SUPP & 0x16) != 0x16))
                {
                    CTRL &= 0x1E
                }

                CTRL &= 0x1D
                If (~(CDW1 & One))
                {
                    If ((CTRL & One)){}
                    If ((CTRL & 0x04)){}
                    If ((CTRL & 0x10)){}
                }

                If ((Arg1 != One))
                {
                    CDW1 |= 0x08
                }

                If ((CDW3 != CTRL))
                {
                    CDW1 |= 0x10
                }

                CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                Return (Arg3)
            }
            Else
            {
                CDW1 |= 0x04
                Return (Arg3)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            OperationRegion (IGDM, SystemMemory, 0xBFF9E0E4, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                Offset (0xE0), 
                KSV0,   32, 
                KSV1,   8, 
                Offset (0xF0), 
                IBTT,   8, 
                IPSC,   2, 
                IPAT,   4, 
                Offset (0xF2), 
                IBIA,   3, 
                IBLC,   2, 
                    ,   1, 
                ITVF,   4, 
                ITVM,   4, 
                Offset (0xF4), 
                IDVM,   1, 
                IDVS,   2, 
                ISSC,   1, 
                Offset (0xF5), 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                Offset (0x400), 
                GVD1,   57344
            }

            OperationRegion (TCOI, SystemIO, TOBS, 0x08)
            Field (TCOI, WordAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                    ,   9, 
                SCIS,   1, 
                Offset (0x06)
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Method (GSCI, 0, NotSerialized)
            {
                If ((GEFC == 0x04))
                {
                    GXFC = GBDA ()
                }

                If ((GEFC == 0x06))
                {
                    GXFC = SBCB ()
                }

                SCIS = One
                GEFC = Zero
                GSSE = Zero
                SCIE = Zero
                Return (Zero)
            }

            Method (GBDA, 0, NotSerialized)
            {
                If ((GESF == Zero))
                {
                    PARM = 0x0279
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == One))
                {
                    PARM = 0x0240
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x04))
                {
                    PARM &= 0xEFFF0000
                    PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                    PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x05))
                {
                    PARM = IPSC /* \_SB_.PCI0.GFX0.IPSC */
                    PARM |= (IPAT << 0x08)
                    PARM += 0x0100
                    PARM |= (LIDS << 0x10)
                    PARM ^= 0x00010000
                    PARM |= (IBIA << 0x14)
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x06))
                {
                    PARM = ITVF /* \_SB_.PCI0.GFX0.ITVF */
                    PARM |= (ITVM << 0x04)
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x07))
                {
                    Name (MEMS, 0x0D)
                    PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                    PARM ^= One
                    PARM |= (GMFN << One)
                    PARM |= 0x1000
                    PARM |= (CDCT << 0x15) /* \_SB_.PCI0.GFX0.PARM */
                    If ((IDVM == One))
                    {
                        MEMS = 0x11
                    }

                    If ((TASM < M512))
                    {
                        PARM |= (One << MEMS)
                    }
                    ElseIf ((TASM < M1GB))
                    {
                        If ((IDVS < 0x03))
                        {
                            PARM |= (IDVS << MEMS)
                        }
                        Else
                        {
                            PARM |= (0x02 << MEMS)
                        }
                    }
                    Else
                    {
                        PARM |= (IDVS << MEMS)
                    }

                    GESF = One
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x0A))
                {
                    PARM = Zero
                    If (ISSC)
                    {
                        PARM |= 0x03
                    }

                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x0B))
                {
                    PARM = KSV0 /* \_SB_.PCI0.GFX0.KSV0 */
                    GESF = KSV1 /* \_SB_.PCI0.GFX0.KSV1 */
                    Return (SUCC) /* \SUCC */
                }

                GESF = Zero
                Return (CRIT) /* \CRIT */
            }

            Method (SBCB, 0, NotSerialized)
            {
                If ((GESF == Zero))
                {
                    PARM = 0x20
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == One))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x03))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x04))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x05))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x06))
                {
                    Local0 = (PARM >> 0x1C)
                    If ((Local0 == Zero))
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = (PARM & 0xF0)
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x07))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x08))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x09))
                {
                    IBTT = (PARM & 0xFF)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x0A))
                {
                    Local0 = (PARM >> 0x1C)
                    If ((Local0 == Zero))
                    {
                        IPSC = (PARM & 0xFF)
                        IPAT = (((PARM >> 0x08) & 0xFF) - One)
                        IBLC = ((PARM >> 0x12) & 0x03)
                        IBIA = ((PARM >> 0x14) & 0x07)
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x0B))
                {
                    If ((((PARM >> 0x0B) & 0x03) == 0x02))
                    {
                        Local0 = ((PARM >> 0x0D) & 0x0F)
                        Local1 = ((PARM >> 0x11) & 0x0F)
                        If (Local0)
                        {
                            IDVM = Zero
                            IDVS = Local0
                        }

                        If (Local1)
                        {
                            IDVM = One
                            IDVS = Local1
                        }
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x10))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x11))
                {
                    PARM = (LIDS << 0x08)
                    PARM += 0x0100
                    GESF = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x12))
                {
                    If ((PARM & One))
                    {
                        If (((PARM >> One) == One))
                        {
                            ISSC = One
                        }
                        Else
                        {
                            GESF = Zero
                            Return (CRIT) /* \CRIT */
                        }
                    }
                    Else
                    {
                        ISSC = Zero
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                If ((GESF == 0x13))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \SUCC */
                }

                GESF = Zero
                Return (SUCC) /* \SUCC */
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0x8C), 
                CDCT,   10, 
                Offset (0x8E), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            Name (M512, 0x04)
            Name (M1GB, 0x08)
            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If ((CSTS > 0x02))
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (OSYS, 0, NotSerialized)
            {
                Local1 = 0x07D0
                If (CondRefOf (_OSI, Local0))
                {
                    If (_OSI ("Linux"))
                    {
                        Local1 = One
                    }

                    If (_OSI ("Windows 2001"))
                    {
                        Local1 = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        Local1 = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        Local1 = 0x07D2
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        Local1 = 0x07D6
                    }
                }

                Return (Local1)
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If (((CHPD == Zero) && (Arg1 == Zero)))
                {
                    If (((OSYS () > 0x07D0) || (OSYS () < 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80) // Status Change
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                CLID = Arg0
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If ((Local0 == One))
                        {
                            If ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            ElseIf ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                PFIT = One
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            If ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            ElseIf ((Local1 & One))
                            {
                                PFIT = One
                            }
                            Else
                            {
                                PFIT = 0x06
                            }
                        }

                        If ((Local0 == 0x08))
                        {
                            If ((Local1 & One))
                            {
                                PFIT = One
                            }
                            ElseIf ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                PFIT = 0x08
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                ElseIf ((Arg0 == One))
                {
                    BCLP = ((Arg1 * 0xFF) / 0x64)
                    BCLP |= 0x80000000
                    ASLC = 0x02
                }
                ElseIf ((Arg0 == Zero))
                {
                    ALSI = Arg1
                    ASLC = One
                }
                Else
                {
                    Return (One)
                }

                LBPC = Zero
                Return (Zero)
            }

            Scope (\_GPE)
            {
                Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                {
                    \_SB.PCI0.GFX0.GSCI ()
                }
            }

            Name (OPBS, 0xFFFFFF00)
            Method (OPTS, 1, NotSerialized)
            {
                If ((Arg0 == 0x03))
                {
                    OPBS = ASLS /* \_SB_.PCI0.GFX0.ASLS */
                }
            }

            Method (OWAK, 1, NotSerialized)
            {
                If ((Arg0 == 0x03))
                {
                    ASLS = OPBS /* \_SB_.PCI0.GFX0.OPBS */
                    GSES = One
                }
            }
        }
    }

    Scope (_SB.PCI0.GFX0)
    {
        Name (DSEN, Zero)
        Name (NDID, 0x04)
        Name (DID1, 0x80000100)
        Name (DID2, 0x80000240)
        Name (DID3, 0x80000320)
        Name (DID4, 0x80000410)
        OperationRegion (IGDC, PCI_Config, 0x54, 0x04)
        Field (IGDC, ByteAcc, NoLock, Preserve)
        {
                ,   3, 
            IGEF,   1
        }

        OperationRegion (IGD2, PCI_Config, 0xF4, 0x04)
        Field (IGD2, ByteAcc, NoLock, Preserve)
        {
            CSTE,   16, 
            NSTE,   16
        }

        OperationRegion (OPR0, SystemIO, 0x80, One)
        Field (OPR0, ByteAcc, NoLock, Preserve)
        {
            DP80,   8
        }

        OperationRegion (OPR1, SystemIO, 0xB2, One)
        Field (OPR1, ByteAcc, NoLock, Preserve)
        {
            DPB2,   8
        }

        OperationRegion (OPR2, SystemIO, 0xB3, One)
        Field (OPR2, ByteAcc, NoLock, Preserve)
        {
            DPB3,   8
        }

        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            DSEN = (Arg0 & 0x03)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            DPB3 = 0x40
            DPB2 = 0x77
            Sleep (0xFA)
            If ((NDID == One))
            {
                Name (TMP1, Package (0x01)
                {
                    Ones
                })
                TMP1 [Zero] = (0x00010000 | DID1)
                Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
            }

            If ((NDID == 0x02))
            {
                Name (TMP2, Package (0x02)
                {
                    Ones, 
                    Ones
                })
                TMP2 [Zero] = (0x00010000 | DID1)
                TMP2 [One] = (0x00010000 | DID2)
                Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
            }

            If ((NDID == 0x03))
            {
                Name (TMP3, Package (0x03)
                {
                    Ones, 
                    Ones, 
                    Ones
                })
                TMP3 [Zero] = (0x00010000 | DID1)
                TMP3 [One] = (0x00010000 | DID2)
                TMP3 [0x02] = (0x00010000 | DID3)
                Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
            }

            Name (TMP4, Package (0x04)
            {
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            TMP4 [Zero] = (0x00010000 | DID1)
            TMP4 [One] = (0x00010000 | DID2)
            TMP4 [0x02] = (0x00010000 | DID3)
            TMP4 [0x03] = (0x00010000 | DID4)
            Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return ((0xFFFF & DID1))
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                DPB3 = 0x40
                DPB2 = 0x77
                Sleep (0xFA)
                If ((CSTE & One))
                {
                    Return (0x1F)
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((NSTE & One))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                If (((Arg0 & 0xC0000000) == 0xC0000000))
                {
                    CSTE = NSTE /* \_SB_.PCI0.GFX0.NSTE */
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                DP80 = 0x22
                Return ((0xFFFF & DID2))
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                DPB3 = 0x40
                DPB2 = 0x77
                Sleep (0xFA)
                If ((CSTE & 0x02))
                {
                    Return (0x1F)
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((NSTE & 0x02))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                If (((Arg0 & 0xC0000000) == 0xC0000000))
                {
                    CSTE = NSTE /* \_SB_.PCI0.GFX0.NSTE */
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                DP80 = 0x33
                Return ((0xFFFF & DID3))
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                DPB3 = 0x40
                DPB2 = 0x77
                Sleep (0xFA)
                If ((CSTE & 0x04))
                {
                    Return (0x1F)
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((NSTE & 0x04))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                If (((Arg0 & 0xC0000000) == 0xC0000000))
                {
                    CSTE = NSTE /* \_SB_.PCI0.GFX0.NSTE */
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                DP80 = 0x44
                Return ((0xFFFF & DID4))
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                DPB3 = 0x40
                DPB2 = 0x77
                Sleep (0xFA)
                If ((CSTE & 0x08))
                {
                    Return (0x1F)
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
                Return (0x1D)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If ((NSTE & 0x08))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                If (((Arg0 & 0xC0000000) == 0xC0000000))
                {
                    CSTE = NSTE /* \_SB_.PCI0.GFX0.NSTE */
                }

                DP80 = CSTE /* \_SB_.PCI0.GFX0.CSTE */
            }
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y12, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y13, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y14, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (CRS, \_SB.PCI0._Y12._MIN, MIN5)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y12._MAX, MAX5)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y12._LEN, LEN5)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y13._MIN, MIN6)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y13._MAX, MAX6)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y13._LEN, LEN6)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y14._MIN, MIN7)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y14._MAX, MAX7)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y14._LEN, LEN7)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = MG1L /* \MG1L */
                If (Local0)
                {
                    MIN5 = MG1B /* \MG1B */
                    LEN5 = MG1L /* \MG1L */
                    MAX5 = (MIN5 + Local0--)
                }

                MIN6 = MG2B /* \MG2B */
                LEN6 = MG2L /* \MG2L */
                Local0 = MG2L /* \MG2L */
                MAX6 = (MIN6 + Local0--)
                MIN7 = MG3B /* \MG3B */
                LEN7 = MG3L /* \MG3L */
                Local0 = MG3L /* \MG3L */
                MAX7 = (MIN7 + Local0--)
                Return (CRS) /* \_SB_.PCI0.CRS_ */
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        DBG8 = Arg0
        PTS (Arg0)
        WAKP [Zero] = Zero
        WAKP [One] = Zero
        If (((Arg0 == 0x04) && (OSFL () == 0x02)))
        {
            Sleep (0x0BB8)
        }

        WSSB = ASSB /* \ASSB */
        WOTB = AOTB /* \AOTB */
        WAXB = AAXB /* \AAXB */
        ASSB = Arg0
        AOTB = OSFL ()
        OSTP = OSYS ()
        AAXB = Zero
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        WAK (Arg0)
        If (ASSB)
        {
            ASSB = WSSB /* \WSSB */
            AOTB = WOTB /* \WOTB */
            AAXB = WAXB /* \WAXB */
        }

        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }

        Return (WAKP) /* \WAKP */
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.NPTS (Arg0)
            \_SB.PCI0.SBRG.SPTS (Arg0)
            \_SB.PCI0.GFX0.OPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.SBRG.SWAK (Arg0)
        \_SB.PCI0.GFX0.OWAK (Arg0)
        \_SB.PCI0.SBRG.EC.MSWK (Arg0)
    }
}

