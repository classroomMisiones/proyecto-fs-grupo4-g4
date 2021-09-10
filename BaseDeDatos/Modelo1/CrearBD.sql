USE [BVYaguarete]
GO
/****** Object:  Table [dbo].[bajasMotivos]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bajasMotivos](
	[id_baja] [tinyint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_bajasMotivos] PRIMARY KEY CLUSTERED 
(
	[id_baja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[fecha_nac] [date] NOT NULL,
	[id_sexo] [tinyint] NOT NULL,
	[id_tdo] [tinyint] NOT NULL,
	[nro_doc] [int] NOT NULL,
	[id_loc] [tinyint] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[nro_calle] [smallint] NOT NULL,
	[nro_piso] [tinyint] NULL,
	[nro_dpto] [tinyint] NULL,
	[alta_fec] [date] NULL,
	[baja_id] [tinyint] NULL,
	[baja_fec] [date] NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientesCuentas]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientesCuentas](
	[id_cliente] [int] NOT NULL,
	[id_moneda] [tinyint] NOT NULL,
	[debitos] [decimal](18, 2) NULL,
	[creditos] [decimal](18, 2) NULL,
	[saldo] [decimal](18, 2) NULL,
	[id_estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_clientesCuentas] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC,
	[id_moneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientesCvu]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientesCvu](
	[id_cliente] [int] NOT NULL,
	[cvu] [varchar](20) NOT NULL,
 CONSTRAINT [PK_clientesCvu] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientesEmail]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientesEmail](
	[email] [varchar](50) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[login] [bit] NULL,
	[pass] [binary](16) NULL,
 CONSTRAINT [PK_clientesEmail] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentosTipos]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentosTipos](
	[id_tdo] [tinyint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](15) NOT NULL,
 CONSTRAINT [PK_documentosTipos] PRIMARY KEY CLUSTERED 
(
	[id_tdo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id_estado] [tinyint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](35) NOT NULL,
 CONSTRAINT [PK_estados] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localidades]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localidades](
	[Id_loc] [tinyint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[id_prov] [tinyint] NOT NULL,
 CONSTRAINT [PK_localidades] PRIMARY KEY CLUSTERED 
(
	[Id_loc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monedas]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monedas](
	[id_moneda] [tinyint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](20) NOT NULL,
 CONSTRAINT [PK_monedas] PRIMARY KEY CLUSTERED 
(
	[id_moneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operacionesNum]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operacionesNum](
	[id_operacion] [tinyint] NOT NULL,
	[ult_nrocom] [int] NULL,
 CONSTRAINT [PK_operacionesNum] PRIMARY KEY CLUSTERED 
(
	[id_operacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operacionesTipos]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operacionesTipos](
	[id_operacion] [tinyint] IDENTITY(1,1) NOT NULL,
	[detallecorto] [char](3) NOT NULL,
	[detallelargo] [varchar](35) NULL,
 CONSTRAINT [PK_operacionesTipos] PRIMARY KEY CLUSTERED 
(
	[id_operacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincias]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincias](
	[id_prov] [tinyint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_provincias] PRIMARY KEY CLUSTERED 
(
	[id_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexos]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexos](
	[id_sexo] [tinyint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](20) NOT NULL,
 CONSTRAINT [PK_sexos] PRIMARY KEY CLUSTERED 
(
	[id_sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaccReng]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaccReng](
	[id_transaccion] [int] NOT NULL,
	[id_deb_o_cred] [tinyint] NOT NULL,
	[id_cliente] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaccTope]    Script Date: 13/08/2021 20:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaccTope](
	[id_transaccion] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[id_operacion] [tinyint] NOT NULL,
	[detalle] [varchar](50) NULL,
	[nro_comprobante] [int] NOT NULL,
	[importe] [decimal](18, 2) NOT NULL,
	[id_estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_transacciones] PRIMARY KEY CLUSTERED 
(
	[id_transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_transaccReng]    Script Date: 13/08/2021 20:52:24 ******/
CREATE NONCLUSTERED INDEX [IX_transaccReng] ON [dbo].[transaccReng]
(
	[id_transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_transacciones]    Script Date: 13/08/2021 20:52:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_transacciones] ON [dbo].[transaccTope]
