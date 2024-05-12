/* Quartus Prime Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos/SPI_slave/output_files/") File("SPI_slave.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
