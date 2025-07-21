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
 *     Length           0x0000DD40 (56640)
 *     Revision         0x02
 *     Checksum         0x7A
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "1025"
 *     Compiler Version 0x01000013 (16777235)
 */
DefinitionBlock ("", "DSDT", 2, "ACRSYS", "ACRPRDCT", 0x00000001)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, UnknownObj)
    External (CFGD, UnknownObj)
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)

    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED1B000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, Zero)
    Name (SHPC, One)
    Name (PEPM, Zero)
    Name (PEER, Zero)
    Name (PECS, Zero)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (BRF, One)
    Name (BPH, 0x02)
    Name (BLC, 0x03)
    Name (BRFS, 0x04)
    Name (BPHS, 0x05)
    Name (BLCT, 0x06)
    Name (BRF4, 0x07)
    Name (BEP, 0x08)
    Name (BBF, 0x09)
    Name (BOF, 0x0A)
    Name (BPT, 0x0B)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (SMBL, 0x10)
    OperationRegion (GNVS, SystemMemory, 0x9F7AE018, 0x0000FD78)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x7A), 
        MORD,   8, 
        TPRM,   8, 
        PPRR,   32, 
        PPRO,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SDGV,   8, 
        SDDV,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATPM,   8, 
        PTPM,   8, 
        ATPT,   8, 
        PTPT,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIE,   8, 
        TSOD,   8, 
        ATPP,   8, 
        PTPP,   8, 
        PFLV,   8, 
        BREV,   8, 
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8, 
        IMON,   8, 
        SROM,   32, 
        VROM,   516096, 
        S3DS,   8, 
        PMEE,   8
    }

    OperationRegion (OGNS, SystemMemory, 0x9F7ADF98, 0x00000038)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        DI00,   320, 
        TPAD,   8, 
        DPRT,   8, 
        DVGA,   8, 
        D3GT,   8, 
        CCDT,   8
    }

    Mutex (PSMX, 0x00)
    Method (IHWM, 2, NotSerialized)
    {
        Acquire (PSMX, 0xFFFF)
        PRM0 = Arg0
        DI00 = Arg1
        APMC = 0xD1
        Local0 = DI00 /* \DI00 */
        Release (PSMX)
        Return (Local0)
    }

    Name (FEBC, Buffer (0x08)
    {
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
    })
    OperationRegion (MBOX, SystemMemory, 0x9F7BEA98, 0x00000321)
    Field (MBOX, AnyAcc, NoLock, Preserve)
    {
        PCI1,   8, 
        PCI2,   8, 
        PCI3,   8, 
        PCI4,   8, 
        PCI5,   8, 
        PCI6,   8, 
        PCI7,   8, 
        PCI8,   8, 
        NLCK,   8, 
        ZIPE,   8, 
        COA1,   8, 
        CAIO,   8, 
        CAIP,   8, 
        CAMD,   8, 
        CADA,   8, 
        COB1,   8, 
        CBIO,   8, 
        CBIP,   8, 
        CBMD,   8, 
        CBDA,   8, 
        FHSD,   8, 
        COMC,   8, 
        CCIO,   8, 
        CCIP,   8, 
        CCMD,   8, 
        CCDA,   8, 
        COMD,   8, 
        CDIO,   8, 
        CDIP,   8, 
        CDMD,   8, 
        CDDA,   8, 
        LPT1,   8, 
        L1IO,   8, 
        L1IP,   8, 
        L1MD,   8, 
        L1DA,   8, 
        LPT2,   8, 
        L2IO,   8, 
        L2IP,   8, 
        L2MD,   8, 
        L2DA,   8, 
        LPT3,   8, 
        L3IO,   8, 
        L3IP,   8, 
        L3MD,   8, 
        L3DA,   8, 
        FDDC,   8, 
        FDWP,   8, 
        HGMP,   8, 
        LGMP,   8, 
        MIDI,   8, 
        AZLA,   8, 
        AUDO,   8, 
        MODM,   8, 
        IDEC,   8, 
        SSED,   8, 
        PACT,   8, 
        SCFG,   8, 
        AMOD,   8, 
        IMOD,   8, 
        LCFG,   8, 
        IDLY,   8, 
        PMTP,   8, 
        PM32,   8, 
        PMBM,   8, 
        PMTM,   8, 
        PSTP,   8, 
        PSIO,   8, 
        PSBM,   8, 
        PSTM,   8, 
        IDE0,   8, 
        IDE1,   8, 
        IDE2,   8, 
        IDE3,   8, 
        IDE4,   8, 
        IDE5,   8, 
        IDE6,   8, 
        IDE7,   8, 
        HIUB,   8, 
        LUBS,   8, 
        PLYT,   8, 
        EDCG,   8, 
        SDFY,   8, 
        SDTC,   8, 
        SDRP,   8, 
        SDCL,   8, 
        SDRC,   8, 
        SDRE,   8, 
        FC2L,   8, 
        FC3L,   8, 
        FCS4,   8, 
        APIM,   8, 
        HPTS,   8, 
        HPTA,   8, 
        EMAS,   8, 
        VGAO,   8, 
        SOFF,   8, 
        KBPO,   8, 
        MSPO,   8, 
        USBB,   8, 
        EVTL,   8, 
        SYBE,   8, 
        ETLC,   8, 
        ACPV,   8, 
        TPMD,   8, 
        TPMO,   8, 
        TPMC,   8, 
        TPMM,   8, 
        TPCC,   8, 
        TPLC,   8, 
        TPLR,   32, 
        QBOT,   8, 
        BOTQ,   8, 
        PBOT,   8, 
        M256,   8, 
        PEGF,   8, 
        OSY1,   16, 
        BMTP,   8, 
        BNPT,   8, 
        LNMT,   8, 
        NBTO,   8, 
        NABD,   8, 
        NEBD,   8, 
        NLBD,   8, 
        DFBT,   16, 
        NPSP,   16, 
        LANG,   8, 
        UACL,   8, 
        SUPS,   8, 
        DVET,   8, 
        S3RS,   8, 
        DAS1,   8, 
        DAS3,   8, 
        WKPM,   8, 
        WKMD,   8, 
        WKS5,   8, 
        HOUR,   8, 
        MINS,   8, 
        SECS,   8, 
        DOFM,   8, 
        NBTV,   64, 
        BTOD,   64, 
        SPVP,   16, 
        POPW,   16, 
        USPW,   16, 
        HDPW,   16, 
        SAHP,   16, 
        SAHF,   8, 
        SUVF,   8, 
        USRF,   8, 
        UMPW,   8, 
        SMHP,   16, 
        SAMP,   16, 
        SAMF,   8, 
        SPFA,   8, 
        SPFB,   8, 
        SPFC,   8, 
        SPFD,   8, 
        SPFE,   8, 
        SPFF,   8, 
        SPFG,   8, 
        SPFH,   8, 
        SPFI,   8, 
        SPFJ,   8, 
        SPFK,   8, 
        SPFL,   8, 
        SPFM,   8, 
        SPFN,   8, 
        SPFO,   8, 
        SPFP,   8, 
        SPFQ,   8, 
        SPFR,   8, 
        SPFS,   8, 
        SPFT,   8, 
        SPFU,   8, 
        SPFV,   8, 
        SPFW,   8, 
        SPFX,   8, 
        SPFY,   8, 
        SPFZ,   8, 
        SPF0,   8, 
        SPF1,   8, 
        SPF2,   8, 
        SPF3,   8, 
        SPF4,   8, 
        SPF5,   8, 
        KRSV,   136, 
        LANE,   8, 
        AORS,   8, 
        P0HP,   8, 
        P1HP,   8, 
        P2HP,   8, 
        P3HP,   8, 
        P4HP,   8, 
        P5HP,   8, 
        P0IL,   8, 
        P1IL,   8, 
        P2IL,   8, 
        D2F1,   8, 
        DVPA,   8, 
        DTGM,   8, 
        Offset (0xF5), 
        Offset (0xF6), 
        BOTT,   8, 
        PANT,   8, 
        TVTP,   8, 
        U201,   8, 
        U202,   8, 
        U111,   8, 
        U112,   8, 
        U113,   8, 
        U114,   8, 
        U115,   8, 
        UPPC,   8, 
        UP00,   8, 
        UP01,   8, 
        UP02,   8, 
        UP03,   8, 
        UP04,   8, 
        UP05,   8, 
        UP06,   8, 
        UP07,   8, 
        UP08,   8, 
        UP09,   8, 
        UP10,   8, 
        UP11,   8, 
        P80R,   8, 
        WDOG,   8, 
        WDTO,   16, 
        WDTB,   16, 
        MASF,   8, 
        MAMT,   8, 
        ABXP,   8, 
        SPIL,   8, 
        PWDW,   8, 
        HETO,   8, 
        AWTR,   16, 
        EOPT,   8, 
        ASFB,   8, 
        MBTX,   8, 
        IDER,   8, 
        SOLE,   8, 
        UCME,   8, 
        MEDM,   8, 
        PPDA,   8, 
        PPCG,   8, 
        PPBV,   8, 
        PPV1,   8, 
        PPPV,   8, 
        PPMV,   8, 
        PRE0,   8, 
        PRE1,   8, 
        PRE2,   8, 
        PRE3,   8, 
        PRE4,   8, 
        PRE5,   8, 
        PRE6,   8, 
        PRE7,   8, 
        PRA0,   8, 
        PRA1,   8, 
        PRA2,   8, 
        PRA3,   8, 
        PRA4,   8, 
        PRA5,   8, 
        PRA6,   8, 
        PRA7,   8, 
        PRU0,   8, 
        PRU1,   8, 
        PRU2,   8, 
        PRU3,   8, 
        PRU4,   8, 
        PRU5,   8, 
        PRU6,   8, 
        PRU7,   8, 
        PRF0,   8, 
        PRF1,   8, 
        PRF2,   8, 
        PRF3,   8, 
        PRF4,   8, 
        PRF5,   8, 
        PRF6,   8, 
        PRF7,   8, 
        PRN0,   8, 
        PRN1,   8, 
        PRN2,   8, 
        PRN3,   8, 
        PRN4,   8, 
        PRN5,   8, 
        PRN6,   8, 
        PRN7,   8, 
        PRC0,   8, 
        PRC1,   8, 
        PRC2,   8, 
        PRC3,   8, 
        PRC4,   8, 
        PRC5,   8, 
        PRC6,   8, 
        PRC7,   8, 
        CTD0,   8, 
        CTD1,   8, 
        CTD2,   8, 
        CTD3,   8, 
        CTD4,   8, 
        CTD5,   8, 
        CTD6,   8, 
        CTD7,   8, 
        PIE0,   8, 
        PIE1,   8, 
        PIE2,   8, 
        PIE3,   8, 
        PIE4,   8, 
        PIE5,   8, 
        PIE6,   8, 
        PIE7,   8, 
        SFE0,   8, 
        SFE1,   8, 
        SFE2,   8, 
        SFE3,   8, 
        SFE4,   8, 
        SFE5,   8, 
        SFE6,   8, 
        SFE7,   8, 
        SNE0,   8, 
        SNE1,   8, 
        SNE2,   8, 
        SNE3,   8, 
        SNE4,   8, 
        SNE5,   8, 
        SNE6,   8, 
        SNE7,   8, 
        SCE0,   8, 
        SCE1,   8, 
        SCE2,   8, 
        SCE3,   8, 
        SCE4,   8, 
        SCE5,   8, 
        SCE6,   8, 
        SCE7,   8, 
        PPS0,   8, 
        PPS1,   8, 
        PPS2,   8, 
        PPS3,   8, 
        PPS4,   8, 
        PPS5,   8, 
        PPS6,   8, 
        PPS7,   8, 
        PHP0,   8, 
        PHP1,   8, 
        PHP2,   8, 
        PHP3,   8, 
        PHP4,   8, 
        PHP5,   8, 
        PHP6,   8, 
        PHP7,   8, 
        PEGA,   8, 
        PGAA,   8, 
        PGL0,   8, 
        PL0A,   8, 
        PGL1,   8, 
        Offset (0x196), 
        PAV1,   8, 
        ISTC,   8, 
        TRML,   8, 
        ATHF,   8, 
        PTTP,   8, 
        XDMD,   8, 
        PCRR,   8, 
        PROH,   8, 
        TUBM,   8, 
        TSTE,   8, 
        BPST,   8, 
        VTST,   8, 
        CSTS,   8, 
        ENCS,   8, 
        ENC6,   8, 
        CMPE,   8, 
        MDST,   8, 
        PEXC,   8, 
        TXTS,   8, 
        VTDE,   8, 
        CART,   8, 
        CATT,   8, 
        STBE,   8, 
        PEBE,   8, 
        PCBE,   8, 
        EHBE,   8, 
        UHBE,   8, 
        HABE,   8, 
        ERS2,   8, 
        GLPM,   8, 
        GRTT,   8, 
        CRID,   8, 
        ATLF,   8, 
        PTC1,   8, 
        PTC2,   8, 
        PTSP,   8, 
        CTTP,   8, 
        HTSP,   8, 
        U116,   8, 
        U117,   8, 
        UP12,   8, 
        UP13,   8, 
        DALC,   8, 
        ENC7,   8, 
        CSIT,   8, 
        CSIF,   8, 
        CSL1,   8, 
        MIRP,   8, 
        MEMF,   8, 
        CHIL,   8, 
        RKIL,   8, 
        QPIF,   8, 
        DLMF,   8, 
        GPPS,   8, 
        AGLP,   8, 
        EIPS,   8, 
        MTUB,   8, 
        CPEC,   8, 
        IPSP,   8, 
        CTLT,   8, 
        CTLV,   16, 
        MPLT,   8, 
        MPLV,   16, 
        PPLT,   8, 
        PPLV,   16, 
        CPLT,   8, 
        CPLV,   16, 
        RTIF,   8, 
        DPPM,   8, 
        RELT,   8, 
        INTR,   8, 
        PATD,   8, 
        COHE,   8, 
        CTBO,   8, 
        FBOT,   8, 
        CTRD,   8, 
        CERD,   8, 
        MTRD,   8, 
        PTRD,   8, 
        ALEL,   8, 
        CALE,   8, 
        MALE,   8, 
        PALE,   8, 
        DALE,   8, 
        TODM,   8, 
        D1TR,   8, 
        D2TR,   8, 
        D3TR,   8, 
        D4TR,   8, 
        LFPC,   8, 
        RMHM,   8, 
        METR,   8, 
        ECML,   8, 
        MPEC,   8, 
        TRTS,   8, 
        M30A,   64, 
        M30S,   16, 
        PPOL,   8, 
        HPSP,   8, 
        TVCC,   8, 
        PFLG,   8, 
        HYCM,   8, 
        HBDP,   8, 
        TVFC,   8, 
        DPMD,   8, 
        CACK,   8, 
        AZHI,   8, 
        IMEP,   8, 
        IMFE,   8, 
        SAG3,   8, 
        CRSV,   16, 
        WMDT,   16, 
        WPWT,   16, 
        PSW0,   8, 
        PSW1,   8, 
        D2DF,   8, 
        F12F,   8, 
        ETNS,   8, 
        ORSV,   488, 
        DRSV,   800, 
        MEFD,   8, 
        FWVB,   8, 
        USBP,   8, 
        FWPR,   8, 
        MELF,   8, 
        MEFQ,   8, 
        HP0S,   8, 
        HP1S,   8, 
        HP2S,   8, 
        HP3S,   8, 
        HP4S,   8, 
        HP5S,   8, 
        ENIF,   8, 
        PEG1,   8, 
        CPMD,   8, 
        TBMS,   8, 
        HTFG,   8, 
        PRSV,   664, 
        DISC,   8
    }

    OperationRegion (SMIO, SystemIO, 0xB2, 0x02)
    Field (SMIO, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Method (OSMI, 1, NotSerialized)
    {
        APMD = Arg0
        APMC = 0xB2
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
    }

    Name (CPTY, Zero)
    Scope (_SB)
    {
        Name (PR00, Package (0x2B)
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
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
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
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
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
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
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
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x2B)
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
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
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
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
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
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
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
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
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
        Name (AR02, Package (0x04)
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
        Name (PR0A, Package (0x04)
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
        Name (AR0A, Package (0x04)
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
        Name (PR0B, Package (0x04)
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
        Name (AR0B, Package (0x04)
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
        Name (PR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR0C, Package (0x04)
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
        Name (AR0C, Package (0x04)
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
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
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

            Device (AZAL)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDCS, PCI_Config, 0x54, 0x04)
                Field (HDCS, DWordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKMD == One))
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            0x03
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            Zero
                        })
                    }
                }
            }

            OperationRegion (GPIO, SystemIO, 0x0500, 0x40)
            Field (GPIO, ByteAcc, NoLock, Preserve)
            {
                Offset (0x0C), 
                GP00,   1, 
                GP01,   1, 
                GP02,   1, 
                GP03,   1, 
                GP04,   1, 
                GP05,   1, 
                GP06,   1, 
                GP07,   1, 
                GP08,   1, 
                GP09,   1, 
                GP10,   1, 
                GP11,   1, 
                GP12,   1, 
                GP13,   1, 
                GP14,   1, 
                GP15,   1, 
                GP16,   1, 
                GP17,   1, 
                GP18,   1, 
                GP19,   1, 
                GP20,   1, 
                GP21,   1, 
                GP22,   1, 
                GP23,   1, 
                GP24,   1, 
                GP25,   1, 
                GP26,   1, 
                GP27,   1, 
                GP28,   1, 
                GP29,   1, 
                GP30,   1, 
                GP31,   1, 
                Offset (0x2C), 
                    ,   6, 
                HDME,   1, 
                Offset (0x38), 
                GP32,   1, 
                GP33,   1, 
                GP34,   1, 
                GP35,   1, 
                GP36,   1, 
                GP37,   1, 
                GP38,   1, 
                GP39,   1, 
                GP40,   1, 
                GP41,   1, 
                GP42,   1, 
                GP43,   1, 
                GP44,   1, 
                GP45,   1, 
                GP46,   1, 
                GP47,   1, 
                GP48,   1, 
                GP49,   1, 
                GP50,   1, 
                GP51,   1, 
                GP52,   1, 
                GP53,   1, 
                GP54,   1, 
                GP55,   1, 
                GP56,   1, 
                GP57,   1, 
                GP58,   1, 
                GP59,   1, 
                GP60,   1, 
                GP61,   1, 
                GP62,   1, 
                GP63,   1
            }

            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x08), 
                MHEN,   1, 
                    ,   13, 
                MHBR,   18, 
                Offset (0x10), 
                IIEN,   1, 
                    ,   11, 
                DIBI,   20, 
                    ,   1, 
                PEGA,   1, 
                    ,   1, 
                IGDE,   1, 
                Offset (0x28), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x30), 
                IPEN,   1, 
                    ,   11, 
                IPBR,   20, 
                Offset (0x62), 
                TUUD,   16, 
                Offset (0x70), 
                    ,   4, 
                TLUD,   12, 
                Offset (0x89), 
                    ,   3, 
                GTSE,   1, 
                Offset (0x8A)
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
                Offset (0xD40), 
                ADVE,   1, 
                    ,   11, 
                ADVT,   20, 
                Offset (0x101E), 
                T0IS,   16, 
                Offset (0x105E), 
                T1IS,   16, 
                Offset (0x10EF), 
                ESCS,   8
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FE,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x00FF,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
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
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (^^CPBG.IMCH.PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y00._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((^^CPBG.IMCH.PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y00._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (^^CPBG.IMCH.PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((^^CPBG.IMCH.PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (^^CPBG.IMCH.PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((^^CPBG.IMCH.PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (^^CPBG.IMCH.PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((^^CPBG.IMCH.PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (^^CPBG.IMCH.PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((^^CPBG.IMCH.PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (^^CPBG.IMCH.PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((^^CPBG.IMCH.PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (^^CPBG.IMCH.PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((^^CPBG.IMCH.PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (^^CPBG.IMCH.PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((^^CPBG.IMCH.PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (^^CPBG.IMCH.PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((^^CPBG.IMCH.PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (^^CPBG.IMCH.PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((^^CPBG.IMCH.PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (^^CPBG.IMCH.PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((^^CPBG.IMCH.PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (^^CPBG.IMCH.PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((^^CPBG.IMCH.PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (^^CPBG.IMCH.PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((^^CPBG.IMCH.PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, M1LN)  // _LEN: Length
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    If ((PNHM >= 0x000106E1))
                    {
                        Local0 = ^IO10.TOLM /* \_SB_.PCI0.IO10.TOLM */
                        M1MN = (Local0++ << 0x1A)
                    }
                    Else
                    {
                        Local0 = ^IIO0.TOLM /* \_SB_.PCI0.IIO0.TOLM */
                        M1MN = (Local0++ << 0x1A)
                    }
                }
                Else
                {
                    M1MN = (TLUD << 0x14)
                }

                M1LN = ((M1MX - M1MN) + One)
                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & 0x02))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
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
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Name (SLWK, Zero)
            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                OperationRegion (UMAP, PCI_Config, Zero, 0x10)
                Field (UMAP, AnyAcc, NoLock, WriteAsZeros)
                {
                    VID,    16
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    DSEN = (Arg0 & 0x07)
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = SLWK /* \_SB_.PCI0.SLWK */
                    If ((_T_0 == Zero))
                    {
                        SLWK = One
                        Local3 = One
                        If ((^^P0P2.VGA.DPMO == 0x05))
                        {
                            ^^P0P2.VGA.BKEY = 0x99
                            Notify (GFX0, 0xD0) // Hardware-Specific
                            Local3 = Zero
                        }

                        If ((^^P0P2.VGA.DPMO == 0x04))
                        {
                            GP53 = One
                        }

                        If ((^^P0P2.VGA.DPMO == One))
                        {
                            GP53 = One
                        }
                    }
                    ElseIf ((_T_0 == 0x53)){}
                    ElseIf ((_T_0 == 0x54)){}
                    ElseIf ((_T_0 == 0xE3))
                    {
                        If ((OSYS >= 0x07D6))
                        {
                            GP53 = One
                        }

                        If ((^^P0P2.VGA.DPMO == 0x04))
                        {
                            Local0 = CMSR (0x3E)
                            If ((Local0 == Zero))
                            {
                                PEGA = Zero
                            }
                        }
                    }
                    ElseIf ((_T_0 == 0xE4))
                    {
                        If ((OSYS >= 0x07D6))
                        {
                            GP53 = One
                            P80H = 0xE0
                        }
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    NDID = 0x04
                    If ((NDID == One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        TMP1 [Zero] = (0x00010000 | DID1)
                        Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                    }

                    If ((NDID == 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP2 [Zero] = (0x00010000 | DID1)
                        TMP2 [One] = (0x00010000 | DID2)
                        Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                    }

                    If ((NDID == 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP3 [Zero] = (0x00010000 | DID1)
                        TMP3 [One] = (0x00010000 | DID2)
                        TMP3 [0x02] = (0x00010000 | DID3)
                        Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                    }

                    If ((NDID == 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP4 [Zero] = DID1 /* \DID1 */
                        TMP4 [One] = DID2 /* \DID2 */
                        TMP4 [0x02] = DID3 /* \DID3 */
                        TMP4 [0x03] = DID4 /* \DID4 */
                        Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                    }

                    If ((NDID > 0x04))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP5 [Zero] = (0x00010000 | DID1)
                        TMP5 [One] = (0x00010000 | DID2)
                        TMP5 [0x02] = (0x00010000 | DID3)
                        TMP5 [0x03] = (0x00010000 | DID4)
                        TMP5 [0x04] = (0x00010000 | DID5)
                        Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID1 == Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID2 == Zero))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID2))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((^^^P0P2.VGA.DPMO == 0x04))
                        {
                            If ((SLWK == 0xE4))
                            {
                                Local0 = CMSR (0x3E)
                                If ((Local0 == Zero))
                                {
                                    PEGA = Zero
                                }
                            }
                        }

                        If ((DID3 == Zero))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID3))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID3 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID3))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }

                    Name (BRTS, Zero)
                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (Package (0x0C)
                        {
                            0x46, 
                            0x28, 
                            0x0A, 
                            0x14, 
                            0x1E, 
                            0x28, 
                            0x32, 
                            0x3C, 
                            0x46, 
                            0x50, 
                            0x5A, 
                            0x64
                        })
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        Divide (Arg0, 0x0A, Local0, Local1)
                        Local1--
                        ^^^LPCB.EC0.BRTS = Local1
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Local0 = ^^^LPCB.EC0.BRTS /* \_SB_.PCI0.LPCB.EC0_.BRTS */
                        Sleep (0x64)
                        Local0 += One
                        Local0 *= 0x0A
                        P80H = 0x64
                        Return (Local0)
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID4 == Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID4))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID4 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID4))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID5 == Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID5 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID5))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD06)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID6 == Zero))
                        {
                            Return (0x06)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID6))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID6 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID6))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID6))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD07)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID7 == Zero))
                        {
                            Return (0x07)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID7))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID7 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID7))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID7))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD08)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((DID8 == Zero))
                        {
                            Return (0x08)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID8))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID8 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID8))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID8))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    NDID++
                    Local0 = (Arg0 & 0x0F0F)
                    Local1 = (0x80000000 | Local0)
                    If ((DIDL == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL2 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL3 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL4 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL5 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL6 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL7 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL8 == Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0xFFFF)
                    If ((CADL == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL2 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL3 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL4 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL5 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL6 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL7 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL8 == Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0xFFFF)
                    If ((NADL == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL2 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL3 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL4 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL5 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL6 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL7 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL8 == Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (CPDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0xFFFF)
                    If ((CPDL == Local0))
                    {
                        Return (One)
                    }

                    If ((CPL2 == Local0))
                    {
                        Return (One)
                    }

                    If ((CPL3 == Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (MXIF, Package (0x04)
                {
                    0x03, 
                    Package (0x02)
                    {
                        0x80010100, 
                        Buffer (0x04)
                        {
                             0x01, 0x03, 0x03, 0x00                           // ....
                        }
                    }, 

                    Package (0x02)
                    {
                        0x80000400, 
                        Buffer (0x04)
                        {
                             0x02, 0x03, 0x03, 0x00                           // ....
                        }
                    }, 

                    Package (0x02)
                    {
                        0x80007330, 
                        Buffer (0x04)
                        {
                             0x04, 0x03, 0x03, 0x03                           // ....
                        }
                    }
                })
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
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB5), 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
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
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
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
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = 0x0679
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            PARM = 0x0240
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            PARM &= 0xEFFF0000
                            PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                            PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            PARM = IPSC /* \IPSC */
                            PARM |= (IPAT << 0x08)
                            PARM += 0x0100
                            PARM |= (LIDS << 0x10)
                            PARM += 0x00010000
                            PARM |= (IBIA << 0x14)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            PARM = ITVF /* \ITVF */
                            PARM |= (ITVM << 0x04)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                            PARM ^= One
                            PARM |= (GMFN << One)
                            PARM |= 0x1800
                            PARM |= (IDMS << 0x11)
                            PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                                0x15) /* \_SB_.PCI0.GFX0.PARM */
                            GESF = One
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            PARM = Zero
                            If (ISSC)
                            {
                                PARM |= 0x03
                            }

                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0B))
                        {
                            PARM = KSV0 /* \KSV0 */
                            GESF = KSV1 /* \KSV1 */
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = Zero
                            PARM = 0x000F87FD
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x03))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            ITVF = (PARM & 0x0F)
                            ITVM = ((PARM & 0xF0) >> 0x04)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            If ((PARM == Zero))
                            {
                                Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                                If ((0x80000000 & Local0))
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x08))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x09))
                        {
                            IBTT = (PARM & 0xFF)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            IPSC = (PARM & 0xFF)
                            If (((PARM >> 0x08) & 0xFF))
                            {
                                IPAT = ((PARM >> 0x08) & 0xFF)
                                IPAT--
                            }

                            IBIA = ((PARM >> 0x14) & 0x07)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0B))
                        {
                            IF1E = ((PARM >> One) & One)
                            If ((PARM & 0x0001E000))
                            {
                                IDMS = ((PARM >> 0x0D) & 0x0F)
                            }
                            Else
                            {
                                IDMS = ((PARM >> 0x11) & 0x0F)
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x10))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x11))
                        {
                            PARM = (LIDS << 0x08)
                            PARM += 0x0100
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
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
                                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                                }
                            }
                            Else
                            {
                                ISSC = Zero
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x13))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x14))
                        {
                            PAVP = (PARM & 0x0F)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GEFC == 0x04))
                    {
                        GXFC = GBDA ()
                    }

                    If ((GEFC == 0x06))
                    {
                        GXFC = SBCB ()
                    }

                    GEFC = Zero
                    SCIS = One
                    GSSE = Zero
                    SCIE = Zero
                    Return (Zero)
                }

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
                        If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (GFX0, Arg1)
                        }
                    }

                    If (CondRefOf (HNOT))
                    {
                        HNOT (Arg0)
                    }
                    Else
                    {
                        Notify (GFX0, 0x80) // Status Change
                    }

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

                    ASLE = One
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If ((OVER != Zero))
                    {
                        Return (!GSMI)
                    }

                    Return (Zero)
                }

                Name (ATPB, Buffer (0x0100){})
                Name (DSID, 0xFFFFFFFF)
                Name (HSID, 0xFFFFFFFF)
                Method (XTPX, 2, Serialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Return (PX00 ())
                    }

                    If ((Arg0 == One))
                    {
                        Return (PX01 ())
                    }

                    If ((Arg0 == 0x02))
                    {
                        Return (PX02 (DerefOf (Arg1 [0x02])))
                    }

                    If ((Arg0 == 0x03))
                    {
                        Return (PX03 (DerefOf (Arg1 [0x02])))
                    }

                    If ((Arg0 == 0x05))
                    {
                        Return (PX05 (DerefOf (Arg1 [0x02])))
                    }

                    If ((Arg0 == 0x06))
                    {
                        Return (PX06 (DerefOf (Arg1 [0x02])))
                    }

                    CreateWordField (ATPB, Zero, SSZE)
                    CreateWordField (ATPB, 0x02, VERN)
                    CreateDWordField (ATPB, 0x04, SFUN)
                    SSZE = Zero
                    VERN = Zero
                    SFUN = Zero
                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX00, 0, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateWordField (ATPB, 0x02, VERN)
                    CreateDWordField (ATPB, 0x04, SFUN)
                    SSZE = 0x08
                    VERN = One
                    SFUN = 0x07
                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX01, 0, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateDWordField (ATPB, 0x02, VMSK)
                    CreateDWordField (ATPB, 0x06, FLGS)
                    SSZE = 0x0A
                    VMSK = 0x0F
                    FLGS = 0x0B
                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX02, 1, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateByteField (ATPB, 0x02, PWST)
                    SSZE = 0x03
                    PWST = (Arg0 & One)
                    If (PWST)
                    {
                        PEGA = One
                        ^^P0P2.VGA.XE18 = 0x00010100
                        ^^P0P2.VGA.XE04 = ^^P0P2.VGA.XB04 /* \_SB_.PCI0.P0P2.VGA_.XB04 */
                        ^^P0P2.VGA.XE0C = ^^P0P2.VGA.XB0C /* \_SB_.PCI0.P0P2.VGA_.XB0C */
                        ^^P0P2.VGA.XE3C = ^^P0P2.VGA.XB3C /* \_SB_.PCI0.P0P2.VGA_.XB3C */
                        ^^P0P2.VGA.XRST = Zero
                        IGDS = Zero
                        GP16 = Zero
                        GP36 = Zero
                        Sleep (0x64)
                        GP36 = One
                        Sleep (0x64)
                        GP16 = One
                        Sleep (0x64)
                        ^^P0P2.VGA.OX16 ()
                        Sleep (0x64)
                        GP01 = Zero
                        ^^P0P2.VGA.SVID = 0x1025
                        ^^P0P2.VGA.SSID = 0x0488
                        ^^P0P2.VGA1.SVID = 0x1025
                        ^^P0P2.VGA1.SSID = 0x0488
                        ^^P0P2.VGA.D0LX = 0x43
                        ^^P0P2.VGA1.D1LX = 0x43
                        ^^P0P2.VGA.X030 = Zero
                        ^^P0P2.VGA.X034 = 0x50
                        ^^P0P2.VGA.X038 = Zero
                        ^^P0P2.VGA.X03C = 0x0110
                    }
                    Else
                    {
                        IGDS = One
                        ^^P0P2.VGA.FX16 ()
                        GP16 = Zero
                        GP36 = Zero
                        GP01 = One
                    }

                    Sleep (0x03E8)
                    Notify (P0P2, Zero) // Bus Check
                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX03, 1, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateWordField (ATPB, 0x02, DPSW)
                    SSZE = 0x04
                    DPSW = (Arg0 & One)
                    If (DPSW)
                    {
                        GP52 = Zero
                        GP01 = Zero
                        GP53 = One
                        ^^LPCB.EC0.DSPM = Zero
                    }
                    Else
                    {
                        GP52 = One
                        GP01 = One
                        GP53 = One
                        ^^LPCB.EC0.DSPM = One
                        ^^LPCB.EC0.SKTB = Zero
                        ^^LPCB.EC0.SKTA = Zero
                    }

                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX05, 1, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateWordField (ATPB, 0x02, DPSS)
                    SSZE = Zero
                    DPSS = (Arg0 & One)
                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Method (PX06, 1, NotSerialized)
                {
                    CreateWordField (ATPB, Zero, SSZE)
                    CreateWordField (ATPB, 0x02, DPED)
                    SSZE = Zero
                    DPED = (Arg0 & One)
                    CMSW (0x3E, DPED)
                    If ((^^WMID.BAEF == Zero))
                    {
                        If ((^^P0P2.VGA.BKEY == One))
                        {
                            If ((DPED == Zero))
                            {
                                ^^LPCB.EC0.BPWN = One
                            }
                            Else
                            {
                                ^^LPCB.EC0.BPWN = Zero
                            }
                        }
                    }

                    ^^P0P2.VGA.BKEY = Zero
                    If ((DPED == Zero))
                    {
                        PEGA = Zero
                    }

                    Return (ATPB) /* \_SB_.PCI0.GFX0.ATPB */
                }

                Name (TVGA, Buffer (0xFC00)
                {
                     0x00                                             // .
                })
                Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
                {
                    TVGA = VROM /* \VROM */
                    Return (TVGA) /* \_SB_.PCI0.GFX0.TVGA */
                }

                Method (ATRM, 2, Serialized)
                {
                    Local0 = (Arg0 + Arg1)
                    If ((Local0 <= SROM))
                    {
                        Local1 = (Arg1 * 0x08)
                        Local2 = (Arg0 * 0x08)
                        TVGA = VROM /* \VROM */
                        CreateField (TVGA, Local2, Local1, TEMP)
                        Name (RETB, Buffer (Arg1){})
                        RETB = TEMP /* \_SB_.PCI0.GFX0.ATRM.TEMP */
                        Return (RETB) /* \_SB_.PCI0.GFX0.ATRM.RETB */
                    }
                    ElseIf ((Arg0 < SROM))
                    {
                        Local3 = (SROM - Arg0)
                        Local1 = (Local3 * 0x08)
                        Local2 = (Arg0 * 0x08)
                        TVGA = VROM /* \VROM */
                        CreateField (TVGA, Local2, Local1, TEM)
                        Name (RETC, Buffer (Local3){})
                        RETC = TEM /* \_SB_.PCI0.GFX0.ATRM.TEM_ */
                        Return (RETC) /* \_SB_.PCI0.GFX0.ATRM.RETC */
                    }
                    Else
                    {
                        Name (RETD, Buffer (One){})
                        Return (RETD) /* \_SB_.PCI0.GFX0.ATRM.RETD */
                    }
                }

                Name (ATIB, Buffer (0x0100){})
                Method (ATIF, 2, Serialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Return (AF00 ())
                    }

                    If ((Arg0 == One))
                    {
                        Return (AF01 ())
                    }

                    If ((Arg0 == 0x02))
                    {
                        Return (AF02 ())
                    }

                    If ((Arg0 == 0x03))
                    {
                        Return (AF03 (DerefOf (Arg1 [0x02]), DerefOf (Arg1 [0x04])))
                    }
                    Else
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        SSZE = Zero
                        VERN = Zero
                        NMSK = Zero
                        SFUN = Zero
                        Return (ATIB) /* \_SB_.PCI0.GFX0.ATIB */
                    }
                }

                Method (AF00, 0, NotSerialized)
                {
                    CreateWordField (ATIB, Zero, SSZE)
                    CreateWordField (ATIB, 0x02, VERN)
                    CreateDWordField (ATIB, 0x04, NMSK)
                    CreateDWordField (ATIB, 0x08, SFUN)
                    SSZE = 0x0C
                    VERN = One
                    NMSK = 0x51
                    NMSF = 0x51
                    SFUN = 0x07
                    Return (ATIB) /* \_SB_.PCI0.GFX0.ATIB */
                }

                Method (AF01, 0, NotSerialized)
                {
                    CreateWordField (ATIB, Zero, SSZE)
                    CreateDWordField (ATIB, 0x02, VMSK)
                    CreateDWordField (ATIB, 0x06, FLGS)
                    SSZE = 0x0A
                    VMSK = 0x03
                    FLGS = One
                    Return (ATIB) /* \_SB_.PCI0.GFX0.ATIB */
                }

                Name (PSBR, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (SEXM, Zero)
                Name (STHG, Zero)
                Name (STHI, Zero)
                Name (SFPG, Zero)
                Name (SFPI, Zero)
                Name (SSPS, Zero)
                Name (SSDM, 0x0A)
                Name (SCDY, Zero)
                Name (NMSF, Zero)
                Name (SACC, Buffer (0x03)
                {
                     0x01, 0x02, 0x03                                 // ...
                })
                Name (SACH, Buffer (0x03)
                {
                     0x01, 0x08, 0x09                                 // ...
                })
                Name (SACT, Buffer (0x05)
                {
                     0x01, 0x02, 0x08, 0x03, 0x09                     // .....
                })
                Method (AF02, 0, NotSerialized)
                {
                    CreateBitField (PSBR, Zero, PDSW)
                    CreateBitField (PSBR, One, PEXM)
                    CreateBitField (PSBR, 0x02, PTHR)
                    CreateBitField (PSBR, 0x03, PFPS)
                    CreateBitField (PSBR, 0x04, PSPS)
                    CreateBitField (PSBR, 0x05, PDCC)
                    CreateBitField (PSBR, 0x06, PDDS)
                    CreateWordField (ATIB, Zero, SSZE)
                    CreateDWordField (ATIB, 0x02, PSBI)
                    CreateByteField (ATIB, 0x06, EXPM)
                    CreateByteField (ATIB, 0x07, THRM)
                    CreateByteField (ATIB, 0x08, THID)
                    CreateByteField (ATIB, 0x09, FPWR)
                    CreateWordField (ATIB, 0x0A, FPID)
                    CreateWordField (ATIB, 0x0B, SPWR)
                    SSZE = 0x0C
                    PSBI = PSBR /* \_SB_.PCI0.GFX0.PSBR */
                    If (PDSW)
                    {
                        PDSW = Zero
                    }

                    If (PEXM)
                    {
                        EXPM = SEXM /* \_SB_.PCI0.GFX0.SEXM */
                        SEXM = Zero
                        PEXM = Zero
                    }

                    If (PTHR)
                    {
                        THRM = STHG /* \_SB_.PCI0.GFX0.STHG */
                        THID = STHI /* \_SB_.PCI0.GFX0.STHI */
                        STHG = Zero
                        STHI = Zero
                        PTHR = Zero
                    }

                    If (PFPS)
                    {
                        FPWR = SFPG /* \_SB_.PCI0.GFX0.SFPG */
                        FPID = SFPI /* \_SB_.PCI0.GFX0.SFPI */
                        SFPG = Zero
                        SFPI = Zero
                        PFPS = Zero
                    }

                    If (PSPS)
                    {
                        SPWR = SSPS /* \_SB_.PCI0.GFX0.SSPS */
                        PSPS = Zero
                    }

                    If (PDCC)
                    {
                        PDCC = Zero
                    }

                    If (PDDS)
                    {
                        PDDS = Zero
                    }

                    Return (ATIB) /* \_SB_.PCI0.GFX0.ATIB */
                }

                Method (AF03, 2, NotSerialized)
                {
                    Name (NXTD, Zero)
                    Name (INDX, Zero)
                    CreateWordField (ATIB, Zero, SSZE)
                    CreateWordField (ATIB, 0x02, SSDP)
                    CreateWordField (ATIB, 0x04, SCDP)
                    SSDP = Arg0
                    SCDP = Arg1
                    Local1 = SSDP /* \_SB_.PCI0.GFX0.AF03.SSDP */
                    Local1 &= 0x0B
                    Local2 = SCDP /* \_SB_.PCI0.GFX0.AF03.SCDP */
                    Local2 |= One
                    Local0 = Zero
                    INDX = 0x03
                    If ((SCDP == 0x0B))
                    {
                        INDX = 0x05
                    }

                    While ((Local0 < INDX))
                    {
                        If ((Local2 == 0x03))
                        {
                            Local3 = DerefOf (SACC [Local0])
                        }
                        ElseIf ((Local2 == 0x09))
                        {
                            Local3 = DerefOf (SACH [Local0])
                        }
                        Else
                        {
                            Local3 = DerefOf (SACT [Local0])
                        }

                        If ((Local3 == Local1))
                        {
                            Local0++
                            If ((Local0 == INDX))
                            {
                                Local0 = Zero
                            }

                            NXTD = Local0
                            Local0 = INDX /* \_SB_.PCI0.GFX0.AF03.INDX */
                        }
                        Else
                        {
                            Local0++
                        }
                    }

                    If ((NXTD == INDX))
                    {
                        SSDP = Zero
                    }
                    Else
                    {
                        Local0 = NXTD /* \_SB_.PCI0.GFX0.AF03.NXTD */
                        If ((Local2 == 0x03))
                        {
                            Local3 = DerefOf (SACC [Local0])
                        }
                        ElseIf ((Local2 == 0x09))
                        {
                            Local3 = DerefOf (SACH [Local0])
                        }
                        Else
                        {
                            Local3 = DerefOf (SACT [Local0])
                        }

                        SSDP = Local3
                    }

                    SSZE = 0x04
                    Return (ATIB) /* \_SB_.PCI0.GFX0.ATIB */
                }

                Method (AFN0, 0, Serialized)
                {
                    CreateBitField (PSBR, Zero, PDSW)
                    If ((NMSF & One))
                    {
                        PDSW = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }

                Method (AFN1, 1, Serialized)
                {
                    If ((NMSF & 0x02))
                    {
                        Local0 = Arg0
                        Local0 &= 0x03
                        SEXM = Local0
                        CreateBitField (PSBR, One, PEXM)
                        PEXM = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }

                Method (AFN2, 2, Serialized)
                {
                    If ((NMSF & 0x04))
                    {
                        Local0 = Arg0
                        STHI = Local0
                        Local0 = Arg1
                        STHG = Local0 &= 0x03
                        CreateBitField (PSBR, 0x02, PTHR)
                        PTHR = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }

                Method (AFN3, 2, Serialized)
                {
                    If ((NMSF & 0x08))
                    {
                        Local0 = Arg0
                        SFPI = Local0
                        Local0 = Arg1
                        SFPG = Local0 &= 0x03
                        CreateBitField (PSBR, 0x03, PFPS)
                        PFPS = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }

                Method (AFN4, 1, Serialized)
                {
                    If ((NMSF & 0x10))
                    {
                        Local0 = Arg0
                        Local1 = SSPS /* \_SB_.PCI0.GFX0.SSPS */
                        SSPS = Local0
                        CreateBitField (PSBR, 0x04, PSPS)
                        If ((Local0 != Local1))
                        {
                            PSPS = One
                            Notify (GFX0, 0x81) // Information Change
                        }
                    }
                }

                Method (AFN5, 0, Serialized)
                {
                    CreateBitField (PSBR, 0x05, PDCC)
                    If ((NMSF & 0x20))
                    {
                        PDCC = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }

                Method (AFN6, 0, Serialized)
                {
                    CreateBitField (PSBR, 0x06, PDDS)
                    If ((NMSF & 0x40))
                    {
                        PDDS = One
                        Notify (GFX0, 0x81) // Information Change
                    }
                }
            }

            Device (P0P2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                        ) == 0x000106A0)))
                    {
                        CPTY = 0x00030000
                    }
                    Else
                    {
                        CPTY = 0x00010000
                    }

                    Return (CPTY) /* \CPTY */
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02) /* \_SB_.AR02 */
                    }

                    Return (PR02) /* \_SB_.PR02 */
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }

                Device (VGA1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    OperationRegion (PSID, PCI_Config, 0x40, 0xC0)
                    Field (PSID, AnyAcc, NoLock, Preserve)
                    {
                        NVID,   32, 
                        Offset (0x0C), 
                        SVID,   16, 
                        SSID,   16, 
                        Offset (0x28), 
                        D1LX,   8
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((DISC == One) || (DISC == 0x02)))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }
                }

                OperationRegion (DMIB, SystemMemory, 0xFED18000, 0x1000)
                Field (DMIB, DWordAcc, Lock, Preserve)
                {
                    Offset (0xC34), 
                    LLGE,   1, 
                        ,   28, 
                    PCGE,   1, 
                        ,   1, 
                    LGGE,   1
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PVID, PCI_Config, Zero, 0x04)
                    Field (PVID, AnyAcc, NoLock, Preserve)
                    {
                        DVI0,   16, 
                        DVI1,   16
                    }

                    OperationRegion (PSID, PCI_Config, 0x40, 0xC0)
                    Field (PSID, AnyAcc, NoLock, Preserve)
                    {
                        SVD2,   16, 
                        SSD2,   16, 
                        Offset (0x0C), 
                        SVID,   16, 
                        SSID,   16, 
                        Offset (0x28), 
                        D0LX,   8
                    }

                    Name (SWIT, One)
                    Name (CRTA, One)
                    Name (LCDA, One)
                    Name (TVAA, One)
                    Name (VLDF, One)
                    Name (DPMO, Zero)
                    Name (DPMG, Zero)
                    Name (NDFG, Zero)
                    Name (BKEY, Zero)
                    Name (FKEY, Zero)
                    Name (_PSC, Zero)  // _PSC: Power State Current
                    Name (OMPR, 0x02)
                    Name (VGAB, Buffer (0xFB)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0098 */  0x00, 0x00, 0x00                                 // ...
                    })
                    Method (OX16, 0, NotSerialized)
                    {
                        LLGE = Zero
                        LGGE = Zero
                        PEPO = Zero
                        ROE0 = Zero
                        ROE1 = Zero
                        ROE2 = Zero
                        ROE3 = Zero
                        ROE4 = Zero
                        ROE5 = Zero
                        ROE6 = Zero
                        ROE7 = Zero
                        ROE8 = Zero
                        ROE9 = Zero
                        ROEA = Zero
                        ROEB = Zero
                        ROEC = Zero
                        ROED = Zero
                        ROEE = Zero
                        ROEF = Zero
                        HCLQ = Zero
                        UNWA = Zero
                        PEDQ = Zero
                        LNKD = Zero
                        LLGE = One
                        LGGE = One
                        While ((LNKS < 0x07))
                        {
                            Sleep (One)
                        }
                    }

                    Method (FX16, 0, NotSerialized)
                    {
                        LLGE = Zero
                        LGGE = Zero
                        LNKD = One
                        While ((LNKS != Zero))
                        {
                            Sleep (One)
                        }

                        PEDQ = One
                        LNKD = Zero
                        While ((PIDQ != One))
                        {
                            Sleep (One)
                        }

                        HCLQ = One
                        UNWA = One
                        PEPO = 0x07
                        ROE0 = One
                        ROE1 = One
                        ROE2 = One
                        ROE3 = One
                        ROE4 = One
                        ROE5 = One
                        ROE6 = One
                        ROE7 = One
                        ROE8 = One
                        ROE9 = One
                        ROEA = One
                        ROEB = One
                        ROEC = One
                        ROED = One
                        ROEE = One
                        ROEF = One
                        LLGE = One
                        LGGE = One
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        _PSC = Zero
                        If ((DPMD == 0x02))
                        {
                            If ((GP36 == Zero))
                            {
                                GP16 = Zero
                                Sleep (0x64)
                                GP36 = One
                                Sleep (0x64)
                                GP16 = One
                                Sleep (0x64)
                                OX16 ()
                                CMDR = Zero
                                VGAR = VGAB /* \_SB_.PCI0.P0P2.VGA_.VGAB */
                                CMDR = 0x06
                                P80H = 0xA1
                            }

                            HDAO = Zero
                        }
                    }

                    Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                    {
                        _PSC = One
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        If ((OMPR == 0x03))
                        {
                            VGAB = VGAR /* \_SB_.PCI0.P0P2.VGA_.VGAR */
                            FX16 ()
                            GP16 = Zero
                            GP36 = Zero
                            Sleep (0x0177)
                            _PSC = 0x03
                        }

                        OMPR = 0x02
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DSEN = (Arg0 & 0x07)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        If (((DISC == One) || (DISC == 0x02)))
                        {
                            If ((DPMO == 0x04))
                            {
                                Return (Package (0x03)
                                {
                                    0x80000100, 
                                    0x0400, 
                                    0x80007330
                                })
                            }
                            Else
                            {
                                Return (Package (0x03)
                                {
                                    0x0110, 
                                    0x80000100, 
                                    0x80007330
                                })
                            }
                        }

                        Return (Zero)
                    }

                    Device (CRT)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x80000100)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            Return (0x1F)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (One)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }
                    }

                    Device (LCD)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If ((DPMO == 0x04))
                            {
                                Return (0x0400)
                            }
                            Else
                            {
                                Return (0x0110)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            Return (0x1F)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (One)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }

                        Name (BRTS, Zero)
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (Package (0x0C)
                            {
                                0x46, 
                                0x28, 
                                0x0A, 
                                0x14, 
                                0x1E, 
                                0x28, 
                                0x32, 
                                0x3C, 
                                0x46, 
                                0x50, 
                                0x5A, 
                                0x64
                            })
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            Divide (Arg0, 0x0A, Local0, Local1)
                            Local1--
                            ^^^^LPCB.EC0.BRTS = Local1
                        }

                        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                        {
                            Local0 = ^^^^LPCB.EC0.BRTS /* \_SB_.PCI0.LPCB.EC0_.BRTS */
                            Sleep (0x64)
                            Local0 += One
                            Local0 *= 0x0A
                            P80H = 0x64
                            Return (Local0)
                        }
                    }

                    Device (HDV0)
                    {
                        Name (_ADR, 0x80007330)  // _ADR: Address
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

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            Return (0x1F)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Return (^^^GFX0._DSM (Arg0, Arg1, Arg2, Arg3))
                    }

                    OperationRegion (XPCI, SystemMemory, 0xE0008000, 0x1000)
                    Field (XPCI, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x04), 
                        XE04,   32, 
                        Offset (0x0C), 
                        XE0C,   32, 
                        Offset (0x18), 
                        XE18,   32, 
                        Offset (0x3C), 
                        XE3C,   22, 
                        XRST,   1, 
                        Offset (0xB0), 
                        ASPM,   2, 
                            ,   2, 
                        LNKD,   1, 
                            ,   1, 
                        RCCC,   1, 
                        Offset (0x1FC), 
                        Offset (0x1FD), 
                            ,   1, 
                        UNWA,   1, 
                        Offset (0x214), 
                        Offset (0x216), 
                        LNKS,   4, 
                        Offset (0x225), 
                        DQDA,   1, 
                        Offset (0xC28), 
                        HCLQ,   1, 
                        Offset (0xC34), 
                            ,   30, 
                        PEDQ,   1, 
                        PIDQ,   1, 
                        Offset (0xDFC), 
                            ,   1, 
                        PEPO,   3, 
                        Offset (0xE08), 
                            ,   31, 
                        ROE0,   1, 
                        Offset (0xE28), 
                            ,   31, 
                        ROE1,   1, 
                        Offset (0xE48), 
                            ,   31, 
                        ROE2,   1, 
                        Offset (0xE68), 
                            ,   31, 
                        ROE3,   1, 
                        Offset (0xE88), 
                            ,   31, 
                        ROE4,   1, 
                        Offset (0xEA8), 
                            ,   31, 
                        ROE5,   1, 
                        Offset (0xEC8), 
                            ,   31, 
                        ROE6,   1, 
                        Offset (0xEE8), 
                            ,   31, 
                        ROE7,   1, 
                        Offset (0xF08), 
                            ,   31, 
                        ROE8,   1, 
                        Offset (0xF28), 
                            ,   31, 
                        ROE9,   1, 
                        Offset (0xF48), 
                            ,   31, 
                        ROEA,   1, 
                        Offset (0xF68), 
                            ,   31, 
                        ROEB,   1, 
                        Offset (0xF88), 
                            ,   31, 
                        ROEC,   1, 
                        Offset (0xFA8), 
                            ,   31, 
                        ROED,   1, 
                        Offset (0xFC8), 
                            ,   31, 
                        ROEE,   1, 
                        Offset (0xFE8), 
                            ,   31, 
                        ROEF,   1
                    }

                    OperationRegion (NVAU, SystemMemory, 0xE0101000, 0x80)
                    Field (NVAU, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x40), 
                        NVID,   32
                    }

                    OperationRegion (BPCF, SystemMemory, 0xE0100000, 0x1000)
                    Field (BPCF, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x04), 
                        CMDR,   8, 
                        VGAR,   2008
                    }

                    OperationRegion (BPCI, SystemMemory, 0xE0100000, 0x1000)
                    Field (BPCI, DWordAcc, Lock, Preserve)
                    {
                        X000,   32, 
                        X004,   32, 
                        X008,   32, 
                        X00C,   32, 
                        X010,   32, 
                        X014,   32, 
                        X018,   32, 
                        X01C,   32, 
                        X020,   32, 
                        X024,   32, 
                        X028,   32, 
                        X02C,   32, 
                        X030,   32, 
                        X034,   32, 
                        X038,   32, 
                        X03C,   32, 
                        X040,   32, 
                        Offset (0x48), 
                        Offset (0x4C), 
                        X04C,   32, 
                        X050,   32, 
                        Offset (0x80), 
                        X080,   32, 
                        Offset (0x88), 
                        X088,   2, 
                            ,   3, 
                            ,   1, 
                        ECCC,   1, 
                        Offset (0x8A), 
                        Offset (0x8B), 
                            ,   4, 
                        ESCC,   1, 
                        Offset (0x114), 
                        TCVC,   8, 
                        Offset (0x48B), 
                            ,   1, 
                        HDAO,   1
                    }

                    OperationRegion (VBRM, SystemMemory, 0x9F746018, 0x00010000)
                    Field (VBRM, AnyAcc, NoLock, Preserve)
                    {
                        VBF1,   262144, 
                        VBF2,   262144
                    }

                    Name (XVSV, Buffer (0x48){})
                    CreateDWordField (XVSV, Zero, XB00)
                    CreateDWordField (XVSV, 0x04, XB04)
                    CreateDWordField (XVSV, 0x08, XB08)
                    CreateDWordField (XVSV, 0x0C, XB0C)
                    CreateDWordField (XVSV, 0x10, XB10)
                    CreateDWordField (XVSV, 0x14, XB14)
                    CreateDWordField (XVSV, 0x18, XB18)
                    CreateDWordField (XVSV, 0x1C, XB1C)
                    CreateDWordField (XVSV, 0x20, XB20)
                    CreateDWordField (XVSV, 0x24, XB24)
                    CreateDWordField (XVSV, 0x28, XB28)
                    CreateDWordField (XVSV, 0x2C, XB2C)
                    CreateDWordField (XVSV, 0x30, XB30)
                    CreateDWordField (XVSV, 0x34, XB34)
                    CreateDWordField (XVSV, 0x38, XB38)
                    CreateDWordField (XVSV, 0x3C, XB3C)
                    CreateDWordField (XVSV, 0x40, XB40)
                    CreateDWordField (XVSV, 0x44, XB4C)
                    Name (XGSV, Buffer (0x0C){})
                    CreateDWordField (XGSV, Zero, PB04)
                    CreateDWordField (XGSV, 0x04, PB0C)
                    CreateDWordField (XGSV, 0x08, PB3C)
                    Name (SVON, Zero)
                    Method (XSAV, 0, NotSerialized)
                    {
                        If ((SVON == One))
                        {
                            Return (Zero)
                        }

                        SVON = One
                        XB00 = X000 /* \_SB_.PCI0.P0P2.VGA_.X000 */
                        XB04 = X004 /* \_SB_.PCI0.P0P2.VGA_.X004 */
                        XB08 = X008 /* \_SB_.PCI0.P0P2.VGA_.X008 */
                        XB0C = X00C /* \_SB_.PCI0.P0P2.VGA_.X00C */
                        XB10 = X010 /* \_SB_.PCI0.P0P2.VGA_.X010 */
                        XB14 = X014 /* \_SB_.PCI0.P0P2.VGA_.X014 */
                        XB18 = X018 /* \_SB_.PCI0.P0P2.VGA_.X018 */
                        XB1C = X01C /* \_SB_.PCI0.P0P2.VGA_.X01C */
                        XB20 = X020 /* \_SB_.PCI0.P0P2.VGA_.X020 */
                        XB24 = X024 /* \_SB_.PCI0.P0P2.VGA_.X024 */
                        XB28 = X028 /* \_SB_.PCI0.P0P2.VGA_.X028 */
                        XB2C = X02C /* \_SB_.PCI0.P0P2.VGA_.X02C */
                        XB30 = X030 /* \_SB_.PCI0.P0P2.VGA_.X030 */
                        XB34 = X034 /* \_SB_.PCI0.P0P2.VGA_.X034 */
                        XB38 = X038 /* \_SB_.PCI0.P0P2.VGA_.X038 */
                        XB3C = X03C /* \_SB_.PCI0.P0P2.VGA_.X03C */
                        XB40 = X040 /* \_SB_.PCI0.P0P2.VGA_.X040 */
                        XB4C = X04C /* \_SB_.PCI0.P0P2.VGA_.X04C */
                        XB04 = XE04 /* \_SB_.PCI0.P0P2.VGA_.XE04 */
                        XB0C = XE0C /* \_SB_.PCI0.P0P2.VGA_.XE0C */
                        XB3C = XE3C /* \_SB_.PCI0.P0P2.VGA_.XE3C */
                    }

                    Method (XRES, 0, NotSerialized)
                    {
                        X000 = XB00 /* \_SB_.PCI0.P0P2.VGA_.XB00 */
                        X004 = XB04 /* \_SB_.PCI0.P0P2.VGA_.XB04 */
                        X008 = XB08 /* \_SB_.PCI0.P0P2.VGA_.XB08 */
                        X00C = XB0C /* \_SB_.PCI0.P0P2.VGA_.XB0C */
                        X010 = XB10 /* \_SB_.PCI0.P0P2.VGA_.XB10 */
                        X014 = XB14 /* \_SB_.PCI0.P0P2.VGA_.XB14 */
                        X018 = XB18 /* \_SB_.PCI0.P0P2.VGA_.XB18 */
                        X01C = XB1C /* \_SB_.PCI0.P0P2.VGA_.XB1C */
                        X020 = XB20 /* \_SB_.PCI0.P0P2.VGA_.XB20 */
                        X024 = XB24 /* \_SB_.PCI0.P0P2.VGA_.XB24 */
                        X028 = XB28 /* \_SB_.PCI0.P0P2.VGA_.XB28 */
                        X02C = XB2C /* \_SB_.PCI0.P0P2.VGA_.XB2C */
                        X030 = XB30 /* \_SB_.PCI0.P0P2.VGA_.XB30 */
                        X034 = XB34 /* \_SB_.PCI0.P0P2.VGA_.XB34 */
                        X038 = XB38 /* \_SB_.PCI0.P0P2.VGA_.XB38 */
                        X03C = XB3C /* \_SB_.PCI0.P0P2.VGA_.XB3C */
                        X040 = XB40 /* \_SB_.PCI0.P0P2.VGA_.XB40 */
                        X04C = XB4C /* \_SB_.PCI0.P0P2.VGA_.XB4C */
                    }

                    Method (IPBR, 0, NotSerialized)
                    {
                        TCVC = One
                        If ((ESCC == One))
                        {
                            ECCC = One
                            RCCC = One
                        }
                    }

                    Name (TMPS, Zero)
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                    }

                    Method (PLAT, 0, NotSerialized)
                    {
                        If ((DPMO == One))
                        {
                            DPMG = One
                        }

                        If (((^^^GFX0.VID == 0x8086) && (DPMD == Zero)))
                        {
                            DPMG = One
                        }
                        Else
                        {
                            Local0 = CMSR (0x3E)
                            If (((DPMO == 0x04) || (DPMO == 0x02)))
                            {
                                If ((DPMD == One))
                                {
                                    DPMG = 0x02
                                }
                                ElseIf ((Local0 == Zero))
                                {
                                    DPMG = One
                                }
                                Else
                                {
                                    DPMG = 0x02
                                }
                            }

                            If (((DPMO == 0x05) || (DPMO == 0x03)))
                            {
                                If ((DPMD == One))
                                {
                                    DPMG = 0x03
                                }
                                ElseIf ((Local0 == One))
                                {
                                    DPMG = One
                                }
                                Else
                                {
                                    DPMG = 0x03
                                }
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((DISC == 0x03))
                        {
                            Return (0x0F)
                        }
                        ElseIf ((GP36 && GP16))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (MXDS, 1, NotSerialized)
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_0 = Arg0
                        If ((_T_0 == Zero))
                        {
                            GP01 = !GP01
                            Sleep (0x64)
                            GP52 = !GP52
                            GP53 = !GP53
                            ^^^LPCB.EC0.DSPM = !^^^LPCB.EC0.DSPM
                            Return (GP52) /* \_SB_.PCI0.GP52 */
                        }
                        ElseIf ((_T_0 == One))
                        {
                            GP01 = Zero
                            GP52 = Zero
                            GP53 = Zero
                            ^^^LPCB.EC0.DSPM = Zero
                        }
                    }

                    Method (GOBT, 1, NotSerialized)
                    {
                        Name (GEVK, Buffer (0xE2)
                        {
                            /* 0000 */  0x14, 0xC6, 0x21, 0xAB, 0x8D, 0xC9, 0x76, 0xB2,  // ..!...v.
                            /* 0008 */  0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
                            /* 0010 */  0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,  // 27459125
                            /* 0018 */  0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,  // 3687Genu
                            /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
                            /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
                            /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  // fied Opt
                            /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  // imus Rea
                            /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  // dy Mothe
                            /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  // rboard f
                            /* 0050 */  0x6F, 0x72, 0x20, 0x61, 0x63, 0x65, 0x72, 0x20,  // or acer 
                            /* 0058 */  0x6A, 0x65, 0x35, 0x30, 0x63, 0x70, 0x20, 0x6E,  // je50cp n
                            /* 0060 */  0x31, 0x31, 0x70, 0x67, 0x65, 0x31, 0x20, 0x20,  // 11pge1  
                            /* 0068 */  0x2D, 0x20, 0x38, 0x33, 0x59, 0x2A, 0x40, 0x53,  // - 83Y*@S
                            /* 0070 */  0x41, 0x50, 0x45, 0x57, 0x4B, 0x45, 0x39, 0x3B,  // APEWKE9;
                            /* 0078 */  0x58, 0x3D, 0x56, 0x3A, 0x29, 0x33, 0x52, 0x5E,  // X=V:)3R^
                            /* 0080 */  0x52, 0x39, 0x54, 0x5E, 0x59, 0x2C, 0x4C, 0x20,  // R9T^Y,L 
                            /* 0088 */  0x57, 0x27, 0x50, 0x25, 0x41, 0x28, 0x24, 0x34,  // W'P%A($4
                            /* 0090 */  0x25, 0x4C, 0x27, 0x45, 0x2B, 0x48, 0x58, 0x25,  // %L'E+HX%
                            /* 0098 */  0x3A, 0x44, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,  // :D - Cop
                            /* 00A0 */  0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,  // yright 2
                            /* 00A8 */  0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,  // 009 NVID
                            /* 00B0 */  0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,  // IA Corpo
                            /* 00B8 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,  // ration A
                            /* 00C0 */  0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,  // ll Right
                            /* 00C8 */  0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,  // s Reserv
                            /* 00D0 */  0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,  // ed-27459
                            /* 00D8 */  0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,  // 1253687(
                            /* 00E0 */  0x52, 0x29                                       // R)
                        })
                        CreateWordField (Arg0, 0x02, USRG)
                        If ((USRG == 0x564B))
                        {
                            Return (GEVK) /* \_SB_.PCI0.P0P2.VGA_.GOBT.GEVK */
                        }

                        Return (Zero)
                    }

                    Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
                    {
                        If (((Arg0 + Arg1) > 0x00010000))
                        {
                            Arg0 -= 0x00010000
                        }

                        If ((Arg0 >= 0x8000))
                        {
                            Return (GETB ((Arg0 - 0x8000), Arg1, VBF2))
                        }

                        Return (GETB (Arg0, Arg1, VBF1))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Local0 = (Arg0 * 0x08)
                        Local1 = (Arg1 * 0x08)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3) /* \_SB_.PCI0.P0P2.VGA_.GETB.TBF3 */
                    }

                    Scope (CRT)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (HDV0)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (LCD)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0.DD01)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0.DD02)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0.DD03)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0.DD04)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0.DD05)
                    {
                        Method (MXMX, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (MXDS, 1, NotSerialized)
                        {
                            Return (^^MXDS (Arg0))
                        }
                    }

                    Scope (^^GFX0)
                    {
                        Method (MXDS, 1, NotSerialized)
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_0 = Arg0
                            If ((_T_0 == Zero))
                            {
                                Return (GP52) /* \_SB_.PCI0.GP52 */
                            }
                            ElseIf ((_T_0 == One))
                            {
                                GP01 = One
                                GP52 = One
                                GP53 = One
                                ^^LPCB.EC0.DSPM = One
                            }
                        }

                        OperationRegion (MXOP, SystemMemory, 0x9F745F18, 0x000000C8)
                        Field (MXOP, AnyAcc, NoLock, Preserve)
                        {
                            MXMB,   1600
                        }

                        Method (GMXM, 3, NotSerialized)
                        {
                            Local0 = 0xC8
                            Name (BUMA, Buffer (Local0){})
                            If (CondRefOf (MXMB, Local6))
                            {
                                BUMA = MXMB /* \_SB_.PCI0.GFX0.MXMB */
                            }

                            Local1 = Zero
                            Local5 = Zero
                            While (One)
                            {
                                Local2 = (Local1 + 0x06)
                                Local3 = DerefOf (BUMA [Local2])
                                If (Local3)
                                {
                                    Local3 += 0x08
                                }
                                Else
                                {
                                    Break
                                }

                                Local4 = Local1
                                Local4 += 0x04
                                If ((DerefOf (BUMA [Local4]) == Arg0))
                                {
                                    Local4++
                                    If ((DerefOf (BUMA [Local4]) == Arg1))
                                    {
                                        If ((Local5 == Arg2))
                                        {
                                            Local1 *= 0x08
                                            Local3 *= 0x08
                                            CreateField (BUMA, Local1, Local3, TMPB)
                                            Return (TMPB) /* \_SB_.PCI0.GFX0.GMXM.TMPB */
                                        }
                                        Else
                                        {
                                            Local5++
                                        }
                                    }
                                }

                                Local1 += Local3
                                If ((Local1 > Local0))
                                {
                                    Break
                                }
                            }

                            Return (Buffer (0x08)
                            {
                                 0x00                                             // .
                            })
                        }

                        Name (PYMK, Zero)
                        Name (BDMK, Zero)
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665") /* Unknown UUID */))
                            {
                                If ((Arg1 != 0x0300))
                                {
                                    Return (0x80000002)
                                }

                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = Arg2
                                If ((_T_0 == Zero))
                                {
                                    If ((DISC == 0x03))
                                    {
                                        Return (Zero)
                                    }

                                    Return (0x0001001F)
                                }
                                ElseIf ((_T_0 == 0x04))
                                {
                                    Return (0x03EF0000)
                                }
                                ElseIf ((_T_0 == 0x05))
                                {
                                    Return (0x00F00020)
                                }
                                ElseIf ((_T_0 == 0x06))
                                {
                                    Return (Package (0x0C)
                                    {
                                        0x0110, 
                                        0x2C, 
                                        0x80000100, 
                                        0x2C, 
                                        0x80007330, 
                                        0x2C, 
                                        0x0110, 
                                        0x80000100, 
                                        0x2C, 
                                        0x0110, 
                                        0x80007330, 
                                        0x2C
                                    })
                                }
                                ElseIf ((_T_0 == 0x10))
                                {
                                    Return (GMXM (0x03, Zero, Zero))
                                }
                                ElseIf ((_T_0 == 0x12))
                                {
                                    Return (Package (0x04)
                                    {
                                        0xD0, 
                                        Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        }, 

                                        0xDF, 
                                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b") /* Unknown UUID */
                                    })
                                }
                                ElseIf ((_T_0 == 0x18))
                                {
                                    Return (0x30)
                                }
                                ElseIf ((_T_0 == 0x19))
                                {
                                    Return (0x80000002)
                                }
                            }

                            If ((Arg0 == ToUUID ("7ed873d3-c2d0-4e4f-a854-0f1317b01c2c") /* Unknown UUID */))
                            {
                                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = Arg2
                                If ((_T_1 == Zero))
                                {
                                    Return (0x03)
                                }
                                ElseIf ((_T_1 == One))
                                {
                                    If ((^^P0P2.VGA.DPMO == 0x04))
                                    {
                                        Return (MXIF) /* \_SB_.PCI0.GFX0.MXIF */
                                    }
                                    Else
                                    {
                                        Return (MXNF) /* \_SB_.PCI0.GFX0.MXNF */
                                    }
                                }
                            }

                            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */))
                            {
                                Local0 = Zero
                                Local0 = (DerefOf (Arg3 [0x03]) << 0x18)
                                Local0 += (DerefOf (Arg3 [0x02]) << 0x10)
                                Local0 += (DerefOf (Arg3 [One]) << 0x08)
                                Local0 += (DerefOf (Arg3 [Zero]) << Zero)
                                If ((Arg1 != 0x0100))
                                {
                                    Return (Buffer (0x04)
                                    {
                                         0x02, 0x00, 0x00, 0x80                           // ....
                                    })
                                }

                                Name (SUBF, Zero)
                                SUBF = Arg2
                                If ((SUBF == Zero))
                                {
                                    If ((DISC == 0x03))
                                    {
                                        Return (Buffer (0x04)
                                        {
                                             0x01, 0x00, 0x01, 0x0C                           // ....
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x04)
                                        {
                                             0x00, 0x00, 0x00, 0x00                           // ....
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((SUBF == 0x10))
                                    {
                                        Return (^^P0P2.VGA.GOBT (Arg3))
                                    }

                                    If ((SUBF == 0x1A))
                                    {
                                        CreateField (Arg3, 0x18, 0x02, OPCE)
                                        CreateField (Arg3, Zero, One, FLCH)
                                        If ((ToInteger (FLCH) & (ToInteger (OPCE) != ^^P0P2.VGA.OMPR)))
                                        {
                                            ^^P0P2.VGA.OMPR = OPCE /* \_SB_.PCI0.GFX0._DSM.OPCE */
                                        }

                                        Local0 = Buffer (0x04)
                                            {
                                                 0x00, 0x00, 0x00, 0x00                           // ....
                                            }
                                        CreateField (Local0, Zero, One, OPEN)
                                        CreateField (Local0, 0x03, 0x02, CGCS)
                                        CreateField (Local0, 0x06, One, SHPC)
                                        CreateField (Local0, 0x18, 0x03, DGPC)
                                        OPEN = One
                                        DGPC = One
                                        If ((GP36 && GP16))
                                        {
                                            CGCS = 0x03
                                        }
                                        Else
                                        {
                                            CGCS = Zero
                                        }

                                        Return (Local0)
                                    }

                                    If ((SUBF == 0x1B))
                                    {
                                        If ((Local0 & 0x02))
                                        {
                                            If ((Local0 & One))
                                            {
                                                CMSW (0x3E, One)
                                                Return (Buffer (0x04)
                                                {
                                                     0x01, 0x00, 0x00, 0x00                           // ....
                                                })
                                            }
                                            Else
                                            {
                                                CMSW (0x3E, Zero)
                                                Return (Buffer (0x04)
                                                {
                                                     0x00, 0x00, 0x00, 0x00                           // ....
                                                })
                                            }
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x04)
                                            {
                                                 0x00, 0x00, 0x00, 0x00                           // ....
                                            })
                                        }
                                    }

                                    Return (Buffer (0x04)
                                    {
                                         0x02, 0x00, 0x00, 0x80                           // ....
                                    })
                                }
                            }

                            If ((Arg0 == ToUUID ("9d95a0a0-0060-4d48-b34d-7e5fea129fd4") /* Unknown UUID */))
                            {
                                If ((Arg1 != 0x0102))
                                {
                                    Return (0x80000002)
                                }

                                If ((Arg2 == Zero))
                                {
                                    If ((DISC == 0x03))
                                    {
                                        Return (Buffer (0x04)
                                        {
                                             0x00, 0x00, 0x00, 0x00                           // ....
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x04)
                                        {
                                             0x7F, 0x00, 0x00, 0x00                           // ....
                                        })
                                    }
                                }

                                If ((Arg2 == One))
                                {
                                    Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = ^^P0P2.VGA.SSID /* \_SB_.PCI0.P0P2.VGA_.SSID */
                                    If ((_T_2 == 0x036D))
                                    {
                                        Return (0x0002F000)
                                    }
                                    ElseIf ((_T_2 == 0x0488))
                                    {
                                        Return (0x030003FF)
                                    }
                                    Else
                                    {
                                        Return (0x01FE0000)
                                    }
                                }

                                If ((Arg2 == 0x02))
                                {
                                    CreateByteField (Arg3, Zero, DSM0)
                                    CreateByteField (Arg3, One, DSM1)
                                    If ((DSM1 & One))
                                    {
                                        Local0 = (DSM0 & 0xE0)
                                        BDMK = Local0
                                    }

                                    If ((DSM0 & 0x10))
                                    {
                                        Local0 = (DSM0 & 0x0F)
                                        Notify (GFX0, 0xD9) // Hardware-Specific
                                        CMSW (0x3E, Local0)
                                        ^^P0P2.VGA.TMPS = Local0
                                        ^^P0P2.VGA.BKEY = Zero
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        Local0 = Zero
                                        If ((^^P0P2.VGA.BKEY == One))
                                        {
                                            Local0 = CMSR (0x3E)
                                            Local0++
                                            If ((Local0 > 0x02))
                                            {
                                                Local0 = One
                                            }
                                        }

                                        If ((^^P0P2.VGA.BKEY == 0x99))
                                        {
                                            Local0 = CMSR (0x3E)
                                            If ((Local0 > 0x02))
                                            {
                                                Local0 = Zero
                                            }
                                        }

                                        ^^P0P2.VGA.FKEY = Zero
                                        Return (Local0)
                                    }
                                }

                                If ((Arg2 == 0x03))
                                {
                                    CreateByteField (Arg3, Zero, PWF0)
                                    CreateByteField (Arg3, One, PWF1)
                                    Local0 = (PWF0 & 0x03)
                                    Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_3 = Local0
                                    If ((_T_3 == Zero))
                                    {
                                        Return (GP36) /* \_SB_.PCI0.GP36 */
                                    }
                                    ElseIf ((_T_3 == One))
                                    {
                                        P80H = 0x1E
                                        ^^P0P2.VGA._ON ()
                                        P80H = 0x1F
                                        Return (GP36) /* \_SB_.PCI0.GP36 */
                                    }
                                    ElseIf ((_T_3 == 0x02))
                                    {
                                        P80H = 0x0E
                                        ^^P0P2.VGA._OFF ()
                                        P80H = 0x0F
                                        Return (GP36) /* \_SB_.PCI0.GP36 */
                                    }
                                }

                                If ((Arg2 == 0x04))
                                {
                                    P80H = 0x2E
                                    Return (0x00012000)
                                }

                                If ((Arg2 == 0x05))
                                {
                                    If ((DerefOf (Arg3 [0x03]) & One))
                                    {
                                        Local0 = DerefOf (Arg3 [One])
                                        Local0 >>= 0x04
                                        Local1 = DerefOf (Arg3 [0x02])
                                        Local1 <<= 0x04
                                        Local0 |= Local1
                                        Local2 = DerefOf (Arg3 [Zero])
                                        Local1 = DerefOf (Arg3 [One])
                                        Local1 &= 0x0F
                                        Local1 <<= 0x04
                                        Local2 |= Local1
                                        Local1 = GATD (Local2, Local0)
                                        Local1 <<= 0x08
                                        Local3 = 0x00F00021
                                        Local3 |= Local1
                                        Return (Local3)
                                    }
                                }

                                If ((Arg2 == 0x06))
                                {
                                    Return (Package (0x0C)
                                    {
                                        0x0110, 
                                        0x2C, 
                                        0x80000100, 
                                        0x2C, 
                                        0x80007330, 
                                        0x2C, 
                                        0x0110, 
                                        0x80000100, 
                                        0x2C, 
                                        0x0110, 
                                        0x80007330, 
                                        0x2C
                                    })
                                }

                                If ((Arg2 == 0x10))
                                {
                                    Return (GMXM (0x03, Zero, Zero))
                                }

                                If ((Arg2 == 0x18))
                                {
                                    Return (0x30)
                                }

                                Return (0x80000002)
                            }

                            Return (0x80000002)
                        }

                        Method (GATD, 2, NotSerialized)
                        {
                            If ((Arg0 == 0x06))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = Arg1
                                If ((_T_0 == 0x02))
                                {
                                    Return (0x04)
                                }
                                ElseIf ((_T_0 == 0x06))
                                {
                                    Return (0x02)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            ElseIf ((Arg0 == 0x0A))
                            {
                                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = Arg1
                                If ((_T_1 == 0x02))
                                {
                                    Return (0x05)
                                }
                                ElseIf ((_T_1 == 0x0A))
                                {
                                    Return (0x03)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            ElseIf ((Arg0 == 0x0E))
                            {
                                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_2 = Arg1
                                If ((_T_2 == 0x02))
                                {
                                    Return (0x02)
                                }
                                ElseIf ((_T_2 == 0x04))
                                {
                                    Return (0x03)
                                }
                                ElseIf ((_T_2 == 0x08))
                                {
                                    Return (0x04)
                                }
                                ElseIf ((_T_2 == 0x06))
                                {
                                    Return (0x05)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            ElseIf ((Arg0 == 0x03))
                            {
                                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_3 = Arg1
                                If ((_T_3 == One))
                                {
                                    Return (0x04)
                                }
                                ElseIf ((_T_3 == 0x03))
                                {
                                    Return (0x02)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            ElseIf ((Arg0 == 0x05))
                            {
                                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_4 = Arg1
                                If ((_T_4 == One))
                                {
                                    Return (0x05)
                                }
                                ElseIf ((_T_4 == 0x05))
                                {
                                    Return (0x03)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            ElseIf ((Arg0 == 0x07))
                            {
                                Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_5 = Arg1
                                If ((_T_5 == One))
                                {
                                    Return (0x02)
                                }
                                ElseIf ((_T_5 == 0x02))
                                {
                                    Return (0x03)
                                }
                                ElseIf ((_T_5 == 0x04))
                                {
                                    Return (0x04)
                                }
                                ElseIf ((_T_5 == 0x03))
                                {
                                    Return (0x05)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }
                            Else
                            {
                                Return (One)
                            }
                        }

                        Method (MXMI, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x20))
                            {
                                Return (Arg0)
                            }

                            If ((Arg0 == 0x21))
                            {
                                Return (Arg0)
                            }

                            If ((Arg0 == 0x30))
                            {
                                Return (Arg0)
                            }

                            If ((Arg0 == Zero))
                            {
                                Return (0x30)
                            }

                            Return (Zero)
                        }

                        Method (MXMS, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x20))
                            {
                                Return (GMXM (0x02, Zero, Zero))
                            }
                            ElseIf ((Arg0 == 0x21))
                            {
                                Return (GMXM (0x02, One, Zero))
                            }
                            Else
                            {
                                Return (GMXM (0x03, Zero, Zero))
                            }
                        }

                        Name (MXNF, Package (0x04)
                        {
                            0x03, 
                            Package (0x02)
                            {
                                0x0110, 
                                Buffer (0x04)
                                {
                                     0x02, 0x03, 0x03, 0x00                           // ....
                                }
                            }, 

                            Package (0x02)
                            {
                                0x80000100, 
                                Buffer (0x04)
                                {
                                     0x01, 0x03, 0x03, 0x00                           // ....
                                }
                            }, 

                            Package (0x02)
                            {
                                0x80007330, 
                                Buffer (0x04)
                                {
                                     0x04, 0x03, 0x03, 0x03                           // ....
                                }
                            }
                        })
                    }

                    Scope (^^^PCI0)
                    {
                        Device (WMI1)
                        {
                            Name (_HID, "pnp0c14")  // _HID: Hardware ID
                            Name (_UID, "MXM2")  // _UID: Unique ID
                            Name (MXM3, Buffer (0x31)
                            {
                                /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x29, 0x00,  // MXM_..).
                                /* 0008 */  0x30, 0x11, 0xB8, 0xFF, 0xF9, 0x3E, 0x0A, 0x00,  // 0....>..
                                /* 0010 */  0x00, 0x00, 0x8A, 0xFD, 0xF9, 0x3E, 0x0A, 0x00,  // .....>..
                                /* 0018 */  0x20, 0x29, 0x52, 0xFC, 0xF9, 0x3E, 0x00, 0x00,  //  )R..>..
                                /* 0020 */  0x01, 0xE8, 0x03, 0x00, 0x03, 0x01, 0xE8, 0x03,  // ........
                                /* 0028 */  0xE5, 0x0D, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0030 */  0xE3                                             // .
                            })
                            Name (_WDG, Buffer (0x026C)
                            {
                                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  // <\.....N
                                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  // .w...*,.
                                /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // MX..!...
                                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x58, 0x4D, 0x01, 0x00,  // ..).XM..
                                /* 0028 */  0x62, 0xDE, 0x6B, 0xE0, 0x75, 0xEE, 0xF4, 0x48,  // b.k.u..H
                                /* 0030 */  0xA5, 0x83, 0xB2, 0x3E, 0x69, 0xAB, 0xFB, 0x91,  // ...>i...
                                /* 0038 */  0x80, 0x00, 0x01, 0x08, 0x0F, 0xBD, 0xDE, 0x3A,  // .......:
                                /* 0040 */  0x5F, 0x0C, 0xED, 0x46, 0xAB, 0x2E, 0x04, 0x96,  // _..F....
                                /* 0048 */  0x2B, 0x4F, 0xDC, 0xBC, 0x81, 0x00, 0x01, 0x08,  // +O......
                                /* 0050 */  0x11, 0x93, 0x51, 0x1E, 0x75, 0x3E, 0x08, 0x42,  // ..Q.u>.B
                                /* 0058 */  0xB0, 0x5E, 0xEB, 0xE1, 0x7E, 0x3F, 0xF4, 0x1F,  // .^..~?..
                                /* 0060 */  0x86, 0x00, 0x01, 0x08, 0x41, 0x53, 0xF8, 0x37,  // ....AS.7
                                /* 0068 */  0x18, 0x44, 0x24, 0x4F, 0x85, 0x33, 0x38, 0xFF,  // .D$O.38.
                                /* 0070 */  0xC7, 0x29, 0x55, 0x42, 0x87, 0x00, 0x01, 0x08,  // .)UB....
                                /* 0078 */  0x40, 0x2F, 0x1A, 0x92, 0xC4, 0x0D, 0x2D, 0x40,  // @/....-@
                                /* 0080 */  0xAC, 0x18, 0xB4, 0x84, 0x44, 0xEF, 0x9E, 0xD2,  // ....D...
                                /* 0088 */  0xD0, 0x00, 0x01, 0x08, 0x95, 0x30, 0x26, 0x93,  // .....0&.
                                /* 0090 */  0x5F, 0xDA, 0xA0, 0x46, 0x8B, 0x1C, 0xDB, 0x2F,  // _..F.../
                                /* 0098 */  0x1F, 0x7D, 0x66, 0xAF, 0xD1, 0x00, 0x01, 0x08,  // .}f.....
                                /* 00A0 */  0x06, 0x70, 0x90, 0xBE, 0x03, 0xD6, 0x14, 0x47,  // .p.....G
                                /* 00A8 */  0x9A, 0xE2, 0x9D, 0xBA, 0x89, 0x97, 0xA8, 0x05,  // ........
                                /* 00B0 */  0xD2, 0x00, 0x01, 0x08, 0xE1, 0x55, 0xD3, 0x21,  // .....U.!
                                /* 00B8 */  0x8D, 0x49, 0x1F, 0x4C, 0xAE, 0x01, 0x05, 0xCE,  // .I.L....
                                /* 00C0 */  0xF8, 0xDD, 0x05, 0x3F, 0xD3, 0x00, 0x01, 0x08,  // ...?....
                                /* 00C8 */  0xF1, 0xED, 0xBC, 0xED, 0xC9, 0xBB, 0x0E, 0x42,  // .......B
                                /* 00D0 */  0xA3, 0xC0, 0x32, 0x2B, 0x1D, 0x37, 0xC3, 0xAA,  // ..2+.7..
                                /* 00D8 */  0xD4, 0x00, 0x01, 0x08, 0xE1, 0x84, 0x7E, 0x37,  // ......~7
                                /* 00E0 */  0xDE, 0x13, 0xFB, 0x41, 0xA0, 0x96, 0x0F, 0x08,  // ...A....
                                /* 00E8 */  0x52, 0x8B, 0xA6, 0x89, 0xD5, 0x00, 0x01, 0x08,  // R.......
                                /* 00F0 */  0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,  // a.*...tL
                                /* 00F8 */  0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,  // .....E.>
                                /* 0100 */  0xD9, 0x00, 0x01, 0x08, 0xDE, 0xE4, 0x4B, 0x15,  // ......K.
                                /* 0108 */  0x0A, 0x1C, 0x0D, 0x48, 0xB2, 0x37, 0xFC, 0x5D,  // ...H.7.]
                                /* 0110 */  0xA9, 0xFA, 0xD2, 0x6F, 0xDA, 0x00, 0x01, 0x08,  // ...o....
                                /* 0118 */  0x06, 0x80, 0x84, 0x42, 0x86, 0x88, 0x0E, 0x49,  // ...B...I
                                /* 0120 */  0x8C, 0x72, 0x2B, 0xDC, 0xA9, 0x3A, 0x8A, 0x09,  // .r+..:..
                                /* 0128 */  0xDB, 0x00, 0x01, 0x08, 0xD9, 0x5E, 0x17, 0xB7,  // .....^..
                                /* 0130 */  0x95, 0xC9, 0x93, 0x4D, 0x8F, 0x71, 0xEA, 0x25,  // ...M.q.%
                                /* 0138 */  0xB3, 0xA4, 0x75, 0x62, 0xDC, 0x00, 0x01, 0x08,  // ..ub....
                                /* 0140 */  0x50, 0x2C, 0xCB, 0xA7, 0x79, 0x89, 0x90, 0x49,  // P,..y..I
                                /* 0148 */  0xB5, 0x1A, 0x09, 0x50, 0x42, 0xF8, 0x84, 0xDD,  // ...PB...
                                /* 0150 */  0xDD, 0x00, 0x01, 0x08, 0xC4, 0x4C, 0x71, 0x92,  // .....Lq.
                                /* 0158 */  0xC7, 0xBE, 0xEE, 0x48, 0x99, 0x07, 0x5B, 0x6A,  // ...H..[j
                                /* 0160 */  0xB2, 0x95, 0x4F, 0xD0, 0xE0, 0x00, 0x01, 0x08,  // ..O.....
                                /* 0168 */  0xBA, 0xFF, 0x40, 0x8F, 0x1B, 0xB4, 0xFE, 0x47,  // ..@....G
                                /* 0170 */  0x82, 0x74, 0x00, 0x3A, 0xFA, 0xB5, 0xD8, 0xAA,  // .t.:....
                                /* 0178 */  0xE1, 0x00, 0x01, 0x08, 0x67, 0x53, 0x73, 0x33,  // ....gSs3
                                /* 0180 */  0x20, 0x11, 0xF4, 0x47, 0xB6, 0x0B, 0x19, 0x1A,  //  ..G....
                                /* 0188 */  0x8E, 0x71, 0x8A, 0x4E, 0xE2, 0x00, 0x01, 0x08,  // .q.N....
                                /* 0190 */  0xE4, 0x54, 0x3F, 0x37, 0x50, 0x53, 0x0B, 0x4F,  // .T?7PS.O
                                /* 0198 */  0xA8, 0x77, 0x85, 0x89, 0x6C, 0xD1, 0x4F, 0x2F,  // .w..l.O/
                                /* 01A0 */  0xE3, 0x00, 0x01, 0x08, 0x20, 0xF5, 0x83, 0x5F,  // .... .._
                                /* 01A8 */  0xC3, 0xD9, 0x6A, 0x4D, 0x8D, 0xE7, 0x67, 0x6A,  // ..jM..gj
                                /* 01B0 */  0x0D, 0xCB, 0xDD, 0xF7, 0xE4, 0x00, 0x01, 0x08,  // ........
                                /* 01B8 */  0xEB, 0x5C, 0x0F, 0x8E, 0x69, 0x69, 0x2B, 0x4C,  // .\..ii+L
                                /* 01C0 */  0xB5, 0xC3, 0x7A, 0x1F, 0xF2, 0xB3, 0xBB, 0xC5,  // ..z.....
                                /* 01C8 */  0xE5, 0x00, 0x01, 0x08, 0x18, 0x91, 0xFE, 0x08,  // ........
                                /* 01D0 */  0x0F, 0x84, 0x84, 0x48, 0x82, 0xD7, 0x4A, 0x0A,  // ...H..J.
                                /* 01D8 */  0x28, 0xC2, 0x54, 0x9F, 0xE6, 0x00, 0x01, 0x08,  // (.T.....
                                /* 01E0 */  0x39, 0xFB, 0x29, 0xFB, 0x6D, 0xB3, 0x2A, 0x44,  // 9.).m.*D
                                /* 01E8 */  0xB3, 0x51, 0x33, 0x7F, 0xD6, 0xDD, 0x97, 0xEE,  // .Q3.....
                                /* 01F0 */  0xE7, 0x00, 0x01, 0x08, 0xC3, 0x2C, 0xD3, 0xBB,  // .....,..
                                /* 01F8 */  0xE3, 0xB9, 0x64, 0x47, 0xAE, 0xF6, 0x86, 0x06,  // ..dG....
                                /* 0200 */  0x7A, 0xB1, 0xB1, 0xD5, 0xE8, 0x00, 0x01, 0x08,  // z.......
                                /* 0208 */  0x9F, 0x83, 0x56, 0xA0, 0xE9, 0x44, 0x42, 0x45,  // ..V..DBE
                                /* 0210 */  0x9C, 0x0F, 0x9C, 0xFA, 0x88, 0x57, 0x9F, 0xA6,  // .....W..
                                /* 0218 */  0xE9, 0x00, 0x01, 0x08, 0x9D, 0xE8, 0xCB, 0xB2,  // ........
                                /* 0220 */  0xAD, 0x1B, 0x29, 0x4D, 0x85, 0x7B, 0xCB, 0x7B,  // ..)M.{.{
                                /* 0228 */  0xCF, 0xF8, 0x6E, 0xA6, 0xEA, 0x00, 0x01, 0x08,  // ..n.....
                                /* 0230 */  0x57, 0x3B, 0xAC, 0xA5, 0x31, 0xCC, 0x38, 0x42,  // W;..1.8B
                                /* 0238 */  0xB0, 0xFE, 0xAD, 0x3B, 0x07, 0xEC, 0x12, 0x13,  // ...;....
                                /* 0240 */  0xEB, 0x00, 0x01, 0x08, 0xD2, 0x85, 0xE4, 0xB3,  // ........
                                /* 0248 */  0xC1, 0x3C, 0x94, 0x4B, 0x8F, 0x31, 0x77, 0xBA,  // .<.K.1w.
                                /* 0250 */  0x2F, 0xDC, 0x9E, 0xBE, 0xEF, 0x00, 0x01, 0x08,  // /.......
                                /* 0258 */  0xB6, 0x6F, 0x0D, 0x36, 0x4E, 0x1D, 0xA6, 0x4F,  // .o.6N..O
                                /* 0260 */  0xB8, 0x48, 0x1B, 0xE3, 0x3D, 0xD8, 0xEC, 0x7B,  // .H..=..{
                                /* 0268 */  0xF0, 0x00, 0x01, 0x08                           // ....
                            })
                            Method (WMMX, 3, NotSerialized)
                            {
                                CreateDWordField (Arg2, Zero, FUNC)
                                If ((SizeOf (Arg2) >= 0x04))
                                {
                                    CreateDWordField (Arg2, 0x04, ARGA)
                                }

                                If ((SizeOf (Arg2) >= 0x08))
                                {
                                    CreateDWordField (Arg2, 0x08, ARGB)
                                }

                                If ((FUNC == 0x4C43425F))
                                {
                                    Return (^^GFX0.DD03._BCL ())
                                }

                                If ((FUNC == 0x4D43425F)){}
                                If ((FUNC == 0x444F445F))
                                {
                                    If ((Arg1 & 0x0100))
                                    {
                                        If (((Arg1 & 0xFF) == Zero))
                                        {
                                            Return (^^GFX0._DOD ())
                                        }

                                        If (((Arg1 & 0xFF) == One))
                                        {
                                            Return (^^P0P2.VGA._DOD ())
                                        }
                                    }
                                    Else
                                    {
                                        If ((Arg1 == 0x10))
                                        {
                                            Return (^^GFX0._DOD ())
                                        }

                                        If ((Arg1 == Zero))
                                        {
                                            Return (^^P0P2.VGA._DOD ())
                                        }
                                    }
                                }

                                If ((FUNC == 0x534F445F)){}
                                If ((FUNC == 0x5343445F)){}
                                If ((FUNC == 0x4D4F525F)){}
                                If ((FUNC == 0x47504F4E))
                                {
                                    ^^P0P2.VGA._PS0 ()
                                }

                                If ((FUNC == 0x4D53445F))
                                {
                                    If ((SizeOf (Arg2) >= 0x18))
                                    {
                                        CreateField (Arg2, 0x20, 0x80, MUID)
                                        CreateDWordField (Arg2, 0x14, REVI)
                                        CreateDWordField (Arg2, 0x18, SFNC)
                                        CreateDWordField (Arg2, 0x1C, ARGD)
                                        If ((Arg1 & 0x0100))
                                        {
                                            If (((Arg1 & 0xFF) == Zero)){}
                                            If (((Arg1 & 0xFF) == One))
                                            {
                                                Return (^^P0P2.VGA._DSM (MUID, REVI, SFNC, ARGD))
                                            }
                                        }
                                        Else
                                        {
                                            If ((Arg1 == 0x10)){}
                                            If ((Arg1 == Zero))
                                            {
                                                Return (^^P0P2.VGA._DSM (MUID, REVI, SFNC, ARGD))
                                            }
                                        }
                                    }
                                }

                                If ((FUNC == 0x584D584D)){}
                                If ((FUNC == 0x5344584D)){}
                                If ((FUNC == 0x494D584D))
                                {
                                    Return (^^GFX0.MXMI (ARGA))
                                }

                                If ((FUNC == 0x534D584D))
                                {
                                    If ((Arg1 & 0x0100))
                                    {
                                        If (((Arg1 & 0xFF) == One))
                                        {
                                            Return (^^GFX0.MXMS (ARGA))
                                        }
                                    }
                                    ElseIf ((Arg1 == Zero))
                                    {
                                        Return (^^GFX0.MXMS (ARGA))
                                    }
                                }

                                Return (Zero)
                            }
                        }
                    }

                    Name (ATPB, Buffer (0x0100){})
                    Name (DSID, 0xFFFFFFFF)
                    Name (HSID, 0xFFFFFFFF)
                    Method (XTPX, 2, Serialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            Return (PX00 ())
                        }

                        If ((Arg0 == One))
                        {
                            Return (PX01 ())
                        }

                        If ((Arg0 == 0x02))
                        {
                            Return (PX02 (DerefOf (Arg1 [0x02])))
                        }

                        If ((Arg0 == 0x03))
                        {
                            Return (PX03 (DerefOf (Arg1 [0x02])))
                        }

                        If ((Arg0 == 0x05))
                        {
                            Return (PX05 (DerefOf (Arg1 [0x02])))
                        }

                        If ((Arg0 == 0x06))
                        {
                            Return (PX06 (DerefOf (Arg1 [0x02])))
                        }

                        CreateWordField (ATPB, Zero, SSZE)
                        CreateWordField (ATPB, 0x02, VERN)
                        CreateDWordField (ATPB, 0x04, SFUN)
                        SSZE = Zero
                        VERN = Zero
                        SFUN = Zero
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX00, 0, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateWordField (ATPB, 0x02, VERN)
                        CreateDWordField (ATPB, 0x04, SFUN)
                        SSZE = 0x08
                        VERN = One
                        SFUN = 0x07
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX01, 0, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateDWordField (ATPB, 0x02, VMSK)
                        CreateDWordField (ATPB, 0x06, FLGS)
                        SSZE = 0x0A
                        VMSK = 0x0F
                        FLGS = 0x0B
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX02, 1, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateByteField (ATPB, 0x02, PWST)
                        SSZE = 0x03
                        PWST = (Arg0 & One)
                        If (PWST)
                        {
                            PEGA = One
                            IGDS = Zero
                            GP16 = Zero
                            GP36 = Zero
                            Sleep (0x64)
                            GP36 = One
                            Sleep (0x64)
                            GP16 = One
                            OSMI (0x92)
                            Sleep (0x64)
                            SVID = 0x1025
                            SSID = 0x0488
                            ^^VGA1.SVID = 0x1025
                            ^^VGA1.SSID = 0x0488
                            D0LX = 0x43
                            ^^VGA1.D1LX = 0x43
                            X030 = Zero
                            X034 = 0x50
                            X038 = Zero
                            X03C = 0x0110
                        }
                        Else
                        {
                            IGDS = One
                            OSMI (0x93)
                            GP16 = Zero
                            GP36 = Zero
                            PEGA = Zero
                        }

                        Sleep (0x03E8)
                        Notify (P0P2, Zero) // Bus Check
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX03, 1, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateWordField (ATPB, 0x02, DPSW)
                        SSZE = 0x04
                        DPSW = (Arg0 & One)
                        If (DPSW)
                        {
                            GP52 = Zero
                            GP01 = Zero
                            GP53 = Zero
                            ^^^LPCB.EC0.DSPM = Zero
                        }
                        Else
                        {
                            GP52 = One
                            GP01 = One
                            GP53 = One
                            ^^^LPCB.EC0.DSPM = One
                            ^^^LPCB.EC0.SKTB = Zero
                            ^^^LPCB.EC0.SKTA = Zero
                        }

                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX05, 1, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateWordField (ATPB, 0x02, DPSS)
                        SSZE = Zero
                        DPSS = (Arg0 & One)
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Method (PX06, 1, NotSerialized)
                    {
                        CreateWordField (ATPB, Zero, SSZE)
                        CreateWordField (ATPB, 0x02, DPED)
                        SSZE = Zero
                        DPED = (Arg0 & One)
                        CMSW (0x3E, DPED)
                        If ((^^^WMID.BAEF == Zero))
                        {
                            If ((BKEY == One))
                            {
                                If ((DPED == Zero))
                                {
                                    ^^^LPCB.EC0.BPWN = One
                                }
                                Else
                                {
                                    ^^^LPCB.EC0.BPWN = Zero
                                }
                            }
                        }

                        BKEY = Zero
                        Return (ATPB) /* \_SB_.PCI0.P0P2.VGA_.ATPB */
                    }

                    Name (TVGA, Buffer (0xFC00)
                    {
                         0x00                                             // .
                    })
                    Method (ATRM, 2, Serialized)
                    {
                        Local0 = (Arg0 + Arg1)
                        If ((Local0 <= SROM))
                        {
                            Local1 = (Arg1 * 0x08)
                            Local2 = (Arg0 * 0x08)
                            TVGA = VROM /* \VROM */
                            CreateField (TVGA, Local2, Local1, TEMP)
                            Name (RETB, Buffer (Arg1){})
                            RETB = TEMP /* \_SB_.PCI0.P0P2.VGA_.ATRM.TEMP */
                            Return (RETB) /* \_SB_.PCI0.P0P2.VGA_.ATRM.RETB */
                        }
                        ElseIf ((Arg0 < SROM))
                        {
                            Local3 = (SROM - Arg0)
                            Local1 = (Local3 * 0x08)
                            Local2 = (Arg0 * 0x08)
                            TVGA = VROM /* \VROM */
                            CreateField (TVGA, Local2, Local1, TEM)
                            Name (RETC, Buffer (Local3){})
                            RETC = TEM /* \_SB_.PCI0.P0P2.VGA_.ATRM.TEM_ */
                            Return (RETC) /* \_SB_.PCI0.P0P2.VGA_.ATRM.RETC */
                        }
                        Else
                        {
                            Name (RETD, Buffer (One){})
                            Return (RETD) /* \_SB_.PCI0.P0P2.VGA_.ATRM.RETD */
                        }
                    }

                    Name (ATIB, Buffer (0x0100){})
                    Method (ATIF, 2, Serialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            Return (AF00 ())
                        }

                        If ((Arg0 == One))
                        {
                            Return (AF01 ())
                        }

                        If ((Arg0 == 0x02))
                        {
                            Return (AF02 ())
                        }

                        If ((Arg0 == 0x03))
                        {
                            Return (AF03 (DerefOf (Arg1 [0x02]), DerefOf (Arg1 [0x04])))
                        }
                        Else
                        {
                            CreateWordField (ATIB, Zero, SSZE)
                            CreateWordField (ATIB, 0x02, VERN)
                            CreateDWordField (ATIB, 0x04, NMSK)
                            CreateDWordField (ATIB, 0x08, SFUN)
                            SSZE = Zero
                            VERN = Zero
                            NMSK = Zero
                            SFUN = Zero
                            Return (ATIB) /* \_SB_.PCI0.P0P2.VGA_.ATIB */
                        }
                    }

                    Method (AF00, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        SSZE = 0x0C
                        VERN = One
                        NMSK = 0x51
                        NMSF = 0x51
                        SFUN = 0x07
                        Return (ATIB) /* \_SB_.PCI0.P0P2.VGA_.ATIB */
                    }

                    Method (AF01, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, VMSK)
                        CreateDWordField (ATIB, 0x06, FLGS)
                        SSZE = 0x0A
                        VMSK = 0x03
                        FLGS = One
                        Return (ATIB) /* \_SB_.PCI0.P0P2.VGA_.ATIB */
                    }

                    Name (PSBR, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    Name (SEXM, Zero)
                    Name (STHG, Zero)
                    Name (STHI, Zero)
                    Name (SFPG, Zero)
                    Name (SFPI, Zero)
                    Name (SSPS, Zero)
                    Name (SSDM, 0x0A)
                    Name (SCDY, Zero)
                    Name (NMSF, Zero)
                    Name (SACC, Buffer (0x03)
                    {
                         0x01, 0x02, 0x03                                 // ...
                    })
                    Name (SACH, Buffer (0x03)
                    {
                         0x01, 0x08, 0x09                                 // ...
                    })
                    Name (SACT, Buffer (0x05)
                    {
                         0x01, 0x02, 0x08, 0x03, 0x09                     // .....
                    })
                    Method (AF02, 0, NotSerialized)
                    {
                        CreateBitField (PSBR, Zero, PDSW)
                        CreateBitField (PSBR, One, PEXM)
                        CreateBitField (PSBR, 0x02, PTHR)
                        CreateBitField (PSBR, 0x03, PFPS)
                        CreateBitField (PSBR, 0x04, PSPS)
                        CreateBitField (PSBR, 0x05, PDCC)
                        CreateBitField (PSBR, 0x06, PDDS)
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, PSBI)
                        CreateByteField (ATIB, 0x06, EXPM)
                        CreateByteField (ATIB, 0x07, THRM)
                        CreateByteField (ATIB, 0x08, THID)
                        CreateByteField (ATIB, 0x09, FPWR)
                        CreateWordField (ATIB, 0x0A, FPID)
                        CreateWordField (ATIB, 0x0B, SPWR)
                        SSZE = 0x0C
                        PSBI = PSBR /* \_SB_.PCI0.P0P2.VGA_.PSBR */
                        If (PDSW)
                        {
                            PDSW = Zero
                        }

                        If (PEXM)
                        {
                            EXPM = SEXM /* \_SB_.PCI0.P0P2.VGA_.SEXM */
                            SEXM = Zero
                            PEXM = Zero
                        }

                        If (PTHR)
                        {
                            THRM = STHG /* \_SB_.PCI0.P0P2.VGA_.STHG */
                            THID = STHI /* \_SB_.PCI0.P0P2.VGA_.STHI */
                            STHG = Zero
                            STHI = Zero
                            PTHR = Zero
                        }

                        If (PFPS)
                        {
                            FPWR = SFPG /* \_SB_.PCI0.P0P2.VGA_.SFPG */
                            FPID = SFPI /* \_SB_.PCI0.P0P2.VGA_.SFPI */
                            SFPG = Zero
                            SFPI = Zero
                            PFPS = Zero
                        }

                        If (PSPS)
                        {
                            SPWR = SSPS /* \_SB_.PCI0.P0P2.VGA_.SSPS */
                            PSPS = Zero
                        }

                        If (PDCC)
                        {
                            PDCC = Zero
                        }

                        If (PDDS)
                        {
                            PDDS = Zero
                        }

                        Return (ATIB) /* \_SB_.PCI0.P0P2.VGA_.ATIB */
                    }

                    Method (AF03, 2, NotSerialized)
                    {
                        Name (NXTD, Zero)
                        Name (INDX, Zero)
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, SSDP)
                        CreateWordField (ATIB, 0x04, SCDP)
                        SSDP = Arg0
                        SCDP = Arg1
                        Local1 = SSDP /* \_SB_.PCI0.P0P2.VGA_.AF03.SSDP */
                        Local1 &= 0x0B
                        Local2 = SCDP /* \_SB_.PCI0.P0P2.VGA_.AF03.SCDP */
                        Local2 |= One
                        Local0 = Zero
                        INDX = 0x03
                        If ((SCDP == 0x0B))
                        {
                            INDX = 0x05
                        }

                        While ((Local0 < INDX))
                        {
                            If ((Local2 == 0x03))
                            {
                                Local3 = DerefOf (SACC [Local0])
                            }
                            ElseIf ((Local2 == 0x09))
                            {
                                Local3 = DerefOf (SACH [Local0])
                            }
                            Else
                            {
                                Local3 = DerefOf (SACT [Local0])
                            }

                            If ((Local3 == Local1))
                            {
                                Local0++
                                If ((Local0 == INDX))
                                {
                                    Local0 = Zero
                                }

                                NXTD = Local0
                                Local0 = INDX /* \_SB_.PCI0.P0P2.VGA_.AF03.INDX */
                            }
                            Else
                            {
                                Local0++
                            }
                        }

                        If ((NXTD == INDX))
                        {
                            SSDP = Zero
                        }
                        Else
                        {
                            Local0 = NXTD /* \_SB_.PCI0.P0P2.VGA_.AF03.NXTD */
                            If ((Local2 == 0x03))
                            {
                                Local3 = DerefOf (SACC [Local0])
                            }
                            ElseIf ((Local2 == 0x09))
                            {
                                Local3 = DerefOf (SACH [Local0])
                            }
                            Else
                            {
                                Local3 = DerefOf (SACT [Local0])
                            }

                            SSDP = Local3
                        }

                        SSZE = 0x04
                        Return (ATIB) /* \_SB_.PCI0.P0P2.VGA_.ATIB */
                    }

                    Method (AFN0, 0, Serialized)
                    {
                        CreateBitField (PSBR, Zero, PDSW)
                        If ((NMSF & One))
                        {
                            PDSW = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }

                    Method (AFN1, 1, Serialized)
                    {
                        If ((NMSF & 0x02))
                        {
                            Local0 = Arg0
                            Local0 &= 0x03
                            SEXM = Local0
                            CreateBitField (PSBR, One, PEXM)
                            PEXM = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }

                    Method (AFN2, 2, Serialized)
                    {
                        If ((NMSF & 0x04))
                        {
                            Local0 = Arg0
                            STHI = Local0
                            Local0 = Arg1
                            STHG = Local0 &= 0x03
                            CreateBitField (PSBR, 0x02, PTHR)
                            PTHR = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }

                    Method (AFN3, 2, Serialized)
                    {
                        If ((NMSF & 0x08))
                        {
                            Local0 = Arg0
                            SFPI = Local0
                            Local0 = Arg1
                            SFPG = Local0 &= 0x03
                            CreateBitField (PSBR, 0x03, PFPS)
                            PFPS = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }

                    Method (AFN4, 1, Serialized)
                    {
                        If ((NMSF & 0x10))
                        {
                            Local0 = Arg0
                            Local1 = SSPS /* \_SB_.PCI0.P0P2.VGA_.SSPS */
                            SSPS = Local0
                            CreateBitField (PSBR, 0x04, PSPS)
                            If ((Local0 != Local1))
                            {
                                PSPS = One
                                Notify (VGA, 0x81) // Information Change
                            }
                        }
                    }

                    Method (AFN5, 0, Serialized)
                    {
                        CreateBitField (PSBR, 0x05, PDCC)
                        If ((NMSF & 0x20))
                        {
                            PDCC = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }

                    Method (AFN6, 0, Serialized)
                    {
                        CreateBitField (PSBR, 0x06, PDDS)
                        If ((NMSF & 0x40))
                        {
                            PDDS = One
                            Notify (VGA, 0x81) // Information Change
                        }
                    }
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
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

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (BAT0)
                {
                    Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (PBIF, Package (0x0D)
                    {
                        One, 
                        0x0FA0, 
                        0x0FA0, 
                        One, 
                        0x39D0, 
                        0x0190, 
                        0x78, 
                        0x0108, 
                        0x0EC4, 
                        "Li_Ion_4000mA ", 
                        "1234", 
                        "Lion", 
                        "Acer "
                    })
                    Name (PBST, Package (0x04)
                    {
                        One, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0x39D0
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ECON)
                        {
                            If (^^EC0.BAL1)
                            {
                                Sleep (0xC8)
                                Return (0x1F)
                            }
                            Else
                            {
                                Sleep (0xC8)
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            Sleep (0xC8)
                            Return (0x1F)
                        }
                    }

                    Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                    {
                        If (ECON)
                        {
                            Sleep (0x64)
                            PBIF [One] = ^^EC0.BDC0 /* \_SB_.PCI0.LPCB.EC0_.BDC0 */
                            Sleep (0x64)
                            PBIF [0x02] = ^^EC0.BFC0 /* \_SB_.PCI0.LPCB.EC0_.BFC0 */
                            Sleep (0x64)
                            PBIF [0x04] = ^^EC0.BDV0 /* \_SB_.PCI0.LPCB.EC0_.BDV0 */
                            Sleep (0x64)
                            Local2 = ^^EC0.BDC0 /* \_SB_.PCI0.LPCB.EC0_.BDC0 */
                            Divide (Local2, 0x64, Local6, Local2)
                            Local3 = (Local2 * 0x05)
                            PBIF [0x05] = Local3
                            Local4 = (Local2 * 0x03)
                            PBIF [0x06] = Local4
                            Sleep (0x64)
                            If ((OSYS >= 0x07D6))
                            {
                                ToHexString (^^EC0.BSN0, Local2)
                                Mid (Local2, 0x02, 0x04, Local3)
                                PBIF [0x0A] = Local3
                                Sleep (0x64)
                            }

                            Local1 = ^^EC0.BTMF /* \_SB_.PCI0.LPCB.EC0_.BTMF */
                            Sleep (0x64)
                            If ((Local1 == One))
                            {
                                PBIF [0x0C] = "SANYO "
                            }
                            ElseIf ((Local1 == 0x02))
                            {
                                PBIF [0x0C] = "SONY "
                            }
                            ElseIf ((Local1 == 0x04))
                            {
                                PBIF [0x0C] = "PANASONIC "
                            }
                            ElseIf ((Local1 == 0x03))
                            {
                                PBIF [0x0C] = "Simplo "
                            }
                            Else
                            {
                                PBIF [0x0C] = "COMPAL "
                            }
                        }

                        Return (PBIF) /* \_SB_.PCI0.LPCB.BAT0.PBIF */
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        If (ECON)
                        {
                            Sleep (0x64)
                            Local0 = ^^EC0.BST0 /* \_SB_.PCI0.LPCB.EC0_.BST0 */
                            Local0 &= 0x07
                            PBST [Zero] = Local0
                            Sleep (0x64)
                            Local2 = ^^EC0.GAU0 /* \_SB_.PCI0.LPCB.EC0_.GAU0 */
                            Sleep (0x64)
                            Local3 = ^^EC0.BPV0 /* \_SB_.PCI0.LPCB.EC0_.BPV0 */
                            Sleep (0x64)
                            Local1 = ^^EC0.BFC0 /* \_SB_.PCI0.LPCB.EC0_.BFC0 */
                            Sleep (0x64)
                            If (Local2)
                            {
                                Local2 *= Local1
                                Divide (Local2, 0x64, Local6, Local2)
                                If (Local6)
                                {
                                    Local2++
                                }
                            }

                            Local1 = ^^EC0.BAC0 /* \_SB_.PCI0.LPCB.EC0_.BAC0 */
                            If (Local1 &= 0x8000)
                            {
                                Local1 = ^^EC0.BAC0 /* \_SB_.PCI0.LPCB.EC0_.BAC0 */
                                Local1 = (0xFFFF - Local1)
                            }
                            Else
                            {
                                Local1 = Zero
                            }

                            Sleep (0x64)
                            PBST [One] = Local1
                            PBST [0x02] = Local2
                            PBST [0x03] = Local3
                        }

                        Return (PBST) /* \_SB_.PCI0.LPCB.BAT0.PBST */
                    }
                }

                Device (AC)
                {
                    Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        If (ECON)
                        {
                            PWRS = ^^EC0.ADPT /* \_SB_.PCI0.LPCB.EC0_.ADPT */
                            Sleep (0x01F4)
                        }

                        Return (PWRS) /* \PWRS */
                    }
                }

                Device (PWRB)
                {
                    Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
                }

                Device (LID0)
                {
                    Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                    Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                    {
                        Return (LPDL) /* \LPDL */
                    }
                }

                Device (SLPB)
                {
                    Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0E)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0E._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x006C,             // Range Minimum
                            0x006C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0xFF2C,             // Range Minimum
                            0xFF2C,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Name (BKFG, Zero)
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
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
                        Return (BFFR) /* \_SB_.PCI0.LPCB.EC0_._CRS.BFFR */
                    }

                    Name (_ADR, 0x00020000)  // _ADR: Address
                    OperationRegion (HDCS, PCI_Config, Zero, One)
                    Field (HDCS, ByteAcc, NoLock, Preserve)
                    {
                        OBV,    8
                    }

                    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                            ,   3, 
                        LANC,   1, 
                        BPWN,   1, 
                        Offset (0x01), 
                        BTNN,   8, 
                        Offset (0x03), 
                        LMEN,   1, 
                        Offset (0x08), 
                        DSPM,   1, 
                        Offset (0x19), 
                        BATD,   56, 
                        Offset (0x60), 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMDR,   32, 
                        BCNT,   8, 
                        SMAA,   8, 
                        SMD0,   8, 
                        SMD1,   8, 
                        Offset (0x90), 
                        Offset (0x91), 
                        Offset (0x92), 
                        Offset (0x93), 
                        Offset (0x94), 
                        ERIB,   16, 
                        ERBD,   8, 
                        Offset (0x98), 
                        Offset (0x99), 
                        OSIF,   1, 
                        Offset (0x9A), 
                        BAL1,   1, 
                        BAL2,   1, 
                        BAL3,   1, 
                        BAL4,   1, 
                        BCL1,   1, 
                        BCL2,   1, 
                        BCL3,   1, 
                        BCL4,   1, 
                        BPU1,   1, 
                        BPU2,   1, 
                        BPU3,   1, 
                        BPU4,   1, 
                        BOS1,   1, 
                        BOS2,   1, 
                        BOS3,   1, 
                        BOS4,   1, 
                        PHDD,   1, 
                        IFDD,   1, 
                        IODD,   1, 
                        SHDD,   1, 
                        LS20,   1, 
                        EFDD,   1, 
                        ECRT,   1, 
                        Offset (0x9D), 
                        SBTN,   1, 
                        VIDO,   1, 
                        VOLD,   1, 
                        VOLU,   1, 
                        MUTE,   1, 
                        CONT,   1, 
                        BRGT,   1, 
                        HBTN,   1, 
                        S4SE,   1, 
                        SKEY,   1, 
                        BKEY,   1, 
                        TKEY,   1, 
                        FKEY,   1, 
                        DVDM,   1, 
                        DIGM,   1, 
                        CDLK,   1, 
                            ,   1, 
                        LIDO,   1, 
                        PMEE,   1, 
                        PBET,   1, 
                        RIIN,   1, 
                        BTWK,   1, 
                        DKIN,   1, 
                        Offset (0xA0), 
                            ,   6, 
                        SWTH,   1, 
                        HWTH,   1, 
                        DKT0,   1, 
                        DKT1,   1, 
                            ,   2, 
                        OSUD,   1, 
                        OSDK,   1, 
                        OSSU,   1, 
                        DKCG,   1, 
                        ODTS,   8, 
                        S1LD,   1, 
                        S3LD,   1, 
                        VGAQ,   1, 
                        PCMQ,   1, 
                        PCMR,   1, 
                        ADPT,   1, 
                        SYS6,   1, 
                        SYS7,   1, 
                        PWAK,   1, 
                        MWAK,   1, 
                        LWAK,   1, 
                        RWAK,   1, 
                            ,   2, 
                        KWAK,   1, 
                        MSWK,   1, 
                        CCAC,   1, 
                        AOAC,   1, 
                        BLAC,   1, 
                        PSRC,   1, 
                        BOAC,   1, 
                        LCAC,   1, 
                        AAAC,   1, 
                        ACAC,   1, 
                        PCEC,   8, 
                        THON,   8, 
                        THSD,   8, 
                        THEM,   8, 
                        TCNL,   8, 
                        THRS,   8, 
                        THSE,   8, 
                        FSSN,   4, 
                        FANU,   4, 
                        PTVL,   3, 
                            ,   3, 
                        TTSR,   1, 
                        TTHR,   1, 
                        TSTH,   1, 
                        TSBC,   1, 
                        TSBF,   1, 
                        TSPL,   1, 
                        TSBT,   1, 
                            ,   2, 
                        THTA,   1, 
                        CTMP,   8, 
                        LTMP,   8, 
                        SKTA,   8, 
                        SKTB,   8, 
                        SKTC,   8, 
                        SKTD,   8, 
                        NBTP,   8, 
                        LANP,   1, 
                        LCDS,   1, 
                        Offset (0xB8), 
                        BTPV,   8, 
                        BRTS,   8, 
                        CTRS,   8, 
                        WLAT,   1, 
                        BTAT,   1, 
                        WLEX,   1, 
                        BTEX,   1, 
                        KLSW,   1, 
                        WLOK,   1, 
                        D3GT,   1, 
                        D3GX,   1, 
                        PJID,   8, 
                        CPUN,   8, 
                        THFN,   8, 
                        MLED,   1, 
                        SCHG,   1, 
                        SCCF,   1, 
                        SCPF,   1, 
                        ACIS,   1, 
                        Offset (0xC0), 
                            ,   4, 
                        BTMF,   3, 
                        BTY0,   1, 
                        BST0,   8, 
                        BRC0,   16, 
                        BSN0,   16, 
                        BPV0,   16, 
                        BDV0,   16, 
                        BDC0,   16, 
                        BFC0,   16, 
                        GAU0,   8, 
                        BSCY,   8, 
                        BSCU,   16, 
                        BAC0,   16, 
                        BTW0,   8, 
                        BATV,   8, 
                        BPTC,   8, 
                        BTTC,   8, 
                        BTMA,   16, 
                        BTSC,   8, 
                        BCIX,   8, 
                        CCBA,   8, 
                        CBOT,   8, 
                        BTSS,   16, 
                        OVCC,   8, 
                        CCFC,   8, 
                        BADC,   8, 
                        BSC1,   16, 
                        BSC2,   16, 
                        BSC3,   16, 
                        BSC4,   16, 
                        BDME,   16, 
                        Offset (0xEE), 
                        Offset (0xEF), 
                        Offset (0xF0), 
                        BTS1,   8, 
                        BTS2,   8, 
                        BSCS,   16, 
                        BDAD,   16, 
                        BACV,   16, 
                        Offset (0xF9), 
                        BATM,   16
                    }

                    OperationRegion (CCLK, SystemIO, 0x0410, 0x04)
                    Field (CCLK, DWordAcc, NoLock, Preserve)
                    {
                            ,   1, 
                        DUTY,   3, 
                        THEN,   1, 
                        Offset (0x01), 
                        FTT,    1, 
                            ,   8, 
                        TSTS,   1
                    }

                    Mutex (FAMX, 0x00)
                    Method (FANG, 1, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        ERIB = Arg0
                        Local0 = ERBD /* \_SB_.PCI0.LPCB.EC0_.ERBD */
                        Release (FAMX)
                        Return (Local0)
                    }

                    Method (FANW, 2, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        ERIB = Arg0
                        ERBD = Arg1
                        Release (FAMX)
                        Return (Arg1)
                    }

                    Method (TUVR, 1, NotSerialized)
                    {
                        Return (0x03)
                    }

                    Method (THRO, 1, NotSerialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            Return (TTHR) /* \_SB_.PCI0.LPCB.EC0_.TTHR */
                        }
                        ElseIf ((Arg0 == One))
                        {
                            Return (PTVL) /* \_SB_.PCI0.LPCB.EC0_.PTVL */
                        }
                        ElseIf ((Arg0 == 0x02))
                        {
                            Return (TTHR) /* \_SB_.PCI0.LPCB.EC0_.TTHR */
                        }
                        Else
                        {
                            Return (0xFF)
                        }
                    }

                    Method (CLCK, 1, NotSerialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            THEN = Zero
                        }
                        Else
                        {
                            DUTY = Arg0
                            THEN = One
                        }

                        Return (THEN) /* \_SB_.PCI0.LPCB.EC0_.THEN */
                    }

                    Method (PCLK, 0, NotSerialized)
                    {
                        Local0 = PTVL /* \_SB_.PCI0.LPCB.EC0_.PTVL */
                        If ((Local0 == Zero))
                        {
                            THEN = Zero
                        }
                        Else
                        {
                            Local0 = ~Local0
                            Local0 += One
                            Local0 &= 0x07
                            DUTY = Local0
                            If ((Local0 == Zero))
                            {
                                THEN = Zero
                            }
                            Else
                            {
                                THEN = One
                            }
                        }
                    }

                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            ECON = Arg1
                            If (LIDO)
                            {
                                ^^^GFX0.GLID (Zero)
                            }
                            Else
                            {
                                ^^^GFX0.GLID (One)
                            }

                            ^^^GFX0.GLID (One)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((OSYS >= 0x07D6))
                        {
                            If ((OBV == 0xFF))
                            {
                                Notify (^^^P0P2.VGA.LCD, 0x87) // Device-Specific
                            }
                            Else
                            {
                                ^^^P0P2.VGA.PLAT ()
                                If ((^^^P0P2.VGA.DPMG == 0x02))
                                {
                                    Notify (^^^P0P2.VGA.LCD, 0x87) // Device-Specific
                                    P80H = 0x11
                                }
                                Else
                                {
                                    Notify (^^^GFX0.DD03, 0x87) // Device-Specific
                                    P80H = One
                                }
                            }
                        }
                        ElseIf ((OBV != 0xFF))
                        {
                            Local1 = BRTS /* \_SB_.PCI0.LPCB.EC0_.BRTS */
                            Local1 += One
                            ^^^GFX0.AINT (One, (Local1 * 0x0A))
                        }
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((OSYS >= 0x07D6))
                        {
                            If ((OBV == 0xFF))
                            {
                                Notify (^^^P0P2.VGA.LCD, 0x86) // Device-Specific
                            }
                            Else
                            {
                                ^^^P0P2.VGA.PLAT ()
                                If ((^^^P0P2.VGA.DPMG == 0x02))
                                {
                                    Notify (^^^P0P2.VGA.LCD, 0x86) // Device-Specific
                                    P80H = 0x12
                                }
                                Else
                                {
                                    Notify (^^^GFX0.DD03, 0x86) // Device-Specific
                                    P80H = 0x02
                                }
                            }
                        }
                        ElseIf ((OBV != 0xFF))
                        {
                            Local1 = BRTS /* \_SB_.PCI0.LPCB.EC0_.BRTS */
                            Local1 += One
                            ^^^GFX0.AINT (One, (Local1 * 0x0A))
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Debug = "_Q1C"
                        ^^^P0P2.VGA.PLAT ()
                        If ((^^^P0P2.VGA.DPMG == One))
                        {
                            If (!^^^GFX0.DRDY)
                            {
                                OSMI (0x91)
                            }
                            ElseIf ((^^^GFX0.CPDS (0x0100) || ^^^GFX0.CPDS (0x80007330)))
                            {
                                ^^^GFX0.GHDS (One)
                            }
                        }

                        If ((^^^P0P2.VGA.DPMG == 0x02))
                        {
                            If ((^^^GFX0.VID == 0x8086))
                            {
                                ^^^GFX0.AFN0 ()
                            }
                            Else
                            {
                                ^^^P0P2.VGA.AFN0 ()
                            }
                        }

                        If ((^^^P0P2.VGA.DPMG == 0x03))
                        {
                            Notify (^^^P0P2.VGA, 0x80) // Status Change
                            VIDO = Zero
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x55
                        ETNS = PTVL /* \_SB_.PCI0.LPCB.EC0_.PTVL */
                        Sleep (0x64)
                        OSMI (0x94)
                        Sleep (0x01F4)
                        P80H = 0xAA
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (BAT0, 0x81) // Information Change
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^^^WMID.BAEF == One))
                        {
                            Local1 = BTAT /* \_SB_.PCI0.LPCB.EC0_.BTAT */
                            Local2 = ^^^WMID.BLTD /* \_SB_.PCI0.WMID.BLTD */
                            Local2 += Local1
                            ^^^WMID.NTDC = Local2
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (AC, Zero) // Bus Check
                        Sleep (0x03F0)
                        Notify (BAT0, 0x80) // Status Change
                        PWRS = One
                        PNOT ()
                        If ((OSYS <= 0x07D6))
                        {
                            BLAN = 0x02
                        }
                    }

                    Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (AC, One) // Device Check
                        Sleep (0x03F0)
                        Notify (BAT0, 0x80) // Status Change
                        PWRS = Zero
                        PNOT ()
                        If ((OSYS <= 0x07D6))
                        {
                            BLAN = 0x03
                        }
                    }

                    Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((TUBM == One))
                        {
                            \_PR.CPU0._PPC = One
                            PNOT ()
                        }
                    }

                    Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((TUBM == One))
                        {
                            \_PR.CPU0._PPC = Zero
                            PNOT ()
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^^^WMID.BAEF == One))
                        {
                            Local1 = WLAT /* \_SB_.PCI0.LPCB.EC0_.WLAT */
                            Local2 = ^^^WMID.WLSD /* \_SB_.PCI0.WMID.WLSD */
                            Local2 += Local1
                            ^^^WMID.NTDC = Local2
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x61
                        If ((^^^WMID.BAEF == One))
                        {
                            BPWN ^= One
                            Local1 = Zero
                            If ((BPWN == One))
                            {
                                Local1 = One
                            }

                            Local2 = ^^^WMID.BUOF /* \_SB_.PCI0.WMID.BUOF */
                            Local2 += Local1
                            ^^^WMID.NTDC = Local2
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^^^WMID.BAEF == One))
                        {
                            Local1 = One
                            If ((LANC == One))
                            {
                                Local1 = Zero
                            }

                            Local2 = ^^^WMID.LANI /* \_SB_.PCI0.WMID.LANI */
                            Local2 += Local1
                            ^^^WMID.NTDC = Local2
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^^^WMID.BAEF == One))
                        {
                            Local1 = Zero
                            If ((LCDS == One))
                            {
                                Local1 = One
                            }

                            Local2 = ^^^WMID.LDOF /* \_SB_.PCI0.WMID.LDOF */
                            Local2 += Local1
                            ^^^WMID.NTDC = Local2
                            Notify (WMID, 0x80) // Status Change
                        }
                    }

                    Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (^^^WMID.LMST)
                        {
                            FEBC [Zero] = One
                            FEBC [One] = BTNN /* \_SB_.PCI0.LPCB.EC0_.BTNN */
                            Notify (WMID, 0xBC) // Device-Specific
                        }
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (^^^WMID.LMST)
                        {
                            FEBC [Zero] = 0x02
                            FEBC [One] = BTNN /* \_SB_.PCI0.LPCB.EC0_.BTNN */
                            Notify (WMID, 0xBC) // Device-Specific
                        }
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                }

                Device (MSE0)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((TPAD & One) == One))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (MSS0)
                {
                    Name (_HID, EisaId ("SYN1B16"))  // _HID: Hardware ID
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1B00"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13") /* PS/2 Mouse */
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((TPAD & One) == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }
                }

                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x03, 
                    0x03
                })
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x04, 
                    0x03
                })
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    0x03
                })
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0E, 
                    0x03
                })
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                 0x81, 0x00, 0x30, 0x00                           // ..0.
                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                 0x81, 0x00, 0x30, 0x00                           // ..0.
                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                 0x81, 0x00, 0x30, 0x00                           // ..0.
                            })
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                 0x81, 0x00, 0x30, 0x00                           // ..0.
                            })
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                 0x81, 0x00, 0x30, 0x00                           // ..0.
                            })
                        }
                    }
                }

                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x03
                })
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
            }

            Device (USB7)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }
                                }
                                ElseIf ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                ElseIf ((_T_0 == 0x02))
                                {
                                    Return (SDGV) /* \SDGV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x25, 
                    0x03
                })
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
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

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
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

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
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

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
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

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
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

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
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

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A) /* \_SB_.AR0A */
                    }

                    Return (PR0A) /* \_SB_.PR0A */
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B) /* \_SB_.AR0B */
                    }

                    Return (PR0B) /* \_SB_.PR0B */
                }
            }

            Device (IO10)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IO1X)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (IIO0)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IIOX)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (THRM)
            {
                Name (_ADR, 0x001F0006)  // _ADR: Address
                OperationRegion (THEL, PCI_Config, Zero, 0xF0)
                Field (THEL, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    THEN,   1, 
                    ADDR,   2, 
                    PREF,   1, 
                    TRSV,   8, 
                    TBAR,   20
                }
            }

            Device (PEG5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PR0C) /* \_SB_.PR0C */
                }
            }

            Device (WMID)
            {
                Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                Name (_UID, "APGe")  // _UID: Unique ID
                Name (ERRD, 0x00010000)
                Name (BTMP, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (BODD, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (BUFF, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                CreateByteField (BUFF, Zero, BF00)
                CreateByteField (BUFF, One, BF01)
                CreateByteField (BUFF, 0x02, BF02)
                CreateByteField (BUFF, 0x03, BF03)
                CreateByteField (BUFF, 0x04, BF04)
                CreateByteField (BUFF, 0x05, BF05)
                CreateByteField (BUFF, 0x06, BF06)
                CreateByteField (BUFF, 0x07, BF07)
                Name (BUF1, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (AADS, Buffer (0x04)
                {
                     0x00                                             // .
                })
                CreateField (AADS, Zero, 0x04, AS00)
                CreateField (AADS, 0x04, One, AS01)
                CreateField (AADS, 0x05, One, AS02)
                CreateField (AADS, 0x06, One, AS03)
                CreateField (AADS, 0x07, One, AS04)
                CreateField (AADS, 0x10, 0x10, AS05)
                Name (BAEF, Zero)
                Name (BADF, Zero)
                Name (BADG, Package (0x0F)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x00010000, 
                    0x00010000, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x00010000, 
                    Zero, 
                    Zero
                })
                Name (WLDS, Zero)
                Name (WLED, Zero)
                Name (BTDS, Zero)
                Name (BTED, Zero)
                Name (BLDS, Zero)
                Name (BLED, Zero)
                Name (NTDC, Zero)
                Name (NTDV, Zero)
                Name (WLSD, 0x0100)
                Name (WLSE, 0x0101)
                Name (BLTD, 0x0200)
                Name (BLTE, 0x0201)
                Name (LBL0, 0x0300)
                Name (LBL1, 0x0301)
                Name (LBL2, 0x0302)
                Name (LBL3, 0x0303)
                Name (LBL4, 0x0304)
                Name (LBL5, 0x0305)
                Name (LBL6, 0x0306)
                Name (LBL7, 0x0307)
                Name (LBL8, 0x0308)
                Name (LBL9, 0x0309)
                Name (LBLA, 0x030A)
                Name (LBLB, 0x030B)
                Name (LBLC, 0x030C)
                Name (LBLD, 0x030D)
                Name (LBLE, 0x030E)
                Name (LBLF, 0x030F)
                Name (CADI, 0x0401)
                Name (CADO, 0x0400)
                Name (GSEE, 0x0501)
                Name (GSED, 0x0502)
                Name (VAPI, 0x0601)
                Name (VAPO, 0x0600)
                Name (WBBO, 0x0701)
                Name (WBBI, 0x0700)
                Name (G3MD, 0x0800)
                Name (G3ME, 0x0801)
                Name (LANI, 0x0900)
                Name (LANO, 0x0901)
                Name (LDOF, 0x0A00)
                Name (LDON, 0x0A01)
                Name (BUOF, 0x0B00)
                Name (BUON, 0x0B01)
                Name (FNKE, 0x00010002)
                Name (FNF5, 0x00015001)
                Name (BBSB, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateField (BBSB, Zero, 0x10, BBD0)
                CreateField (BBSB, 0x10, 0x10, BBD1)
                Name (TLS0, Zero)
                Name (TLS1, One)
                Name (TLS2, 0x02)
                Name (TLS3, 0x03)
                Name (TLS4, 0x04)
                Name (TLS5, 0x05)
                Name (TLS6, 0x06)
                Name (TLS7, 0x07)
                Name (BCDS, Package (0x0D)
                {
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000, 
                    0x00010000
                })
                Name (BDDS, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateField (BDDS, Zero, 0x10, BDD0)
                CreateField (BDDS, 0x10, 0x10, BDD1)
                Name (DSY0, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (DSY1, Buffer (0x18)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (DSY2, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (DSY3, Buffer (0x18)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (DSY4, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (DSY5, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                CreateField (DSY0, Zero, 0x40, DY00)
                CreateField (DSY0, 0x40, 0x40, DY01)
                CreateField (DSY0, 0x80, 0x40, DY02)
                CreateField (DSY0, 0xC0, 0x40, DY03)
                CreateField (DSY0, 0x0100, 0x40, DY04)
                CreateField (DSY1, Zero, 0x40, DY10)
                CreateField (DSY1, 0x40, 0x40, DY11)
                CreateField (DSY1, 0x80, 0x40, DY12)
                CreateField (DSY2, Zero, 0x40, DY20)
                CreateField (DSY2, 0x40, 0x10, DY21)
                CreateField (DSY2, 0x50, 0x10, DY22)
                CreateField (DSY0, Zero, 0xC0, DSX4)
                Name (BEDS, Package (0x13)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Name (WIT0, Zero)
                Name (DSY6, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateField (DSY6, Zero, 0x20, DY60)
                CreateField (DSY6, 0x20, 0x20, DY61)
                CreateField (DSY6, 0x40, 0x20, DY62)
                CreateField (DSY6, 0x60, 0x20, DY63)
                CreateField (DSY6, 0x80, 0x20, DY64)
                Name (WPRW, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateField (WPRW, Zero, 0x08, WWD0)
                CreateField (WPRW, 0x08, 0x08, WWD1)
                CreateField (WPRW, 0x10, 0x08, WWD2)
                CreateField (WPRW, 0x18, 0x08, WWD3)
                CreateField (WPRW, 0x20, 0x08, WWD4)
                CreateField (WPRW, 0x28, 0x20, WWD5)
                Name (WPCI, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateField (WPCI, Zero, 0x08, WPIR)
                CreateField (WPCI, 0x08, 0x03, WPIF)
                CreateField (WPCI, 0x0B, 0x05, WPID)
                CreateField (WPCI, 0x10, 0x08, WPIB)
                Name (BFDS, Package (0x04)
                {
                    0x02, 
                    0x02, 
                    0x02, 
                    0x02
                })
                Name (GSTS, Zero)
                Name (BFEF, Zero)
                Name (BGEF, Zero)
                Name (BGDS, Package (0x01)
                {
                    One
                })
                Name (BOOT, Buffer (0x28)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                CreateField (BOOT, Zero, 0x80, BO01)
                CreateField (BOOT, 0x80, 0x10, BO02)
                CreateField (BOOT, 0x90, 0x08, BO03)
                CreateField (BOOT, 0x98, 0x08, BO04)
                CreateField (BOOT, Zero, 0x20, PSID)
                CreateField (BOOT, 0x20, 0x20, SUPL)
                CreateField (BOOT, 0x40, 0x0100, SUPD)
                Name (PNAM, Buffer (0x46)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
                })
                Name (LMST, Zero)
                Method (AAF1, 0, NotSerialized)
                {
                    AS00 = ^^LPCB.EC0.WLEX /* \_SB_.PCI0.LPCB.EC0_.WLEX */
                    AS01 = ^^LPCB.EC0.BTEX /* \_SB_.PCI0.LPCB.EC0_.BTEX */
                    AS02 = Zero
                    AS03 = ^^LPCB.EC0.D3GX /* \_SB_.PCI0.LPCB.EC0_.D3GX */
                    AS04 = Zero
                    AS05 = Zero
                }

                Method (WGDS, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Arg0
                    If ((_T_0 == One))
                    {
                        BADG [Zero] = ^^LPCB.EC0.WLAT /* \_SB_.PCI0.LPCB.EC0_.WLAT */
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BADG [One] = ^^LPCB.EC0.BTAT /* \_SB_.PCI0.LPCB.EC0_.BTAT */
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        BADG [0x02] = ^^LPCB.EC0.BRTS /* \_SB_.PCI0.LPCB.EC0_.BRTS */
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        BADG [0x07] = One
                    }
                    ElseIf ((_T_0 == 0x09))
                    {
                        Local0 = IHWM (0x0C, Zero)
                        BADG [0x08] = Local0
                    }
                    ElseIf ((_T_0 == 0x0A))
                    {
                        BADG [0x09] = ^^LPCB.EC0.D3GX /* \_SB_.PCI0.LPCB.EC0_.D3GX */
                    }
                    ElseIf ((_T_0 == 0x0C))
                    {
                        BADG [0x0B] = ^^LPCB.EC0.LANC /* \_SB_.PCI0.LPCB.EC0_.LANC */
                    }
                    ElseIf ((_T_0 == 0x0D))
                    {
                        BADG [0x0C] = ^^LPCB.EC0.LCDS /* \_SB_.PCI0.LPCB.EC0_.LCDS */
                    }
                    ElseIf ((_T_0 == 0x0E))
                    {
                        BADG [0x0D] = ^^LPCB.EC0.BPWN /* \_SB_.PCI0.LPCB.EC0_.BPWN */
                    }
                }

                Method (WSDS, 2, NotSerialized)
                {
                    BUFF = Arg1
                    Local0 = Arg0
                    Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                    BADG [(Local0 - One)] = Zero
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Local1
                    If ((_T_0 == Zero))
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_1 = Local0
                        If ((_T_1 == 0x04))
                        {
                            ^^LPCB.EC0.WLAT = Zero
                        }
                        ElseIf ((_T_1 == 0x05))
                        {
                            ^^LPCB.EC0.BTAT = Zero
                        }
                        ElseIf ((_T_1 == 0x06))
                        {
                            ^^LPCB.EC0.BRTS = Zero
                        }
                        ElseIf ((_T_1 == 0x07))
                        {
                            BAEF = Zero
                        }
                        ElseIf ((_T_1 == 0x0B))
                        {
                            ^^LPCB.EC0.D3GT = Zero
                        }
                        ElseIf ((_T_1 == 0x0F))
                        {
                            ^^LPCB.EC0.BPWN = Zero
                        }
                        Else
                        {
                            BADG [(Local0 - One)] = 0x0100
                        }
                    }
                    Else
                    {
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_2 = Local0
                        If ((_T_2 == 0x04))
                        {
                            ^^LPCB.EC0.WLAT = One
                        }
                        ElseIf ((_T_2 == 0x05))
                        {
                            ^^LPCB.EC0.BTAT = One
                        }
                        ElseIf ((_T_2 == 0x06))
                        {
                            ^^LPCB.EC0.BRTS = Local1
                        }
                        ElseIf ((_T_2 == 0x07))
                        {
                            BAEF = One
                        }
                        ElseIf ((_T_2 == 0x0B))
                        {
                            ^^LPCB.EC0.D3GT = One
                        }
                        ElseIf ((_T_2 == 0x0F))
                        {
                            ^^LPCB.EC0.BPWN = One
                        }
                        Else
                        {
                            BADG [(Local0 - One)] = 0x0100
                        }
                    }
                }

                Method (OEMN, 0, NotSerialized)
                {
                    If ((BGEF == One))
                    {
                        Local0 = NTDV /* \_SB_.PCI0.WMID.NTDV */
                        If ((Local0 != Zero))
                        {
                            NTDV = Zero
                            Return (Local0)
                        }
                    }

                    If ((BAEF == One))
                    {
                        Local0 = NTDC /* \_SB_.PCI0.WMID.NTDC */
                        If ((Local0 != Zero))
                        {
                            NTDC = Zero
                            Return (Local0)
                        }
                    }

                    If ((BFEF == One)){}
                }

                Method (STRL, 2, NotSerialized)
                {
                    Local0 = Arg0
                    BUFF = Arg1
                    BBSB = Zero
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Local0
                    If ((_T_0 == One))
                    {
                        Local1 = ^^LPCB.EC0.THRO (Zero)
                        If ((Local1 & One))
                        {
                            Local1 = ^^LPCB.EC0.THRO (One)
                            BBSB = Local1
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                        ^^LPCB.EC0.CLCK (Local1)
                    }
                    Else
                    {
                        BBSB = 0x00010000
                    }
                }

                Method (GCPU, 1, NotSerialized)
                {
                    DSY0 = DSY5 /* \_SB_.PCI0.WMID.DSY5 */
                    Local0 = Arg0
                    Local2 = IHWM (Zero, Arg0)
                    DSY6 = Local2
                    DY00 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY01 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    DY02 = DY62 /* \_SB_.PCI0.WMID.DY62 */
                    DY03 = DY63 /* \_SB_.PCI0.WMID.DY63 */
                }

                Method (MSRR, 1, NotSerialized)
                {
                    DSY1 = DSY3 /* \_SB_.PCI0.WMID.DSY3 */
                    DY00 = Arg0
                    Local2 = IHWM (One, Arg0)
                    DSY6 = Local2
                    DY10 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY11 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    WIT0 = Zero
                    DY12 = WIT0 /* \_SB_.PCI0.WMID.WIT0 */
                }

                Method (MSRW, 1, NotSerialized)
                {
                    DSY1 = DSY3 /* \_SB_.PCI0.WMID.DSY3 */
                    Local2 = IHWM (0x02, Arg0)
                    DSY6 = Local2
                    DY10 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                    DY11 = DY61 /* \_SB_.PCI0.WMID.DY61 */
                    WIT0 = Zero
                    DY12 = WIT0 /* \_SB_.PCI0.WMID.WIT0 */
                }

                Method (C4C3, 2, NotSerialized)
                {
                    If ((Arg0 == 0x04))
                    {
                        BTMP = Arg1
                        BCDS [0x09] = Zero
                    }
                    Else
                    {
                        BCDS [0x09] = BTMP /* \_SB_.PCI0.WMID.BTMP */
                    }
                }

                Method (CPUF, 0, NotSerialized)
                {
                    Local0 = ^^LPCB.EC0.THFN /* \_SB_.PCI0.LPCB.EC0_.THFN */
                    Local1 = (Local0 * 0x64)
                    BCDS [0x0A] = Local1
                }

                Method (CPUT, 0, NotSerialized)
                {
                    BCDS [0x0B] = ^^LPCB.EC0.CTMP /* \_SB_.PCI0.LPCB.EC0_.CTMP */
                }

                Method (PCIR, 1, NotSerialized)
                {
                    Local0 = Arg0
                    Local2 = IHWM (0x03, Arg0)
                    DY20 = Local2
                    DSY6 = Local2
                    DSY2 = DSY4 /* \_SB_.PCI0.WMID.DSY4 */
                    DY20 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                }

                Method (PCIW, 1, NotSerialized)
                {
                    Local0 = Arg0
                    DY20 = Arg0
                    Local2 = IHWM (0x04, Arg0)
                    DSY6 = Local2
                    BUFF = DY61 /* \_SB_.PCI0.WMID.DY61 */
                }

                Method (CPUS, 0, NotSerialized)
                {
                    Local2 = IHWM (0x05, Zero)
                    BUFF = Local2
                    BCDS [0x0C] = BUFF /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (PCID, 1, NotSerialized)
                {
                    Local2 = IHWM (0x06, Arg0)
                    DSY6 = Local2
                }

                Method (BTIF, 2, NotSerialized)
                {
                    Local0 = Arg0
                    BUFF = Arg1
                    If ((Local0 == 0x13))
                    {
                        Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                        BF00 = BF04 /* \_SB_.PCI0.WMID.BF04 */
                        BF04 = Local1
                    }

                    If ((Local0 == 0x0D))
                    {
                        BF00 = BF02 /* \_SB_.PCI0.WMID.BF02 */
                        Local1 = BF01 /* \_SB_.PCI0.WMID.BF01 */
                        BF00 = BF02 /* \_SB_.PCI0.WMID.BF02 */
                        Local1 = BF01 /* \_SB_.PCI0.WMID.BF01 */
                    }

                    If ((Local0 == 0x0E))
                    {
                        If ((BF00 == Zero))
                        {
                            BF00 = 0xFF
                        }
                        Else
                        {
                            Local1 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                            BF00 = One
                        }
                    }

                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = BF00 /* \_SB_.PCI0.WMID.BF00 */
                    If ((_T_0 == One))
                    {
                        If ((^^LPCB.EC0.BDC0 == Zero))
                        {
                            Local1 = 0x00020000
                            Local0--
                            BEDS [Local0] = Local1
                        }
                        Else
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = Local0
                            If ((_T_1 == One))
                            {
                                BEDS [Zero] = Zero
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                BEDS [One] = ^^LPCB.EC0.BPTC /* \_SB_.PCI0.LPCB.EC0_.BPTC */
                            }
                            ElseIf ((_T_1 == 0x03))
                            {
                                BEDS [0x02] = ^^LPCB.EC0.BPV0 /* \_SB_.PCI0.LPCB.EC0_.BPV0 */
                            }
                            ElseIf ((_T_1 == 0x04))
                            {
                                BEDS [0x03] = ^^LPCB.EC0.BSCU /* \_SB_.PCI0.LPCB.EC0_.BSCU */
                            }
                            ElseIf ((_T_1 == 0x05))
                            {
                                BEDS [0x04] = ^^LPCB.EC0.BRC0 /* \_SB_.PCI0.LPCB.EC0_.BRC0 */
                            }
                            ElseIf ((_T_1 == 0x06))
                            {
                                BEDS [0x05] = ^^LPCB.EC0.BFC0 /* \_SB_.PCI0.LPCB.EC0_.BFC0 */
                            }
                            ElseIf ((_T_1 == 0x07))
                            {
                                BEDS [0x06] = ^^LPCB.EC0.BSCY /* \_SB_.PCI0.LPCB.EC0_.BSCY */
                            }
                            ElseIf ((_T_1 == 0x08))
                            {
                                BEDS [0x07] = ^^LPCB.EC0.BDC0 /* \_SB_.PCI0.LPCB.EC0_.BDC0 */
                            }
                            ElseIf ((_T_1 == 0x09))
                            {
                                BEDS [0x08] = ^^LPCB.EC0.BDV0 /* \_SB_.PCI0.LPCB.EC0_.BDV0 */
                            }
                            ElseIf ((_T_1 == 0x0A))
                            {
                                BEDS [0x09] = ^^LPCB.EC0.BDAD /* \_SB_.PCI0.LPCB.EC0_.BDAD */
                            }
                            ElseIf ((_T_1 == 0x0B))
                            {
                                BEDS [0x0A] = ^^LPCB.EC0.BSN0 /* \_SB_.PCI0.LPCB.EC0_.BSN0 */
                            }
                            ElseIf ((_T_1 == 0x0C))
                            {
                                If ((^^LPCB.EC0.ACIS == One))
                                {
                                    ^^LPCB.EC0.PSRC = Zero
                                    BEDS [0x0B] = One
                                }
                                Else
                                {
                                    BEDS [0x0B] = 0x00020000
                                }
                            }
                            ElseIf ((_T_1 == 0x0D))
                            {
                                ^^LPCB.EC0.BTMA = Local1
                                ^^LPCB.EC0.SCCF = One
                                BEDS [0x0C] = One
                            }
                            ElseIf ((_T_1 == 0x0E))
                            {
                                ^^LPCB.EC0.BTPV = Local1
                                ^^LPCB.EC0.SCHG = Zero
                                ^^LPCB.EC0.SCPF = One
                                BEDS [0x0D] = One
                            }
                            ElseIf ((_T_1 == 0x0F)){}
                            ElseIf ((_T_1 == 0x10))
                            {
                                BEDS [0x0F] = ^^LPCB.EC0.BDME /* \_SB_.PCI0.LPCB.EC0_.BDME */
                            }
                            ElseIf ((_T_1 == 0x11))
                            {
                                If ((One & ^^LPCB.EC0.ADPT))
                                {
                                    BEDS [0x10] = 0x02BC
                                }
                                Else
                                {
                                    BEDS [0x10] = 0x0190
                                }
                            }
                            ElseIf ((_T_1 == 0x12))
                            {
                                If ((One & ^^LPCB.EC0.ADPT))
                                {
                                    BEDS [0x11] = 0x01F4
                                }
                                Else
                                {
                                    BEDS [0x11] = 0x02
                                }
                            }
                            ElseIf ((_T_1 == 0x13))
                            {
                                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_2 = BF04 /* \_SB_.PCI0.WMID.BF04 */
                                If ((_T_2 == 0x03))
                                {
                                    Local1 = ^^LPCB.EC0.BATM /* \_SB_.PCI0.LPCB.EC0_.BATM */
                                    Local1 &= 0x7FFF
                                    BEDS [0x12] = Local1
                                }
                                ElseIf ((_T_2 == 0x08))
                                {
                                    Local0 = ^^LPCB.EC0.BTTC /* \_SB_.PCI0.LPCB.EC0_.BTTC */
                                    Local0 += 0x0111
                                    Local0 *= 0x0A
                                    BEDS [0x12] = Local0
                                }
                                ElseIf ((_T_2 == 0x09))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BPV0 /* \_SB_.PCI0.LPCB.EC0_.BPV0 */
                                }
                                ElseIf ((_T_2 == 0x0A))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BSCU /* \_SB_.PCI0.LPCB.EC0_.BSCU */
                                }
                                ElseIf ((_T_2 == 0x0F))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BRC0 /* \_SB_.PCI0.LPCB.EC0_.BRC0 */
                                }
                                ElseIf ((_T_2 == 0x17))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BSCY /* \_SB_.PCI0.LPCB.EC0_.BSCY */
                                }
                                ElseIf ((_T_2 == 0x18))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BDC0 /* \_SB_.PCI0.LPCB.EC0_.BDC0 */
                                }
                                ElseIf ((_T_2 == 0x19))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BDV0 /* \_SB_.PCI0.LPCB.EC0_.BDV0 */
                                }
                                ElseIf ((_T_2 == 0x1B))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BDAD /* \_SB_.PCI0.LPCB.EC0_.BDAD */
                                }
                                ElseIf ((_T_2 == 0x1C))
                                {
                                    BEDS [0x12] = ^^LPCB.EC0.BSN0 /* \_SB_.PCI0.LPCB.EC0_.BSN0 */
                                }
                                Else
                                {
                                }
                            }
                            Else
                            {
                            }
                        }
                    }
                    Else
                    {
                        Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_3 = Local0
                        If ((_T_3 == One))
                        {
                            BEDS [Zero] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x02))
                        {
                            BEDS [One] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x03))
                        {
                            BEDS [0x02] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x04))
                        {
                            BEDS [0x03] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x05))
                        {
                            BEDS [0x04] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x06))
                        {
                            BEDS [0x05] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x07))
                        {
                            BEDS [0x06] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x08))
                        {
                            BEDS [0x07] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x09))
                        {
                            BEDS [0x08] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x0A))
                        {
                            BEDS [0x09] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x0B))
                        {
                            BEDS [0x0A] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x0C))
                        {
                            If ((^^LPCB.EC0.BDC0 == Zero))
                            {
                                BEDS [0x0B] = 0x00030000
                            }
                            Else
                            {
                                ^^LPCB.EC0.PSRC = One
                                BEDS [0x0B] = One
                            }
                        }
                        ElseIf ((_T_3 == 0x0D))
                        {
                            BEDS [0x0C] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x0E))
                        {
                            ^^LPCB.EC0.SCHG = One
                            ^^LPCB.EC0.SCPF = One
                            BEDS [0x0D] = One
                        }
                        ElseIf ((_T_3 == 0x0F))
                        {
                            BEDS [0x0E] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x10))
                        {
                            BEDS [0x0F] = 0x00020000
                        }
                        ElseIf ((_T_3 == 0x11))
                        {
                            If ((One & ^^LPCB.EC0.ADPT))
                            {
                                BEDS [0x10] = 0x02BC
                            }
                            Else
                            {
                                BEDS [0x10] = 0x0190
                            }
                        }
                        ElseIf ((_T_3 == 0x12))
                        {
                            If ((One & ^^LPCB.EC0.ADPT))
                            {
                                BEDS [0x11] = 0x01F4
                            }
                            Else
                            {
                                BEDS [0x11] = 0x02
                            }
                        }
                    }
                }

                Method (CKGS, 0, NotSerialized)
                {
                    GSTS = One
                    Return (GSTS) /* \_SB_.PCI0.WMID.GSTS */
                }

                Method (WSHP, 1, NotSerialized)
                {
                }

                Method (WSSL, 1, NotSerialized)
                {
                }

                Method (WSSP, 1, NotSerialized)
                {
                }

                Method (WSSE, 1, NotSerialized)
                {
                }

                Method (WSVE, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 == One))
                    {
                        BGEF = One
                    }
                    Else
                    {
                        BGEF = Zero
                    }

                    BGDS [Zero] = Zero
                }

                Method (GBDS, 0, NotSerialized)
                {
                    IHWM (0x07, Zero)
                    DSY4 = DI00 /* \DI00 */
                    BO01 = DSY4 /* \_SB_.PCI0.WMID.DSY4 */
                    BO02 = Zero
                    BO03 = Zero
                    BO04 = Zero
                }

                Method (SBDS, 1, NotSerialized)
                {
                    IHWM (0x08, Arg0)
                }

                Method (CPSE, 1, NotSerialized)
                {
                    IHWM (0x09, Arg0)
                    BUF1 = DI00 /* \DI00 */
                }

                Method (SPSW, 1, NotSerialized)
                {
                    IHWM (0x0A, Arg0)
                    BUF1 = DI00 /* \DI00 */
                }

                Method (CPSW, 1, NotSerialized)
                {
                    IHWM (0x0B, Arg0)
                    BUF1 = DI00 /* \DI00 */
                }

                Method (D3GE, 0, NotSerialized)
                {
                    Local0 = D3GT /* \D3GT */
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Local0
                    If ((_T_0 == Zero))
                    {
                        BUF1 = Zero
                    }
                    ElseIf ((_T_0 == One))
                    {
                        BUF1 = One
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BUF1 = 0x02
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        BUF1 = 0x03
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        BUF1 = 0x04
                    }
                    Else
                    {
                        BUF1 = 0x00010000
                    }
                }

                Method (GVGA, 0, NotSerialized)
                {
                    Local0 = DVGA /* \DVGA */
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Local0
                    If ((Match (Package (0x02)
                                    {
                                        Zero, 
                                        0xFF
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        BUF1 = Zero
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BUF1 = 0x02
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        If ((DISC == 0x03))
                        {
                            BUF1 = 0x06
                        }
                        Else
                        {
                            BUF1 = 0x03
                        }
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        BUF1 = 0x04
                    }
                    Else
                    {
                        BUF1 = 0x00010000
                    }
                }

                Method (DCCD, 0, NotSerialized)
                {
                    Local0 = CCDT /* \CCDT */
                    Local0 &= 0x0F
                    BUF1 = Local0
                }

                Method (DTPD, 0, NotSerialized)
                {
                    Local0 = TPAD /* \TPAD */
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Local0
                    If ((Match (Package (0x02)
                                    {
                                        Zero, 
                                        0xFF
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        BUF1 = Zero
                    }
                    ElseIf ((_T_0 == One))
                    {
                        BUF1 = One
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        BUF1 = 0x02
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        BUF1 = 0x03
                    }
                    Else
                    {
                        BUF1 = 0x00010000
                    }
                }

                Method (LMON, 0, NotSerialized)
                {
                    ^^LPCB.EC0.LMEN = One
                    LMST = One
                    Return (Zero)
                }

                Method (LMOF, 0, NotSerialized)
                {
                    ^^LPCB.EC0.LMEN = Zero
                    LMST = Zero
                    Return (Zero)
                }

                Method (GCMS, 2, NotSerialized)
                {
                    Local0 = Zero
                    Local1 = Zero
                    Local2 = Zero
                    Local3 = Zero
                    If (^^LPCB.EC0.WLEX)
                    {
                        If ((COMS & 0x80))
                        {
                            Local0 |= 0x80
                        }

                        If ((COMS & One))
                        {
                            Local0 |= One
                        }

                        If (^^LPCB.EC0.WLAT)
                        {
                            If ((COMS & 0x80))
                            {
                                Local1 |= 0x80
                            }

                            If ((COMS & One))
                            {
                                Local1 |= One
                            }
                        }
                        Else
                        {
                            If ((COMS & 0x80))
                            {
                                Local3 |= 0x80
                            }

                            If ((COMS & One))
                            {
                                Local3 |= One
                            }

                            Local2 = ~Local3
                            Local1 &= Local2
                        }
                    }
                    Else
                    {
                        Local2 = ~0x81
                        Local0 &= Local2
                        Local1 &= Local2
                    }

                    If (^^LPCB.EC0.BTEX)
                    {
                        Local0 |= 0x0800
                        If (^^LPCB.EC0.BTAT)
                        {
                            Local1 |= 0x0800
                        }
                        Else
                        {
                            Local2 = ~0x0800
                            Local1 &= Local2
                        }
                    }
                    Else
                    {
                        Local2 = ~0x0800
                        Local0 &= Local2
                        Local1 &= Local2
                    }

                    If (^^LPCB.EC0.D3GX)
                    {
                        Local0 |= 0x40
                        If (^^LPCB.EC0.D3GT)
                        {
                            Local1 |= 0x40
                        }
                        Else
                        {
                            Local2 = ~0x40
                            Local1 &= Local2
                        }
                    }
                    Else
                    {
                        Local2 = ~0x40
                        Local0 &= Local2
                        Local1 &= Local2
                    }

                    Arg0 = Local0
                    Arg1 = Local1
                    Return (Zero)
                }

                Method (SCMS, 2, NotSerialized)
                {
                    Local0 = Zero
                    If ((Arg1 & One))
                    {
                        If (^^LPCB.EC0.WLEX)
                        {
                            ^^LPCB.EC0.WLAT = One
                        }
                        ElseIf ((Arg0 != 0xFFFF))
                        {
                            Return (0xE2)
                        }
                    }
                    ElseIf (^^LPCB.EC0.WLEX)
                    {
                        ^^LPCB.EC0.WLAT = Zero
                    }

                    If ((COMS & 0x80))
                    {
                        If ((Arg1 & 0x80))
                        {
                            If (^^LPCB.EC0.WLEX)
                            {
                                ^^LPCB.EC0.WLAT = One
                            }
                            ElseIf ((Arg0 != 0xFFFF))
                            {
                                Return (0xE2)
                            }
                        }
                        ElseIf (^^LPCB.EC0.WLEX)
                        {
                            ^^LPCB.EC0.WLAT = Zero
                        }
                    }

                    If ((Arg1 & 0x0800))
                    {
                        If (^^LPCB.EC0.BTEX)
                        {
                            ^^LPCB.EC0.BTAT = One
                        }
                        ElseIf ((Arg0 != 0xFFFF))
                        {
                            Return (0xE2)
                        }
                    }
                    ElseIf (^^LPCB.EC0.BTEX)
                    {
                        ^^LPCB.EC0.BTAT = Zero
                    }

                    If ((Arg1 & 0x40))
                    {
                        If (^^LPCB.EC0.D3GX)
                        {
                            ^^LPCB.EC0.D3GT = One
                        }
                        ElseIf ((Arg0 != 0xFFFF))
                        {
                            Return (0xE2)
                        }
                    }
                    ElseIf (^^LPCB.EC0.D3GX)
                    {
                        ^^LPCB.EC0.D3GT = Zero
                    }

                    Return (Zero)
                }

                Method (GAPS, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SAPS, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GMES, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SMES, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GDSS, 1, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (SDSS, 2, NotSerialized)
                {
                    Return (0xE1)
                }

                Method (GOTS, 1, NotSerialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.TKEY == Zero))
                    {
                        Local0 |= 0x02
                    }

                    If (^^LPCB.EC0.BPWN)
                    {
                        Local0 |= 0x10
                    }

                    Arg0 = Local0
                    Return (Zero)
                }

                Method (SOTS, 2, NotSerialized)
                {
                    If ((Arg0 & 0x02))
                    {
                        If ((Arg1 & 0x02))
                        {
                            ^^LPCB.EC0.TKEY = Zero
                        }
                        Else
                        {
                            ^^LPCB.EC0.TKEY = One
                        }
                    }

                    If ((Arg0 & 0x10))
                    {
                        If ((Arg1 & 0x10))
                        {
                            ^^LPCB.EC0.BPWN = One
                        }
                        Else
                        {
                            ^^LPCB.EC0.BPWN = Zero
                        }
                    }

                    Return (Zero)
                }

                Name (_WDG, Buffer (0x0140)
                {
                    /* 0000 */  0x09, 0x4E, 0x76, 0x95, 0x56, 0xFB, 0x83, 0x4E,  // .Nv.V..N
                    /* 0008 */  0xB3, 0x1A, 0x37, 0x76, 0x1F, 0x60, 0x99, 0x4A,  // ..7v.`.J
                    /* 0010 */  0x41, 0x41, 0x01, 0x01, 0x58, 0xF2, 0xF4, 0x6A,  // AA..X..j
                    /* 0018 */  0x01, 0xB4, 0xFD, 0x42, 0xBE, 0x91, 0x3D, 0x4A,  // ...B..=J
                    /* 0020 */  0xC2, 0xD7, 0xC0, 0xD3, 0x42, 0x41, 0x01, 0x02,  // ....BA..
                    /* 0028 */  0xAC, 0x61, 0x1A, 0xCC, 0x56, 0x42, 0xA3, 0x41,  // .a..VB.A
                    /* 0030 */  0xB9, 0xE0, 0x05, 0xA4, 0x45, 0xAD, 0xE2, 0xF5,  // ....E...
                    /* 0038 */  0x80, 0x00, 0x01, 0x08, 0x53, 0x44, 0x8C, 0xE7,  // ....SD..
                    /* 0040 */  0x27, 0x02, 0x61, 0x48, 0x9E, 0xDE, 0xF5, 0x60,  // '.aH...`
                    /* 0048 */  0x0B, 0x4A, 0x3D, 0x39, 0x42, 0x42, 0x01, 0x02,  // .J=9BB..
                    /* 0050 */  0x7B, 0x4F, 0xE0, 0xAA, 0xC5, 0xB3, 0x65, 0x48,  // {O....eH
                    /* 0058 */  0x95, 0xD6, 0x9F, 0xAC, 0x7F, 0xF3, 0xE9, 0x2B,  // .......+
                    /* 0060 */  0x42, 0x43, 0x01, 0x02, 0x79, 0x4C, 0xF9, 0xCF,  // BC..yL..
                    /* 0068 */  0x77, 0x6C, 0xF7, 0x4A, 0xAC, 0x56, 0x7D, 0xD0,  // wl.J.V}.
                    /* 0070 */  0xCE, 0x01, 0xC9, 0x97, 0x42, 0x44, 0x01, 0x02,  // ....BD..
                    /* 0078 */  0xC5, 0x2E, 0x77, 0x79, 0xB1, 0x04, 0xFD, 0x4B,  // ..wy...K
                    /* 0080 */  0x84, 0x3C, 0x61, 0xE7, 0xF7, 0x7B, 0x6C, 0xC9,  // .<a..{l.
                    /* 0088 */  0x42, 0x45, 0x01, 0x02, 0xB7, 0xA0, 0xC9, 0xA7,  // BE......
                    /* 0090 */  0x9D, 0x4C, 0x72, 0x4C, 0x83, 0xBB, 0x53, 0xA3,  // .LrL..S.
                    /* 0098 */  0x45, 0x91, 0x71, 0xDF, 0x42, 0x46, 0x01, 0x02,  // E.q.BF..
                    /* 00A0 */  0x4F, 0x06, 0x3A, 0x65, 0x3A, 0xA2, 0x5F, 0x48,  // O.:e:._H
                    /* 00A8 */  0xB3, 0xD9, 0x13, 0xF6, 0x53, 0x2A, 0x01, 0x82,  // ....S*..
                    /* 00B0 */  0x42, 0x47, 0x01, 0x02, 0x45, 0xDD, 0x23, 0x59,  // BG..E.#Y
                    /* 00B8 */  0x80, 0x04, 0xD5, 0x4E, 0xB6, 0x1A, 0xC9, 0xEC,  // ...N....
                    /* 00C0 */  0x6C, 0x90, 0xE2, 0x6A, 0x42, 0x48, 0x01, 0x02,  // l..jBH..
                    /* 00C8 */  0x97, 0x13, 0xAA, 0xFA, 0x88, 0x11, 0x8F, 0x44,  // .......D
                    /* 00D0 */  0x85, 0x16, 0x9A, 0x07, 0x98, 0x7D, 0xD3, 0x8A,  // .....}..
                    /* 00D8 */  0x42, 0x49, 0x01, 0x02, 0xA7, 0xB1, 0x85, 0xDB,  // BI......
                    /* 00E0 */  0x9A, 0x06, 0xBB, 0x4A, 0xA2, 0xB5, 0xD1, 0x86,  // ...J....
                    /* 00E8 */  0xA2, 0x1B, 0x80, 0xF1, 0x81, 0x00, 0x01, 0x08,  // ........
                    /* 00F0 */  0x91, 0x6B, 0x91, 0x36, 0x64, 0x1A, 0x83, 0x45,  // .k.6d..E
                    /* 00F8 */  0x84, 0xD0, 0x53, 0x83, 0x0F, 0xB9, 0x10, 0x8D,  // ..S.....
                    /* 0100 */  0x82, 0x00, 0x01, 0x08, 0x5E, 0xA1, 0x6A, 0x67,  // ....^.jg
                    /* 0108 */  0x47, 0x6A, 0x9F, 0x4D, 0xA2, 0xCC, 0x1E, 0x6D,  // Gj.M...m
                    /* 0110 */  0x18, 0xD1, 0x40, 0x26, 0xBC, 0x00, 0x01, 0x08,  // ..@&....
                    /* 0118 */  0xEA, 0x69, 0xEF, 0x61, 0x5C, 0x86, 0xC3, 0x4B,  // .i.a\..K
                    /* 0120 */  0xA5, 0x02, 0xA0, 0xDE, 0xBA, 0x0C, 0xB5, 0x31,  // .......1
                    /* 0128 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // AA..!...
                    /* 0130 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                    /* 0138 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00   // ..).AB..
                })
                Method (WQAA, 1, NotSerialized)
                {
                    AAF1 ()
                    BUFF = AADS /* \_SB_.PCI0.WMID.AADS */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Name (WQAB, Buffer (0x042A)
                {
                    /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                    /* 0008 */  0x1A, 0x04, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00,  // ....8...
                    /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                    /* 0018 */  0x18, 0xCF, 0x87, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                    /* 0020 */  0x10, 0x07, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  // ..."!...
                    /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  // ..,...8.
                    /* 0030 */  0x24, 0x15, 0x07, 0x85, 0x12, 0x02, 0xA1, 0xFE,  // $.......
                    /* 0038 */  0x04, 0xF2, 0x2B, 0x00, 0xA1, 0x43, 0x01, 0x32,  // ..+..C.2
                    /* 0040 */  0x05, 0x18, 0x14, 0xE0, 0x14, 0x41, 0x04, 0xBD,  // .....A..
                    /* 0048 */  0x0A, 0xB0, 0x29, 0xC0, 0xA4, 0x00, 0x8B, 0x02,  // ..).....
                    /* 0050 */  0xB4, 0x0B, 0xB0, 0x2C, 0x40, 0xB7, 0x00, 0xE9,  // ...,@...
                    /* 0058 */  0xB0, 0x44, 0x24, 0x38, 0x4A, 0x0C, 0x38, 0x4A,  // .D$8J.8J
                    /* 0060 */  0x27, 0xB6, 0x70, 0xC3, 0x06, 0x2F, 0x14, 0x45,  // '.p../.E
                    /* 0068 */  0x33, 0x88, 0x92, 0xA0, 0x72, 0x01, 0xBE, 0x11,  // 3...r...
                    /* 0070 */  0x04, 0x5E, 0xAE, 0x00, 0xC9, 0x13, 0x90, 0x66,  // .^.....f
                    /* 0078 */  0x01, 0x86, 0x05, 0x58, 0x17, 0x20, 0x7B, 0x08,  // ...X. {.
                    /* 0080 */  0x54, 0xEA, 0x10, 0x50, 0x72, 0x86, 0x80, 0x1A,  // T..Pr...
                    /* 0088 */  0x40, 0xAB, 0x13, 0x10, 0x7E, 0xA5, 0x53, 0x42,  // @...~.SB
                    /* 0090 */  0x12, 0x84, 0x33, 0x56, 0xF1, 0xF8, 0x9A, 0x45,  // ..3V...E
                    /* 0098 */  0xD3, 0x73, 0x92, 0x73, 0x0C, 0x39, 0x1E, 0x17,  // .s.s.9..
                    /* 00A0 */  0x7A, 0x10, 0x3C, 0xAA, 0x04, 0x10, 0x26, 0x7F,  // z.<...&.
                    /* 00A8 */  0xC8, 0x0A, 0x07, 0x83, 0xD2, 0x30, 0x16, 0xEA,  // .....0..
                    /* 00B0 */  0x62, 0xD4, 0xA8, 0x91, 0xB2, 0x01, 0x19, 0xA2,  // b.......
                    /* 00B8 */  0x24, 0x38, 0xD4, 0xA8, 0x2D, 0x51, 0x80, 0xF9,  // $8..-Q..
                    /* 00C0 */  0x71, 0x68, 0x76, 0x6D, 0x8F, 0x85, 0x40, 0x32,  // qhvm..@2
                    /* 00C8 */  0x69, 0x43, 0x41, 0x49, 0x81, 0xD0, 0xD8, 0xCE,  // iCAI....
                    /* 00D0 */  0xD4, 0x33, 0x8A, 0x78, 0xA4, 0x86, 0x49, 0xE0,  // .3.x..I.
                    /* 00D8 */  0x51, 0x44, 0x36, 0x1A, 0x87, 0xC6, 0x0E, 0xC3,  // QD6.....
                    /* 00E0 */  0xC3, 0x0C, 0x76, 0x10, 0x87, 0x71, 0xCC, 0x91,  // ..v..q..
                    /* 00E8 */  0x13, 0x78, 0x42, 0x47, 0x7A, 0xE4, 0x85, 0xCD,  // .xBGz...
                    /* 00F0 */  0x53, 0xA8, 0x31, 0x9A, 0x83, 0x22, 0x82, 0x8F,  // S.1.."..
                    /* 00F8 */  0x02, 0xE8, 0x31, 0x85, 0x3D, 0xDA, 0xD8, 0xE7,  // ..1.=...
                    /* 0100 */  0x6B, 0xE1, 0x83, 0x15, 0xC6, 0x11, 0x1C, 0x57,  // k......W
                    /* 0108 */  0x82, 0xFF, 0xFF, 0x89, 0x1F, 0x4A, 0x8F, 0x70,  // .....J.p
                    /* 0110 */  0x12, 0x34, 0x45, 0x0A, 0x72, 0xD4, 0x18, 0x59,  // .4E.r..Y
                    /* 0118 */  0x38, 0xD2, 0x3A, 0x2B, 0x32, 0x77, 0x03, 0x1B,  // 8.:+2w..
                    /* 0120 */  0xA8, 0x31, 0x01, 0xBA, 0x46, 0x22, 0x82, 0xE3,  // .1..F"..
                    /* 0128 */  0x39, 0x10, 0x8C, 0x0C, 0x08, 0x79, 0x3E, 0x17,  // 9....y>.
                    /* 0130 */  0x68, 0x84, 0x26, 0xB0, 0x7B, 0x01, 0xDA, 0x04,  // h.&.{...
                    /* 0138 */  0x78, 0x83, 0xD0, 0x38, 0x22, 0x04, 0x6E, 0x6D,  // x..8".nm
                    /* 0140 */  0x12, 0xB2, 0x85, 0x43, 0xE6, 0x15, 0x2B, 0x4A,  // ...C..+J
                    /* 0148 */  0x8C, 0x63, 0x3A, 0xB2, 0x1A, 0x51, 0x84, 0x54,  // .c:..Q.T
                    /* 0150 */  0xD9, 0xCD, 0x40, 0x08, 0x51, 0x62, 0x86, 0x8C,  // ..@.Qb..
                    /* 0158 */  0x18, 0x2C, 0xC8, 0x63, 0x44, 0x0C, 0x0F, 0xD1,  // .,.cD...
                    /* 0160 */  0x70, 0x91, 0xDA, 0x1F, 0x04, 0x91, 0xF7, 0x98,  // p.......
                    /* 0168 */  0xD0, 0x79, 0xC0, 0x91, 0x46, 0x83, 0x3A, 0x2C,  // .y..F.:,
                    /* 0170 */  0xF8, 0x4C, 0xE0, 0xC9, 0x3D, 0x23, 0x78, 0x6C,  // .L..=#xl
                    /* 0178 */  0xE7, 0x1C, 0xE4, 0x3C, 0x8F, 0xED, 0x11, 0xE2,  // ...<....
                    /* 0180 */  0x61, 0xC0, 0xC3, 0x66, 0xB7, 0x04, 0x9F, 0x2D,  // a..f...-
                    /* 0188 */  0x7C, 0x3A, 0xC0, 0xBB, 0x06, 0xD4, 0xB5, 0xE0,  // |:......
                    /* 0190 */  0xA1, 0x80, 0x4D, 0x32, 0x1C, 0x66, 0x88, 0x1E,  // ..M2.f..
                    /* 0198 */  0x6B, 0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0xB1,  // k..8D...
                    /* 01A0 */  0xFA, 0x3C, 0x80, 0x9B, 0xDB, 0xC9, 0x1C, 0xFA,  // .<......
                    /* 01A8 */  0xFB, 0x44, 0xB3, 0x37, 0x09, 0x42, 0x70, 0x3C,  // .D.7.Bp<
                    /* 01B0 */  0xBE, 0x44, 0xB0, 0x09, 0x3F, 0x3A, 0x90, 0x41,  // .D..?:.A
                    /* 01B8 */  0xA0, 0x46, 0x66, 0x68, 0x0F, 0xF5, 0xB4, 0x5E,  // .Ffh...^
                    /* 01C0 */  0x06, 0x7C, 0x0C, 0x30, 0x81, 0xC5, 0x42, 0x48,  // .|.0..BH
                    /* 01C8 */  0x01, 0x84, 0xC6, 0x03, 0x7E, 0xC5, 0x07, 0x0F,  // ....~...
                    /* 01D0 */  0x72, 0x63, 0xF0, 0x7C, 0x7D, 0x86, 0xD0, 0xC9,  // rc.|}...
                    /* 01D8 */  0x42, 0x46, 0x56, 0xE1, 0xF1, 0xD0, 0xE3, 0x82,  // BFV.....
                    /* 01E0 */  0xEF, 0x08, 0x98, 0x0B, 0x83, 0x87, 0xEE, 0x21,  // .......!
                    /* 01E8 */  0x3D, 0x1F, 0x58, 0xD2, 0x21, 0x83, 0xFE, 0xFF,  // =.X.!...
                    /* 01F0 */  0x45, 0x9D, 0x56, 0xF8, 0xA1, 0x82, 0x9E, 0x27,  // E.V....'
                    /* 01F8 */  0x18, 0x6C, 0xD0, 0xB0, 0x1E, 0xCC, 0x39, 0xF9,  // .l....9.
                    /* 0200 */  0xCF, 0xE2, 0xB1, 0xC1, 0x07, 0xC4, 0x7B, 0x9F,  // ......{.
                    /* 0208 */  0x35, 0x19, 0xC1, 0xC9, 0x1A, 0xD0, 0x87, 0x07,  // 5.......
                    /* 0210 */  0xDC, 0xA1, 0x02, 0xBC, 0x30, 0x87, 0xC5, 0xAF,  // ....0...
                    /* 0218 */  0x15, 0x70, 0x0F, 0x0B, 0x6C, 0x94, 0x7C, 0x34,  // .p..l.|4
                    /* 0220 */  0x1E, 0xC2, 0x59, 0x3C, 0x0D, 0x18, 0xC6, 0xE8,  // ..Y<....
                    /* 0228 */  0x4F, 0x01, 0xB0, 0x6F, 0x18, 0x1E, 0x8B, 0x0F,  // O..o....
                    /* 0230 */  0x3A, 0x3E, 0xE9, 0x80, 0x63, 0x70, 0xFC, 0x0A,  // :>..cp..
                    /* 0238 */  0x83, 0x3B, 0xE9, 0x00, 0x8F, 0xB9, 0x3E, 0xE9,  // .;....>.
                    /* 0240 */  0x80, 0xED, 0x7C, 0xC0, 0x4E, 0x39, 0xD0, 0x4C,  // ..|.N9.L
                    /* 0248 */  0x80, 0xB0, 0x00, 0x6F, 0x04, 0xC9, 0x5A, 0x37,  // ...o..Z7
                    /* 0250 */  0x85, 0xF1, 0xFF, 0xFF, 0x94, 0x03, 0xB8, 0xBA,  // ........
                    /* 0258 */  0x4B, 0xF8, 0x04, 0x01, 0x56, 0x8C, 0xE7, 0x0D,  // K...V...
                    /* 0260 */  0x8B, 0x06, 0xD4, 0x08, 0x9E, 0x1F, 0x60, 0x1F,  // ......`.
                    /* 0268 */  0x73, 0xE0, 0x5F, 0x6D, 0x7C, 0xBE, 0x09, 0x72,  // s._m|..r
                    /* 0270 */  0x52, 0x41, 0x0E, 0xE5, 0xF5, 0xE6, 0xC9, 0x21,  // RA.....!
                    /* 0278 */  0xCC, 0x8B, 0xCE, 0x13, 0x8E, 0x87, 0x56, 0x21,  // ......V!
                    /* 0280 */  0x88, 0x9C, 0x1D, 0x73, 0x08, 0xD2, 0x03, 0x8E,  // ...s....
                    /* 0288 */  0x51, 0x0C, 0x72, 0x66, 0x51, 0xA3, 0x45, 0x31,  // Q.rfQ.E1
                    /* 0290 */  0x5E, 0x90, 0x68, 0x11, 0x8F, 0xE0, 0x31, 0x87,  // ^.h...1.
                    /* 0298 */  0xC5, 0x3A, 0x10, 0xE8, 0x1F, 0xE5, 0x63, 0x0E,  // .:....c.
                    /* 02A0 */  0x70, 0xFF, 0xFF, 0x1F, 0x73, 0x00, 0x47, 0xF2,  // p...s.G.
                    /* 02A8 */  0x8E, 0x24, 0xA0, 0x1A, 0x15, 0xBF, 0x32, 0xB0,  // .$....2.
                    /* 02B0 */  0x33, 0x09, 0x30, 0x89, 0xF2, 0xF4, 0xD0, 0x38,  // 3.0....8
                    /* 02B8 */  0xAD, 0xF1, 0x39, 0x20, 0x1B, 0x27, 0x21, 0x3A,  // ..9 .'!:
                    /* 02C0 */  0x08, 0x2B, 0xA1, 0xD2, 0x08, 0xDE, 0x23, 0x7C,  // .+....#|
                    /* 02C8 */  0x6B, 0x88, 0xFB, 0x6C, 0xE0, 0xF9, 0x60, 0xD2,  // k..l..`.
                    /* 02D0 */  0x1F, 0x14, 0x74, 0xFE, 0x31, 0xB8, 0x73, 0x93,  // ..t.1.s.
                    /* 02D8 */  0x28, 0xF7, 0x80, 0x28, 0xBC, 0x93, 0x1E, 0x83,  // (..(....
                    /* 02E0 */  0x28, 0x88, 0x01, 0x1D, 0x03, 0x42, 0x56, 0x0E,  // (....BV.
                    /* 02E8 */  0x02, 0xE8, 0xEB, 0x84, 0x8F, 0x0C, 0x3E, 0x67,  // ......>g
                    /* 02F0 */  0x44, 0x39, 0x23, 0x1F, 0x30, 0x1E, 0x17, 0xD8,  // D9#.0...
                    /* 02F8 */  0x70, 0x7C, 0x10, 0xE0, 0x07, 0x14, 0xDF, 0x0C,  // p|......
                    /* 0300 */  0x8C, 0x6D, 0x35, 0xC7, 0x1D, 0x14, 0x98, 0xE1,  // .m5.....
                    /* 0308 */  0x5F, 0x60, 0x4C, 0xE0, 0x7B, 0xC6, 0xCB, 0x00,  // _`L.{...
                    /* 0310 */  0xBC, 0xFF, 0xFF, 0x6D, 0x07, 0x7B, 0xC6, 0x78,  // ...m.{.x
                    /* 0318 */  0x2C, 0xB1, 0xBE, 0xC3, 0x00, 0x28, 0x80, 0x3C,  // ,....(.<
                    /* 0320 */  0x7D, 0x9F, 0x68, 0x1E, 0x01, 0xD8, 0x18, 0x1E,  // }.h.....
                    /* 0328 */  0x6A, 0x8C, 0x66, 0x74, 0x1E, 0x7F, 0xAE, 0xA8,  // j.ft....
                    /* 0330 */  0xC0, 0x73, 0xA5, 0x20, 0x9E, 0xAB, 0xC3, 0x40,  // .s. ...@
                    /* 0338 */  0xC8, 0xC9, 0x5C, 0x51, 0xB7, 0x17, 0x8F, 0xC8,  // ..\Q....
                    /* 0340 */  0x3E, 0xA7, 0x4A, 0x06, 0xCB, 0x09, 0xA2, 0xBC,  // >.J.....
                    /* 0348 */  0x6A, 0xC0, 0x3A, 0x08, 0x44, 0x64, 0xF3, 0xF0,  // j.:.Dd..
                    /* 0350 */  0x5D, 0x09, 0x3F, 0x5B, 0x3E, 0x18, 0x5F, 0x25,  // ].?[>._%
                    /* 0358 */  0xE0, 0x0F, 0x97, 0x9F, 0x4A, 0xDE, 0x4D, 0x12,  // ....J.M.
                    /* 0360 */  0x58, 0xE0, 0x74, 0x41, 0x0E, 0x8F, 0x11, 0xB4,  // X.tA....
                    /* 0368 */  0x1E, 0x59, 0xB8, 0x4B, 0xD1, 0x71, 0xF1, 0xDB,  // .Y.K.q..
                    /* 0370 */  0x81, 0x6F, 0x3C, 0xEC, 0x4E, 0x83, 0xBB, 0x88,  // .o<.N...
                    /* 0378 */  0x61, 0x60, 0x3D, 0x52, 0x0E, 0x6B, 0xB4, 0xB0,  // a`=R.k..
                    /* 0380 */  0x07, 0xFC, 0xC6, 0xE1, 0xE3, 0x8A, 0x67, 0x66,  // ......gf
                    /* 0388 */  0x8C, 0xB0, 0xBE, 0xA7, 0x80, 0xE3, 0x4E, 0x06,  // ......N.
                    /* 0390 */  0x3F, 0xC0, 0xD8, 0x10, 0xFF, 0xFF, 0x2B, 0x10,  // ?.....+.
                    /* 0398 */  0xF8, 0xCE, 0x1A, 0xEC, 0x4A, 0x66, 0x90, 0x17,  // ....Jf..
                    /* 03A0 */  0x25, 0x9F, 0x6B, 0x8C, 0x1E, 0xE8, 0x7D, 0x03,  // %.k...}.
                    /* 03A8 */  0x7F, 0x13, 0x82, 0x7D, 0x03, 0x81, 0x33, 0x14,  // ...}..3.
                    /* 03B0 */  0xDF, 0x40, 0x80, 0xC3, 0x31, 0x02, 0x77, 0x03,  // .@..1.w.
                    /* 03B8 */  0x01, 0xD6, 0x77, 0x08, 0x76, 0x03, 0x01, 0x96,  // ..w.v...
                    /* 03C0 */  0xA7, 0x17, 0xDC, 0x0D, 0x04, 0x9C, 0xFF, 0xFF,  // ........
                    /* 03C8 */  0x1B, 0x08, 0x70, 0xB9, 0xBF, 0xB0, 0x1B, 0x08,  // ..p.....
                    /* 03D0 */  0x30, 0x1F, 0xB5, 0x6F, 0x20, 0x80, 0xA5, 0xB3,  // 0..o ...
                    /* 03D8 */  0x06, 0xBB, 0x81, 0x80, 0x5F, 0xA1, 0x4D, 0x9F,  // ...._.M.
                    /* 03E0 */  0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53, 0xA3, 0x4C,  // ..Z5(S.L
                    /* 03E8 */  0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66, 0xCC, 0xC6,  // .Z}*5f..
                    /* 03F0 */  0xE8, 0xBD, 0x74, 0x8D, 0xDD, 0x71, 0x40, 0x68,  // ..t..q@h
                    /* 03F8 */  0xF0, 0x87, 0x9C, 0x40, 0x1C, 0xDE, 0x03, 0x08,  // ...@....
                    /* 0400 */  0x93, 0xBE, 0x38, 0x81, 0x38, 0xE6, 0xA1, 0x51,  // ..8.8..Q
                    /* 0408 */  0x46, 0x40, 0xF4, 0xFF, 0xCF, 0x0C, 0x22, 0x20,  // F@...." 
                    /* 0410 */  0x27, 0x54, 0x01, 0xC4, 0xF2, 0x82, 0x08, 0xC8,  // 'T......
                    /* 0418 */  0x4A, 0xD6, 0x20, 0x20, 0xCB, 0x02, 0x11, 0x90,  // J.  ....
                    /* 0420 */  0x45, 0xE8, 0x00, 0x62, 0x92, 0x40, 0x04, 0xE4,  // E..b.@..
                    /* 0428 */  0xFF, 0x3F                                       // .?
                })
                OperationRegion (SBAA, SystemMemory, 0x000EA399, 0x0100)
                Field (SBAA, AnyAcc, NoLock, Preserve)
                {
                    TPAA,   8, 
                    LNTH,   8, 
                    Offset (0x04), 
                    COMS,   16, 
                    Offset (0x0E), 
                    BTND,   1928
                }

                Method (FBFS, 2, NotSerialized)
                {
                    If ((TPAA != 0xAA))
                    {
                        Return (0xFF)
                    }

                    If ((LNTH < 0x12))
                    {
                        Return (0xFF)
                    }

                    Local0 = (LNTH - 0x0E)
                    Local1 = Zero
                    Local2 = BTND /* \_SB_.PCI0.WMID.BTND */
                    While ((Local1 < Local0))
                    {
                        If ((Arg0 == DerefOf (Local2 [Local1])))
                        {
                            If (((Local0 - Local1) >= 0x04))
                            {
                                Arg1 = DerefOf (Local2 [(Local1 + 0x02)])
                                Local3 = DerefOf (Local2 [(Local1 + 0x03)])
                                Arg1 = ((Local3 << 0x08) | DerefOf (Arg1))
                                Return (Zero)
                            }
                        }

                        Local1 += 0x04
                    }

                    Return (0xFF)
                }

                Method (EVBC, 0, NotSerialized)
                {
                    Local0 = DerefOf (FEBC [Zero])
                    If (((Local0 == Zero) || (Local0 > 0x02)))
                    {
                        FEBC [Zero] = Zero
                        FEBC [One] = Zero
                        Return (FEBC) /* \FEBC */
                    }

                    If ((Local0 == One))
                    {
                        Local1 = DerefOf (FEBC [One])
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        If (((Local1 > Zero) && (Local1 < 0x20)))
                        {
                            Local3 = GCMS (RefOf (Local4), RefOf (Local2))
                        }
                        ElseIf (((Local1 > 0x80) && (Local1 < 0xFF)))
                        {
                            Local3 = GOTS (RefOf (Local2))
                        }

                        If ((Local3 != Zero))
                        {
                            FEBC [Zero] = Zero
                            FEBC [One] = Zero
                            Return (FEBC) /* \FEBC */
                        }

                        FEBC [0x02] = (Local2 & 0xFF)
                        Local2 >>= 0x08
                        FEBC [0x03] = (Local2 & 0xFF)
                    }
                    Else
                    {
                        FEBC [0x02] = Zero
                        FEBC [0x03] = Zero
                    }

                    FEBC [0x04] = Zero
                    FEBC [0x05] = Zero
                    FEBC [0x06] = Zero
                    FEBC [0x07] = Zero
                    Return (FEBC) /* \FEBC */
                }

                Method (WMAA, 3, NotSerialized)
                {
                    Local0 = Zero
                    If ((Arg1 == One))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_0 = DerefOf (Arg2 [Zero])
                        If ((_T_0 == One))
                        {
                            Local3 = (DerefOf (Arg2 [0x05]) & One)
                            Local4 = (DerefOf (Arg2 [0x05]) >> 0x06)
                            Local4 &= 0x03
                            If ((Local3 == One))
                            {
                                LMON ()
                            }

                            If ((Local4 == One))
                            {
                                Local1 = Zero
                                Local1 = DerefOf (Arg2 [One])
                                Local1 |= (DerefOf (Arg2 [0x02]) << 0x08)
                                Local2 = SCMS (0xFFFF, Local1)
                                If ((Local2 != Zero))
                                {
                                    Local0 [Zero] = Local2
                                    Return (Local0)
                                }

                                Local1 = Zero
                                Local1 = DerefOf (Arg2 [0x03])
                                Local1 |= (DerefOf (Arg2 [0x04]) << 0x08)
                                Local2 = SOTS (0xFFFF, Local1)
                                If ((Local2 != Zero))
                                {
                                    Local0 [Zero] = Local2
                                    Return (Local0)
                                }
                            }

                            If ((Local3 == Zero))
                            {
                                LMOF ()
                            }
                        }
                        ElseIf ((_T_0 == 0x02))
                        {
                            Local1 = Zero
                            Local1 = DerefOf (Arg2 [0x02])
                            Local1 |= (DerefOf (Arg2 [0x03]) << 0x08)
                            Local3 = DerefOf (Arg2 [One])
                            Local4 = Zero
                            Local2 = FBFS (Local3, RefOf (Local4))
                            If ((Local2 != Zero))
                            {
                                Local4 = 0xFFFF
                            }

                            If (((Local3 > Zero) && (Local3 < 0x20)))
                            {
                                Local2 = SCMS (Local4, Local1)
                            }
                            ElseIf (((Local3 > 0x20) && (Local3 < 0x40)))
                            {
                                Local2 = SAPS (Local4, Local1)
                            }
                            ElseIf (((Local3 > 0x40) && (Local3 < 0x60)))
                            {
                                Local2 = SMES (Local4, Local1)
                            }
                            ElseIf (((Local3 > 0x60) && (Local3 < 0x80)))
                            {
                                Local2 = SDSS (Local4, Local1)
                            }
                            ElseIf (((Local3 > 0x80) && (Local3 < 0xFF)))
                            {
                                Local2 = SOTS (Local4, Local1)
                            }
                            Else
                            {
                                Local2 = 0xE4
                            }

                            Local0 [Zero] = Local2
                            If ((Local2 != Zero))
                            {
                                Local0 [0x02] = Local3
                            }
                        }
                        Else
                        {
                            Local0 [Zero] = 0xE4
                        }
                    }
                    ElseIf ((Arg1 == 0x02))
                    {
                        Local0 = Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                            }
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_1 = DerefOf (Arg2 [Zero])
                        If ((_T_1 == One))
                        {
                            Local1 = Zero
                            Local2 = DerefOf (Arg2 [0x02])
                            Local2 |= (DerefOf (Arg2 [0x03]) << 0x08)
                            Local3 = DerefOf (Arg2 [One])
                            If (((Local3 > Zero) && (Local3 < 0x20)))
                            {
                                Local4 = GCMS (RefOf (Local5), RefOf (Local1))
                                If ((Local4 == Zero))
                                {
                                    If (((Local2 & Local5) == Zero))
                                    {
                                        Local4 = 0xE2
                                    }
                                }
                            }
                            ElseIf (((Local3 > 0x20) && (Local3 < 0x40)))
                            {
                                Local4 = GAPS (RefOf (Local1))
                            }
                            ElseIf (((Local3 > 0x40) && (Local3 < 0x60)))
                            {
                                Local4 = GMES (RefOf (Local1))
                            }
                            ElseIf (((Local3 > 0x60) && (Local3 < 0x80)))
                            {
                                Local4 = GDSS (RefOf (Local1))
                            }
                            ElseIf (((Local3 > 0x80) && (Local3 < 0xFF)))
                            {
                                Local4 = GOTS (RefOf (Local1))
                            }
                            Else
                            {
                                Local4 = 0xE4
                            }

                            If ((Local2 == Zero))
                            {
                                Local4 = 0xE2
                            }

                            Local0 [Zero] = Local4
                            Local1 &= Local2
                            Local0 [0x02] = (Local1 & 0xFF)
                            Local0 [0x03] = (Local1 >> 0x08)
                        }
                        Else
                        {
                            Local0 [Zero] = 0xE4
                        }
                    }

                    Return (Local0)
                }

                Method (WMBA, 3, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Arg1
                    If ((Match (Package (0x09)
                                    {
                                        One, 
                                        0x02, 
                                        0x03, 
                                        0x08, 
                                        0x09, 
                                        0x0A, 
                                        0x0C, 
                                        0x0D, 
                                        0x0E
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        Local0 = Zero
                    }
                    ElseIf ((Match (Package (0x06)
                                    {
                                        0x04, 
                                        0x05, 
                                        0x06, 
                                        0x07, 
                                        0x0B, 
                                        0x0F
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones))
                    {
                        If ((Arg1 == 0x07))
                        {
                            BUFF = Arg2
                            If (BF00)
                            {
                                BAEF = One
                            }
                        }

                        Local0 = One
                    }

                    If (Local0)
                    {
                        WSDS (Arg1, Arg2)
                    }
                    Else
                    {
                        WGDS (Arg1)
                    }

                    BUFF = DerefOf (BADG [(Arg1 - One)])
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                {
                    If ((Arg0 >= 0x80))
                    {
                        If ((Arg0 < 0x83))
                        {
                            Return (OEMN ())
                        }
                    }

                    If ((Arg0 == 0xBC))
                    {
                        Return (EVBC ())
                    }
                }

                Method (WMBB, 3, NotSerialized)
                {
                    STRL (Arg1, Arg2)
                    If ((Arg1 == One))
                    {
                        BUFF = BBSB /* \_SB_.PCI0.WMID.BBSB */
                    }

                    If ((Arg1 == 0x02))
                    {
                        BUFF = BBD1 /* \_SB_.PCI0.WMID.BBD1 */
                    }

                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBC, 3, NotSerialized)
                {
                    If ((Arg1 == 0x05))
                    {
                        Return (BODD) /* \_SB_.PCI0.WMID.BODD */
                    }

                    If ((Arg1 == 0x0E))
                    {
                        BODD = Arg2
                        Return (Zero)
                    }
                }

                Method (WMBD, 3, NotSerialized)
                {
                    If ((Arg1 == One))
                    {
                        BUFF = Arg2
                        Local0 = BUFF /* \_SB_.PCI0.WMID.BUFF */
                        WIT0 = Arg2
                        GCPU (WIT0)
                        Return (DSY0) /* \_SB_.PCI0.WMID.DSY0 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        Local0 = Arg2
                        MSRR (Arg2)
                        Return (DSY1) /* \_SB_.PCI0.WMID.DSY1 */
                    }

                    If ((Arg1 == 0x03))
                    {
                        Local0 = Arg2
                        MSRW (Arg2)
                        Return (DSY1) /* \_SB_.PCI0.WMID.DSY1 */
                    }

                    If ((Arg1 == 0x04))
                    {
                        C4C3 (Arg1, Arg2)
                        BUFF = (DerefOf (BCDS [(Arg1 + 0x05)]) >> 0x10)
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x05))
                    {
                        C4C3 (Arg1, Arg2)
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x06))
                    {
                        CPUF ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x07))
                    {
                        CPUT ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x04)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x08))
                    {
                        WPRW = Arg2
                        WPIR = WWD1 /* \_SB_.PCI0.WMID.WWD1 */
                        WPIF = WWD2 /* \_SB_.PCI0.WMID.WWD2 */
                        WPID = WWD3 /* \_SB_.PCI0.WMID.WWD3 */
                        WPIB = WWD4 /* \_SB_.PCI0.WMID.WWD4 */
                        Concatenate (WPCI, WWD0, Local0)
                        PCIR (Local0)
                        Return (DSY2) /* \_SB_.PCI0.WMID.DSY2 */
                    }

                    If ((Arg1 == 0x09))
                    {
                        DSY6 = Arg2
                        Local0 = DY60 /* \_SB_.PCI0.WMID.DY60 */
                        DSY0 = Arg2
                        WPRW = DY01 /* \_SB_.PCI0.WMID.DY01 */
                        WPIR = WWD1 /* \_SB_.PCI0.WMID.WWD1 */
                        WPIF = WWD2 /* \_SB_.PCI0.WMID.WWD2 */
                        WPID = WWD3 /* \_SB_.PCI0.WMID.WWD3 */
                        WPIB = WWD4 /* \_SB_.PCI0.WMID.WWD4 */
                        Local1 = WPCI /* \_SB_.PCI0.WMID.WPCI */
                        Concatenate (DY60, WPCI, Local0)
                        Concatenate (Local0, WWD0, Local1)
                        PCIW (Local1)
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x0A))
                    {
                        CPUS ()
                        BUFF = DerefOf (BCDS [(Arg1 + 0x02)])
                        Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                    }

                    If ((Arg1 == 0x0B))
                    {
                        PCID (Arg2)
                        Return (DSY6) /* \_SB_.PCI0.WMID.DSY6 */
                    }
                }

                Method (WMBE, 3, NotSerialized)
                {
                    BTIF (Arg1, Arg2)
                    BUFF = DerefOf (BEDS [(Arg1 - One)])
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBF, 3, NotSerialized)
                {
                }

                Method (WMBG, 3, NotSerialized)
                {
                    BUFF = Arg2
                    WSVE (BF00)
                    BUFF = DerefOf (BGDS [(Arg1 - One)])
                    Debug = BUFF /* \_SB_.PCI0.WMID.BUFF */
                    Return (BUFF) /* \_SB_.PCI0.WMID.BUFF */
                }

                Method (WMBH, 3, NotSerialized)
                {
                    If ((Arg1 == One))
                    {
                        CPSE (Arg2)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x02))
                    {
                        SPSW (Arg2)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x03))
                    {
                        CPSW (Arg2)
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x04))
                    {
                        GBDS ()
                        Return (BOOT) /* \_SB_.PCI0.WMID.BOOT */
                    }

                    If ((Arg1 == 0x05))
                    {
                        SBDS (Arg2)
                        BUF1 [Zero] = Zero
                        BUF1 [One] = Zero
                        BUF1 [0x02] = Zero
                        BUF1 [0x03] = Zero
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x0A))
                    {
                        If ((D2DF == Zero))
                        {
                            BUF1 [Zero] = One
                        }
                        Else
                        {
                            BUF1 [Zero] = Zero
                        }

                        BUF1 [0x02] = Zero
                        BUF1 [0x03] = Zero
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }
                }

                Method (WMBI, 3, NotSerialized)
                {
                    If ((Arg1 == 0x03))
                    {
                        BUF1 = DPRT /* \DPRT */
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x06))
                    {
                        GVGA ()
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x07))
                    {
                        DCCD ()
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x08))
                    {
                        DTPD ()
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x09))
                    {
                        Return (0x08)
                    }

                    If ((Arg1 == 0x0A))
                    {
                        D3GE ()
                        Return (BUF1) /* \_SB_.PCI0.WMID.BUF1 */
                    }

                    If ((Arg1 == 0x0B))
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06){}
        Processor (CPU1, 0x02, 0x00000410, 0x06){}
        Processor (CPU2, 0x03, 0x00000410, 0x06){}
        Processor (CPU3, 0x04, 0x00000410, 0x06){}
        Processor (CPU4, 0x05, 0x00000410, 0x06){}
        Processor (CPU5, 0x06, 0x00000410, 0x06){}
        Processor (CPU6, 0x07, 0x00000410, 0x06){}
        Processor (CPU7, 0x08, 0x00000410, 0x06){}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        If ((Arg0 == 0x04))
        {
            P80D = ((P80D & Zero) | Arg1)
        }

        If ((Arg2 == Zero)){}
        If ((Arg2 == One))
        {
            P80H = P80D /* \P80D */
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    Method (CMSW, 2, NotSerialized)
    {
        CMSI = Arg0
        CMSD = Arg1
    }

    Method (CMSR, 1, NotSerialized)
    {
        CMSI = Arg0
        Return (CMSD) /* \CMSD */
    }

    OperationRegion (CMT1, SystemIO, 0x70, 0x02)
    Field (CMT1, ByteAcc, NoLock, Preserve)
    {
        CMTI,   8, 
        CMTD,   8
    }

    Method (CMTW, 2, NotSerialized)
    {
        CMTI = Arg0
        CMTD = Arg1
    }

    Method (CMTR, 1, NotSerialized)
    {
        CMTI = Arg0
        Return (CMTD) /* \CMTD */
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0, Zero)
        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            OSMI (0x80)
            \_SB.PCI0.GFX0.GLID (0x03)
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            OSMI (0x82)
            \_SB.PCI0.GFX0.GLID (0x03)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P80D = Zero
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((PMEE == One))
            {
                PMEN = One
            }

            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }

            If ((OSYS <= 0x07D6))
            {
                If ((\_SB.PCI0.GP31 == One))
                {
                    BLAN = 0x02
                }
                Else
                {
                    BLAN = 0x03
                }
            }
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0xE3, One)
            \_SB.PCI0.SLWK = 0xE3
            If ((OSYS >= 0x07D6))
            {
                Notify (\_SB.PCI0.LPCB.PWRB, 0x02) // Device Wake
            }
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0xE4, One)
            \_SB.PCI0.SLWK = 0xE4
            Notify (\_SB.PCI0.LPCB.PWRB, 0x02) // Device Wake
            OSMI (0x83)
        }

        P8XH (0x04, 0x33, One)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                If ((PDC4 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                If ((PDC5 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                If ((PDC6 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                If ((PDC7 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == TRTP))
        {
            TRP0 = Zero
        }

        If ((Arg0 == TRTD))
        {
            DTSF = Arg1
            TRPD = Zero
            Return (DTSF) /* \DTSF */
        }

        If ((Arg0 == TRTI))
        {
            TRPH = Zero
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            ^P0P2.VGA.XSAV ()
            OSYS = 0x07D0
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                    OSMI (0x72)
                }

                If ((OSYS <= 0x07D6))
                {
                    If ((GP31 == One))
                    {
                        BLAN = 0x02
                    }
                    Else
                    {
                        BLAN = 0x03
                    }
                }
            }

            ^P0P2.VGA.DPMO = Zero
            If ((DALC == One))
            {
                If ((DPMD == Zero))
                {
                    ^P0P2.VGA.DPMO = One
                }

                If ((DPMD == One))
                {
                    If ((^P0P2.VGA.DVI0 == 0x1002))
                    {
                        ^P0P2.VGA.DPMO = 0x02
                    }

                    If ((^P0P2.VGA.DVI0 == 0x10DE))
                    {
                        ^P0P2.VGA.DPMO = 0x03
                    }
                }

                If ((DPMD == 0x02))
                {
                    If ((^P0P2.VGA.DVI0 == 0x1002))
                    {
                        ^P0P2.VGA.DPMO = 0x04
                    }

                    If ((^P0P2.VGA.DVI0 == 0x10DE))
                    {
                        ^P0P2.VGA.DPMO = 0x05
                        If ((DISC == 0x03))
                        {
                            ^P0P2.VGA.DPMO = One
                        }
                    }
                }
            }
            Else
            {
                If ((^P0P2.VGA.DVI0 == 0x1002))
                {
                    ^P0P2.VGA.DPMO = 0x02
                }

                If ((^P0P2.VGA.DVI0 == 0x10DE))
                {
                    ^P0P2.VGA.DPMO = 0x03
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP05.HPEX = Zero
            ^RP06.HPEX = Zero
            ^RP07.HPEX = Zero
            ^RP08.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
            ^RP05.HPSX = One
            ^RP06.HPSX = One
            ^RP07.HPSX = One
            ^RP08.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP06.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP06.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y0F._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._LEN, MBLN)  // _LEN: Length
                    MBLN = Zero
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, MBR0)  // _BAS: Base Address
                    MBR0 = (MHBR << 0x0E)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (DIBR << 0x0C)
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    DBR0 = (DIBI << 0x0C)
                }

                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, EBLN)  // _LEN: Length
                    EBLN = Zero
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, EBR0)  // _BAS: Base Address
                    EBR0 = (EPBR << 0x0C)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (^^^CPBG.IMCH.PXBR << 0x14)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> ^^^CPBG.IMCH.PXSZ) /* \_SB_.CPBG.IMCH.PXSZ */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, TBR0)  // _BAS: Base Address
                TBR0 = (^^THRM.TBAR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, VTB0)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, VTLN)  // _LEN: Length
                If ((((PNHM & 0x000FFFF0) == 0x000106E0) | ((PNHM & 0x000FFFF0
                    ) == 0x000106A0)))
                {
                    If ((PNHM >= 0x000106E1))
                    {
                        If (^^IO10.VTEN)
                        {
                            VTB0 = (^^IO10.VTBA << 0x0C)
                        }
                        Else
                        {
                            VTLN = Zero
                        }
                    }
                    ElseIf (^^IIO0.VTEN)
                    {
                        VTB0 = (^^IIO0.VTBA << 0x0C)
                    }
                    Else
                    {
                        VTLN = Zero
                    }
                }
                ElseIf (ADVE)
                {
                    VTB0 = (ADVT << 0x0C)
                }
                Else
                {
                    VTLN = Zero
                }

                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
            Offset (0x28), 
                ,   11, 
            PMEN,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
                ,   3, 
            LPDL,   1, 
            Offset (0x2E), 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
                ,   5, 
                ,   1, 
            Offset (0x39), 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1A8), 
            BLAN,   8, 
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (((Arg0 | Arg1) == Zero))
            {
                Return (0xFFFFFFFF)
            }
            ElseIf (((Arg0 == Zero) & (Arg1 == One)))
            {
                Return (0x0384)
            }

            Return ((0x1E * (0x09 - (Arg2 + Arg3))))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If ((Arg0 == One))
            {
                If ((Arg1 == One))
                {
                    Return (0x0F)
                }
            }

            Return (0xFFFFFFFF)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Local0 = Zero
            Local0 |= Arg1
            Local0 |= (Arg0 << One)
            Local0 |= (Arg2 << 0x03)
            Local0 |= (Arg3 << 0x02)
            Local0 |= (Arg4 << 0x04)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (((Arg0 == Zero) || (Arg0 == 0xFFFFFFFF)))
            {
                Return (PBUF) /* \SPIO.PBUF */
            }

            If ((Arg0 > 0xF0))
            {
                DMAE = One
                PIOT = Zero
            }
            Else
            {
                FAST = One
                If ((Arg1 & 0x02))
                {
                    If (((Arg0 == 0x78) & (Arg2 & 0x02)))
                    {
                        RCT = 0x03
                        ISP = 0x02
                        PIOT = 0x04
                        Return (PBUF) /* \SPIO.PBUF */
                    }

                    If (((Arg0 <= 0xB4) & (Arg2 & One)))
                    {
                        RCT = One
                        ISP = 0x02
                        PIOT = 0x03
                        Return (PBUF) /* \SPIO.PBUF */
                    }
                    Else
                    {
                        RCT = Zero
                        ISP = One
                        PIOT = 0x02
                    }
                }
            }

            Return (PBUF) /* \SPIO.PBUF */
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (((Arg0 == Zero) || (Arg0 == 0xFFFFFFFF)))
            {
                Return (PBUF) /* \SDMA.PBUF */
            }

            If ((Arg0 <= 0x78))
            {
                If ((Arg1 & 0x04))
                {
                    UDME = One
                    If (((Arg0 <= 0x0F) & (Arg2 & 0x40)))
                    {
                        UDMT = One
                        PCB = One
                        PCT = One
                        DMAT = 0x06
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x14) & (Arg2 & 0x20)))
                    {
                        UDMT = One
                        PCB = One
                        PCT = One
                        DMAT = 0x05
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x1E) & (Arg2 & 0x10)))
                    {
                        PCB = One
                        PCT = 0x02
                        DMAT = 0x04
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x2D) & (Arg2 & 0x08)))
                    {
                        PCB = One
                        PCT = One
                        DMAT = 0x03
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x3C) & (Arg2 & 0x04)))
                    {
                        PCT = 0x02
                        DMAT = 0x02
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x5A) & (Arg2 & 0x02)))
                    {
                        PCT = One
                        DMAT = One
                        Return (PBUF) /* \SDMA.PBUF */
                    }

                    If (((Arg0 <= 0x78) & (Arg2 & One)))
                    {
                        DMAT = Zero
                    }
                }
            }

            Return (PBUF) /* \SDMA.PBUF */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100){})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (TBUF [Zero])))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            L01C += One
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                    Notify (\_SB.PCI0.RP05, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP6D == Zero) && \_SB.PCI0.RP06.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP06.PDCX)
                {
                    \_SB.PCI0.RP06.PDCX = One
                    \_SB.PCI0.RP06.HPSX = One
                    Notify (\_SB.PCI0.RP06, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP06.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = One
                    \_SB.PCI0.RP07.HPSX = One
                    Notify (\_SB.PCI0.RP07, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = One
                }
            }

            If (((RP8D == Zero) && \_SB.PCI0.RP08.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = One
                    \_SB.PCI0.RP08.HPSX = One
                    Notify (\_SB.PCI0.RP08, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = One
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            LPDL = ~LPDL /* \LPDL */
            Local0 = \_SB.PCI0.LPCB.EC0.LIDO
            Local0 = ~Local0
            If ((OSYS >= 0x07D6))
            {
                (Local0 + 0x02)
                \_SB.PCI0.GFX0.GLID (Local0)
            }

            Notify (\_SB.PCI0.LPCB.LID0, 0x80) // Status Change
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP07, 0x02) // Device Wake
            Notify (\_SB.PCI0.RP08, 0x02) // Device Wake
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB1, 0x02) // Device Wake
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB2, 0x02) // Device Wake
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB3, 0x02) // Device Wake
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB4, 0x02) // Device Wake
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB5, 0x02) // Device Wake
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB6, 0x02) // Device Wake
        }

        Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.USB7, 0x02) // Device Wake
        }

        Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((OSYS >= 0x07D6))
            {
                If (\_SB.PCI0.GP06)
                {
                    \_SB.PCI0.HDME = One
                }
                Else
                {
                    \_SB.PCI0.HDME = Zero
                }

                Sleep (0x03E8)
                If ((\_SB.PCI0.GP06 == Zero))
                {
                    Debug = "HDMI PLUG IN"
                    Local0 = CMSR (0x3E)
                    If ((\_SB.PCI0.P0P2.VGA.DPMO == 0x04))
                    {
                        If ((Local0 == Zero))
                        {
                            \_SB.PCI0.GFX0.AFN6 ()
                        }
                    }
                }
            }
        }
    }

    OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
    Field (PBIC, DWordAcc, NoLock, Preserve)
    {
        Offset (0x7C), 
        SR0,    32, 
        SR1,    32, 
        SR2,    32, 
        SR3,    32, 
        SR4,    32, 
        SR5,    32, 
        SR6,    32, 
        SR7,    32, 
        SR8,    32, 
        SR9,    32
    }

    OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
    Field (IBUS, DWordAcc, NoLock, Preserve)
    {
            ,   26, 
        TOLM,   6, 
            ,   26, 
        TOHM,   38, 
        Offset (0xB0), 
        VTEN,   1, 
            ,   11, 
        VTBA,   20
    }

    Scope (_SB)
    {
        Device (CPBG)
        {
            Name (_HID, EisaId ("PNP0A03") /* PCI Bus */)  // _HID: Hardware ID
            Name (_UID, 0xFF)  // _UID: Unique ID
            Name (_BBN, 0xFF)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x00FF,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, )
            })
            Device (IMCH)
            {
                Name (_ADR, One)  // _ADR: Address
                OperationRegion (PBUS, PCI_Config, Zero, 0xC0)
                Field (PBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                        ,   4, 
                    PM0H,   2, 
                    Offset (0x41), 
                    PM1L,   2, 
                        ,   2, 
                    PM1H,   2, 
                    Offset (0x42), 
                    PM2L,   2, 
                        ,   2, 
                    PM2H,   2, 
                    Offset (0x43), 
                    PM3L,   2, 
                        ,   2, 
                    PM3H,   2, 
                    Offset (0x44), 
                    PM4L,   2, 
                        ,   2, 
                    PM4H,   2, 
                    Offset (0x45), 
                    PM5L,   2, 
                        ,   2, 
                    PM5H,   2, 
                    Offset (0x46), 
                    PM6L,   2, 
                        ,   2, 
                    PM6H,   2, 
                    Offset (0x47), 
                    Offset (0x48), 
                        ,   7, 
                    HENA,   1, 
                    Offset (0x50), 
                    PXEN,   1, 
                    PXSZ,   2, 
                        ,   17, 
                    PXBR,   12
                }
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If ((S3DS == One))
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