(
	[id_operacion] ASC,
	[nro_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_bajasMotivos] FOREIGN KEY([baja_id])
REFERENCES [dbo].[bajasMotivos] ([id_baja])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_bajasMotivos]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_documentosTipos] FOREIGN KEY([id_tdo])
REFERENCES [dbo].[documentosTipos] ([id_tdo])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_documentosTipos]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_localidades] FOREIGN KEY([id_loc])
REFERENCES [dbo].[localidades] ([Id_loc])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_localidades]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_sexos] FOREIGN KEY([id_sexo])
REFERENCES [dbo].[sexos] ([id_sexo])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_sexos]
GO
ALTER TABLE [dbo].[clientesCuentas]  WITH CHECK ADD  CONSTRAINT [FK_clientesCuentas_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[clientesCuentas] CHECK CONSTRAINT [FK_clientesCuentas_clientes]
GO
ALTER TABLE [dbo].[clientesCuentas]  WITH CHECK ADD  CONSTRAINT [FK_clientesCuentas_estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([id_estado])
GO
ALTER TABLE [dbo].[clientesCuentas] CHECK CONSTRAINT [FK_clientesCuentas_estados]
GO
ALTER TABLE [dbo].[clientesCuentas]  WITH CHECK ADD  CONSTRAINT [FK_clientesCuentas_monedas] FOREIGN KEY([id_moneda])
REFERENCES [dbo].[monedas] ([id_moneda])
GO
ALTER TABLE [dbo].[clientesCuentas] CHECK CONSTRAINT [FK_clientesCuentas_monedas]
GO
ALTER TABLE [dbo].[clientesCvu]  WITH CHECK ADD  CONSTRAINT [FK_clientesCvu_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[clientesCvu] CHECK CONSTRAINT [FK_clientesCvu_clientes]
GO
ALTER TABLE [dbo].[clientesEmail]  WITH CHECK ADD  CONSTRAINT [FK_clientesEmail_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[clientesEmail] CHECK CONSTRAINT [FK_clientesEmail_clientes]
GO
ALTER TABLE [dbo].[localidades]  WITH CHECK ADD  CONSTRAINT [FK_localidades_provincias] FOREIGN KEY([id_prov])
REFERENCES [dbo].[provincias] ([id_prov])
GO
ALTER TABLE [dbo].[localidades] CHECK CONSTRAINT [FK_localidades_provincias]
GO
ALTER TABLE [dbo].[operacionesNum]  WITH CHECK ADD  CONSTRAINT [FK_operacionesNum_operacionesTipos] FOREIGN KEY([id_operacion])
REFERENCES [dbo].[operacionesTipos] ([id_operacion])
GO
ALTER TABLE [dbo].[operacionesNum] CHECK CONSTRAINT [FK_operacionesNum_operacionesTipos]
GO
ALTER TABLE [dbo].[transaccReng]  WITH CHECK ADD  CONSTRAINT [FK_transaccReng_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[transaccReng] CHECK CONSTRAINT [FK_transaccReng_clientes]
GO
ALTER TABLE [dbo].[transaccReng]  WITH CHECK ADD  CONSTRAINT [FK_transaccReng_transaccTope] FOREIGN KEY([id_transaccion])
REFERENCES [dbo].[transaccTope] ([id_transaccion])
GO
ALTER TABLE [dbo].[transaccReng] CHECK CONSTRAINT [FK_transaccReng_transaccTope]
GO
ALTER TABLE [dbo].[transaccTope]  WITH CHECK ADD  CONSTRAINT [FK_transaccTope_estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([id_estado])
GO
ALTER TABLE [dbo].[transaccTope] CHECK CONSTRAINT [FK_transaccTope_estados]
GO
ALTER TABLE [dbo].[transaccTope]  WITH CHECK ADD  CONSTRAINT [FK_transaccTope_operacionesTipos] FOREIGN KEY([id_operacion])
REFERENCES [dbo].[operacionesTipos] ([id_operacion])
GO
ALTER TABLE [dbo].[transaccTope] CHECK CONSTRAINT [FK_transaccTope_operacionesTipos]
GO
USE [master]
GO
ALTER DATABASE [BVYaguarete] SET  READ_WRITE 
GO
