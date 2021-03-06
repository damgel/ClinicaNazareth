USE [clinica]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tratamiento', N'CONSTRAINT',N'CK_tratamiento'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tratamiento', @level2type=N'CONSTRAINT',@level2name=N'CK_tratamiento'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tipo_examen', N'CONSTRAINT',N'CK_tipo_examen_nombre'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipo_examen', @level2type=N'CONSTRAINT',@level2name=N'CK_tipo_examen_nombre'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'medicamento', N'COLUMN',N'presentaMedica'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'medicamento', @level2type=N'COLUMN',@level2name=N'presentaMedica'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'medicamento', N'COLUMN',N'viaAdmonMedica'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'medicamento', @level2type=N'COLUMN',@level2name=N'viaAdmonMedica'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'examen', N'CONSTRAINT',N'CK_examen_fechaSol'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen_fechaSol'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'examen', N'CONSTRAINT',N'CK_examen'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen'

GO
/****** Object:  Trigger [correotr]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[correotr]'))
DROP TRIGGER [dbo].[correotr]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] DROP CONSTRAINT [CK_tratamiento]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tipo_examen_nombre]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_examen]'))
ALTER TABLE [dbo].[tipo_examen] DROP CONSTRAINT [CK_tipo_examen_nombre]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreTipoempleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_empleado]'))
ALTER TABLE [dbo].[tipo_empleado] DROP CONSTRAINT [ckNombreTipoempleado]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreRol]') AND parent_object_id = OBJECT_ID(N'[dbo].[rol]'))
ALTER TABLE [dbo].[rol] DROP CONSTRAINT [ckNombreRol]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_4]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [CK_persona_4]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [CK_persona_3]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [CK_persona_2]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [CK_persona_1]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [CK_persona]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckproducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento] DROP CONSTRAINT [ckproducto]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckusuLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] DROP CONSTRAINT [ckusuLogin]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckpassLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] DROP CONSTRAINT [ckpassLogin]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen_fechaSol]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] DROP CONSTRAINT [CK_examen_fechaSol]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] DROP CONSTRAINT [CK_examen]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] DROP CONSTRAINT [CK_consulta_1]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] DROP CONSTRAINT [CK_consulta]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_cargo_soloLetras]') AND parent_object_id = OBJECT_ID(N'[dbo].[cargo]'))
ALTER TABLE [dbo].[cargo] DROP CONSTRAINT [CK_cargo_soloLetras]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkTratamientoConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] DROP CONSTRAINT [fkTratamientoConsulta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tratamiento_tipo_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] DROP CONSTRAINT [FK_tratamiento_tipo_tratamiento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_telefono_telefono]') AND parent_object_id = OBJECT_ID(N'[dbo].[telefono]'))
ALTER TABLE [dbo].[telefono] DROP CONSTRAINT [FK_telefono_telefono]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkGrupoSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[subgrupo]'))
ALTER TABLE [dbo].[subgrupo] DROP CONSTRAINT [fkGrupoSub]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkSalidaMedicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[salida]'))
ALTER TABLE [dbo].[salida] DROP CONSTRAINT [fkSalidaMedicamento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__salida__fktiposa__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[salida]'))
ALTER TABLE [dbo].[salida] DROP CONSTRAINT [FK__salida__fktiposa__7E37BEF6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKpersonaLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FKpersonaLogin]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pago_tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[pago]'))
ALTER TABLE [dbo].[pago] DROP CONSTRAINT [FK_pago_tipo_pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paciente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[paciente]'))
ALTER TABLE [dbo].[paciente] DROP CONSTRAINT [FK_paciente_paciente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_municipio_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio] DROP CONSTRAINT [FK_municipio_Departamento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkMediSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento] DROP CONSTRAINT [fkMediSub]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_login_rol]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] DROP CONSTRAINT [FK_login_rol]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_junta_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[junta]'))
ALTER TABLE [dbo].[junta] DROP CONSTRAINT [FK_junta_empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_horario_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[horario]'))
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [FK_horario_empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [FK_factura_pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [FK_factura_paciente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__factura__fkconsu__5F7E2DAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [FK__factura__fkconsu__5F7E2DAC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteEmpleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] DROP CONSTRAINT [fkExpedienteEmpleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteDetaMed]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] DROP CONSTRAINT [fkExpedienteDetaMed]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_expediente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] DROP CONSTRAINT [FK_expediente_paciente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExamenConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] DROP CONSTRAINT [fkExamenConsulta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_tipo_examen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] DROP CONSTRAINT [FK_examen_tipo_examen1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_resultado]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] DROP CONSTRAINT [FK_examen_resultado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkEmpleadoEntrada]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada] DROP CONSTRAINT [fkEmpleadoEntrada]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entrada_medicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada] DROP CONSTRAINT [FK_entrada_medicamento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_tipo_empleado1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK_empleado_tipo_empleado1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK_empleado_persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_cargo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK_empleado_cargo1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_documento_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[documento]'))
ALTER TABLE [dbo].[documento] DROP CONSTRAINT [FK_documento_persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_municipio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_s__fksal__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_salida]'))
ALTER TABLE [dbo].[detalle_salida] DROP CONSTRAINT [FK__detalle_s__fksal__6477ECF3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_s__fkmed__6383C8BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_salida]'))
ALTER TABLE [dbo].[detalle_salida] DROP CONSTRAINT [FK__detalle_s__fkmed__6383C8BA]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkDetalleTratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_medicina]'))
ALTER TABLE [dbo].[detalle_medicina] DROP CONSTRAINT [fkDetalleTratamiento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_f__fkmed__619B8048]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_factura]'))
ALTER TABLE [dbo].[detalle_factura] DROP CONSTRAINT [FK__detalle_f__fkmed__619B8048]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_f__fkfac__60A75C0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_factura]'))
ALTER TABLE [dbo].[detalle_factura] DROP CONSTRAINT [FK__detalle_f__fkfac__60A75C0F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_e__fkmed__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_entrada]'))
ALTER TABLE [dbo].[detalle_entrada] DROP CONSTRAINT [FK__detalle_e__fkmed__5FB337D6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_e__fkent__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_entrada]'))
ALTER TABLE [dbo].[detalle_entrada] DROP CONSTRAINT [FK__detalle_e__fkent__5EBF139D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_correo_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[correo]'))
ALTER TABLE [dbo].[correo] DROP CONSTRAINT [FK_correo_persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_expediente]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] DROP CONSTRAINT [FK_consulta_expediente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_cita]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] DROP CONSTRAINT [FK_consulta_cita]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita] DROP CONSTRAINT [FK_cita_paciente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita] DROP CONSTRAINT [FK_cita_horario]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_horario_estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [DF_horario_estado]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cita_estadoCita]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cita] DROP CONSTRAINT [DF_cita_estadoCita]
END

GO
/****** Object:  Index [UQ__tipo_pag__9CD5AC535842E045]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tipo_pago]') AND name = N'UQ__tipo_pag__9CD5AC535842E045')
ALTER TABLE [dbo].[tipo_pago] DROP CONSTRAINT [UQ__tipo_pag__9CD5AC535842E045]
GO
/****** Object:  Index [UQ__paciente__52AEF05DF64BFA80]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND name = N'UQ__paciente__52AEF05DF64BFA80')
ALTER TABLE [dbo].[paciente] DROP CONSTRAINT [UQ__paciente__52AEF05DF64BFA80]
GO
/****** Object:  Index [IX_expediente]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[expediente]') AND name = N'IX_expediente')
DROP INDEX [IX_expediente] ON [dbo].[expediente]
GO
/****** Object:  Index [UQ__empleado__52AEF05D2EA1F731]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND name = N'UQ__empleado__52AEF05D2EA1F731')
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [UQ__empleado__52AEF05D2EA1F731]
GO
/****** Object:  Index [IX_consulta]    Script Date: 24/06/2014 13:37:23 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[consulta]') AND name = N'IX_consulta')
DROP INDEX [IX_consulta] ON [dbo].[consulta]
GO
/****** Object:  Table [dbo].[tratamiento]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tratamiento]') AND type in (N'U'))
DROP TABLE [dbo].[tratamiento]
GO
/****** Object:  Table [dbo].[tipo_tratamiento]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_tratamiento]') AND type in (N'U'))
DROP TABLE [dbo].[tipo_tratamiento]
GO
/****** Object:  Table [dbo].[tipo_salida]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_salida]') AND type in (N'U'))
DROP TABLE [dbo].[tipo_salida]
GO
/****** Object:  Table [dbo].[tipo_pago]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_pago]') AND type in (N'U'))
DROP TABLE [dbo].[tipo_pago]
GO
/****** Object:  Table [dbo].[tipo_examen]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_examen]') AND type in (N'U'))
DROP TABLE [dbo].[tipo_examen]
GO
/****** Object:  Table [dbo].[tipo_empleado]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_empleado]') AND type in (N'U'))
DROP TABLE [dbo].[tipo_empleado]
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[telefono]') AND type in (N'U'))
DROP TABLE [dbo].[telefono]
GO
/****** Object:  Table [dbo].[subgrupo]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subgrupo]') AND type in (N'U'))
DROP TABLE [dbo].[subgrupo]
GO
/****** Object:  Table [dbo].[salida]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[salida]') AND type in (N'U'))
DROP TABLE [dbo].[salida]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rol]') AND type in (N'U'))
DROP TABLE [dbo].[rol]
GO
/****** Object:  Table [dbo].[resultado]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resultado]') AND type in (N'U'))
DROP TABLE [dbo].[resultado]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona]') AND type in (N'U'))
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pago]') AND type in (N'U'))
DROP TABLE [dbo].[pago]
GO
/****** Object:  Table [dbo].[paciente]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND type in (N'U'))
DROP TABLE [dbo].[paciente]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[municipio]') AND type in (N'U'))
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[medicamento]') AND type in (N'U'))
DROP TABLE [dbo].[medicamento]
GO
/****** Object:  Table [dbo].[login]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'U'))
DROP TABLE [dbo].[login]
GO
/****** Object:  Table [dbo].[junta]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[junta]') AND type in (N'U'))
DROP TABLE [dbo].[junta]
GO
/****** Object:  Table [dbo].[horario]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[horario]') AND type in (N'U'))
DROP TABLE [dbo].[horario]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grupo]') AND type in (N'U'))
DROP TABLE [dbo].[grupo]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[factura]') AND type in (N'U'))
DROP TABLE [dbo].[factura]
GO
/****** Object:  Table [dbo].[expediente]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expediente]') AND type in (N'U'))
DROP TABLE [dbo].[expediente]
GO
/****** Object:  Table [dbo].[examen]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[examen]') AND type in (N'U'))
DROP TABLE [dbo].[examen]
GO
/****** Object:  Table [dbo].[entrada]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entrada]') AND type in (N'U'))
DROP TABLE [dbo].[entrada]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND type in (N'U'))
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[documento]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[documento]') AND type in (N'U'))
DROP TABLE [dbo].[documento]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Direccion]') AND type in (N'U'))
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[detalle_salida]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_salida]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_salida]
GO
/****** Object:  Table [dbo].[detalle_medicina]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_medicina]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_medicina]
GO
/****** Object:  Table [dbo].[detalle_factura]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_factura]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_factura]
GO
/****** Object:  Table [dbo].[detalle_entrada]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_entrada]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_entrada]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[correo]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[correo]') AND type in (N'U'))
DROP TABLE [dbo].[correo]
GO
/****** Object:  Table [dbo].[consulta]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[consulta]') AND type in (N'U'))
DROP TABLE [dbo].[consulta]
GO
/****** Object:  Table [dbo].[cita]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cita]') AND type in (N'U'))
DROP TABLE [dbo].[cita]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cargo]') AND type in (N'U'))
DROP TABLE [dbo].[cargo]
GO
/****** Object:  StoredProcedure [dbo].[responsable]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[responsable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[responsable]
GO
/****** Object:  StoredProcedure [dbo].[registroUsuario]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[registroUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[registroUsuario]
GO
/****** Object:  StoredProcedure [dbo].[registroempleado]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[registroempleado]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[registroempleado]
GO
/****** Object:  StoredProcedure [dbo].[PacienteTarde]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteTarde]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PacienteTarde]
GO
/****** Object:  StoredProcedure [dbo].[PacienteEspera]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteEspera]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PacienteEspera]
GO
/****** Object:  StoredProcedure [dbo].[PacienteConfirmado]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteConfirmado]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PacienteConfirmado]
GO
/****** Object:  StoredProcedure [dbo].[InsertCita]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertCita]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertCita]
GO
USE [master]
GO
/****** Object:  Database [clinica]    Script Date: 24/06/2014 13:37:24 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'clinica')
DROP DATABASE [clinica]
GO
/****** Object:  Database [clinica]    Script Date: 24/06/2014 13:37:24 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'clinica')
BEGIN
CREATE DATABASE [clinica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'clinica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2\MSSQL\DATA\clinica.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'clinica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2\MSSQL\DATA\clinica_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [clinica] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [clinica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [clinica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [clinica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [clinica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [clinica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [clinica] SET ARITHABORT OFF 
GO
ALTER DATABASE [clinica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [clinica] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [clinica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [clinica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [clinica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [clinica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [clinica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [clinica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [clinica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [clinica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [clinica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [clinica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [clinica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [clinica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [clinica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [clinica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [clinica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [clinica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [clinica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [clinica] SET  MULTI_USER 
GO
ALTER DATABASE [clinica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [clinica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [clinica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [clinica] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'clinica', N'ON'
GO
USE [clinica]
GO
/****** Object:  StoredProcedure [dbo].[InsertCita]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertCita]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[InsertCita](@idHorario int, @fechaCita date, @idMedicoAsig int, @idPaciente int, @idPersona int, @MotivoCita varchar(50), @CorreoPaciente varchar(50), @Telefono varchar(50))
as
Insert into cita(fechaCita, correoCita,motivo, estadoCita, fkhorario, fkPaciente) values(@fechaCita,@CorreoPaciente,@MotivoCita, ''sin confirmacion'',@idHorario, @idPaciente)
Insert into correo(Correo,fkPersona) values(@CorreoPaciente,@idPersona)
Insert into telefono(numero,tipo,idPerson)values(@Telefono,''residencial'',@idPersona)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[PacienteConfirmado]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteConfirmado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[PacienteConfirmado]
   


AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try
select CONCAT(c.idCita,'''',a.idPaciente)as Codigo, concat(p.pnombrePer,'''',p.snombrePer,'''' ,p.pApellPer,'''',p.sApellPer) as nombre,(c.motivo)Motivo,(g.nombreCargo)Especialidad,(m.pApellPer ) as Medico,(h.horaini)as Hora from cita as c inner join paciente as a on c.fkPaciente=a.idPaciente
inner join persona as p on p.idPersona=a.fkpersona
inner join horario as h on h.idhorario=c.fkhorario
inner join empleado as e on e.idEmpleado=h.fkempleado
inner join persona as m on e.fkpersona=m.idPersona
inner join cargo as g on g.idCargo=e.fkCargo where c.fechaCita=CONVERT (date, GETDATE()) and c.estadoCita=''confirmado'' and h.horaini>=convert(time,GETDATE()) ;

        COMMIT TRAN Tadd

    End try
    Begin Catch

       
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[PacienteEspera]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteEspera]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PacienteEspera]
   
  

AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try

  select CONCAT(c.idCita,'''',a.idPaciente)as Codigo, c.correoCita,(p.pnombrePer) as Nombre,(c.fechacita) as FechaSolicitud ,convert(date,getdate()) as Fecha,(h.horaini)as Hora,( c.estadoCita) as Estado from cita as c inner join paciente as a on c.fkPaciente=a.idPaciente
inner join persona as p on p.idPersona=a.fkpersona
inner join horario as h on h.idhorario=c.fkhorario
inner join empleado as e on e.idEmpleado=h.fkempleado
inner join persona as m on e.fkpersona=m.idPersona
inner join cargo as g on g.idCargo=e.fkCargo where c.estadoCita=''espera'' and fechaCita>=CONVERT(date,getdate()) ;

        COMMIT TRAN Tadd

    End try
    Begin Catch

       
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[PacienteTarde]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PacienteTarde]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[PacienteTarde]
   


AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try
select CONCAT(c.idCita,'''',a.idPaciente)as Codigo,concat(p.pnombrePer,'' '',p.snombrePer,'' '' ,p.pApellPer,'' '',p.sApellPer) as nombre,(m.pApellPer ) as Medico from cita as c inner join paciente as a on c.fkPaciente=a.idPaciente
inner join persona as p on p.idPersona=a.fkpersona
inner join horario as h on h.idhorario=c.fkhorario
inner join empleado as e on e.idEmpleado=h.fkempleado
inner join persona as m on e.fkpersona=m.idPersona
inner join cargo as g on g.idCargo=e.fkCargo where c.fechaCita=CONVERT (date, GETDATE()) and c.estadoCita=''confirmado'' and h.horaini<convert(time,GETDATE()) ;

        COMMIT TRAN Tadd

    End try
    Begin Catch

       
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[registroempleado]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[registroempleado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[registroempleado]
    @rol as int,
    @usu AS VARCHAR(50),
    @pass AS VARCHAR(50),
    @pnombre AS VARCHAR(30),
	@snombre AS VARCHAR(30),
	@papellido AS VARCHAR(30),
	@sapellido AS VARCHAR(30),
	@fechanaci AS date,
	@sexo AS VARCHAR(2),
	
	@numDocu as varchar(50),
    @tipodocu as varchar(50),
	@numtele as varchar(50),
	@tipotele as varchar(50),
	@calle as varchar(50),
	@casa as varchar(50),
	@munici as int,
	@correo as varchar(50),
	@tipocorreo as varchar(50),
    @idJer AS BIGINT,
	@cargo as int,
	@tipoempleado as int,
    @idpersona as int=0

AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try

        INSERT INTO dbo.login(usuLogin,passLogin,fkRol) VALUES (@usu,@pass,@rol)
        INSERT INTO dbo.persona(pnombrePer,snombrePer,pApellPer,sApellPer,fechaNacPer,sexo,fkLogin,fkresponsable) VALUES (@pnombre,@snombre,@papellido,@sapellido,@fechanaci,@sexo,@@IDENTITY, @idJer)
		select @idpersona=@@IDENTITY
	    INSERT INTO  dbo.documento(numero,tipo,fkpersona ) values (@numDocu,@tipodocu,@idpersona)
		INSERT INTO  dbo.telefono(numero,tipo,idPerson) values(@numtele,@tipotele,@idpersona)
		INSERT INTO dbo.Direccion(calleDireccion,casaDireccion,fkMunicipio,fkpersona)values(@calle,@casa,@munici,@idpersona)
		INSERT INTO  dbo.correo(Correo,tipo,fkPersona) values(@correo,@tipocorreo,@idpersona)
		insert into dbo.empleado(fkCargo,fkTipoemple,fkpersona) values(@cargo,@tipoempleado,@idpersona)
     

        COMMIT TRAN Tadd

    End try
    Begin Catch

        
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[registroUsuario]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[registroUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[registroUsuario]
    @usu AS VARCHAR(50),
    @pass AS VARCHAR(50),
    @pnombre AS VARCHAR(30),
	@snombre AS VARCHAR(30),
	@papellido AS VARCHAR(30),
	@sapellido AS VARCHAR(30),
	@fechanaci AS date,
	@sexo AS VARCHAR(2),
	@numDocu as varchar(50),
    @tipodocu as varchar(50),
	@numtele as varchar(50),
	@tipotele as varchar(50),
	@calle as varchar(50),
	@casa as varchar(50),
	@munici as int,
	@correo as varchar(50),
	@tipocorreo as varchar(50),
    @idJer AS int,
    @idpersona as int=0
  

AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try

        INSERT INTO dbo.login(usuLogin,passLogin,fkRol) VALUES (@usu,@pass,1)
        INSERT INTO dbo.persona(pnombrePer,snombrePer,pApellPer,sApellPer,fechaNacPer,sexo,fkLogin,fkresponsable) VALUES (@pnombre,@snombre,@papellido,@sapellido,@fechanaci,@sexo,@@IDENTITY, @idJer)
		select @idpersona=@@IDENTITY
	    INSERT INTO  dbo.documento(numero,tipo,fkpersona ) values (@numDocu,@tipodocu,@idpersona)
		INSERT INTO  dbo.telefono(numero,tipo,idPerson) values(@numtele,@tipotele,@idpersona)
		INSERT INTO dbo.Direccion(calleDireccion,casaDireccion,fkMunicipio,fkpersona)values(@calle,@casa,@munici,@idpersona)
		INSERT INTO  dbo.correo(Correo,tipo,fkPersona) values(@correo,@tipocorreo,@idpersona)
		insert into dbo.paciente(fkpersona) values(@idpersona)
   

        COMMIT TRAN Tadd

    End try
    Begin Catch

     
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[responsable]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[responsable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[responsable]
    
 
	
  

AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try
	select p.idpaciente,  n.pnombrePer,n.snombrePer,n.pnombrePer,n.sApellPer from paciente as p inner join persona as n on n.idPersona=p.fkpersona
   

        COMMIT TRAN Tadd

    End try
    Begin Catch

     
        Rollback TRAN Tadd

    End Catch

END

' 
END
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 24/06/2014 13:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cargo](
	[idCargo] [int] IDENTITY(1,1) NOT NULL,
	[nombreCargo] [varchar](50) NULL,
	[descripcionCargo] [varchar](50) NULL,
 CONSTRAINT [PK_cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cita]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cita]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[fechaCita] [date] NOT NULL,
	[correoCita] [varchar](50) NOT NULL,
	[fkhorario] [int] NOT NULL,
	[motivo] [varchar](90) NULL,
	[estadoCita] [varchar](50) NOT NULL,
	[fkPaciente] [int] NOT NULL,
 CONSTRAINT [PK_cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[consulta]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[consulta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[consulta](
	[idConsulta] [int] IDENTITY(1,1) NOT NULL,
	[fechaConsulta] [date] NOT NULL,
	[horaConsulta] [time](7) NOT NULL,
	[peso] [varchar](50) NULL,
	[temperatura] [varchar](50) NOT NULL,
	[tensionalterial] [varbinary](50) NULL,
	[consultaPor] [varchar](250) NULL,
	[pulso] [varchar](50) NOT NULL,
	[tipoConsulta] [varchar](50) NOT NULL,
	[Medicamentos] [varchar](50) NULL,
	[Examenes] [varchar](250) NULL,
	[sintomasConsulta] [varchar](50) NOT NULL,
	[diagnostico] [varchar](MAX) NOT NULL,
	[fkcita] [int] NULL,
	[fkExpediente] [int] NULL,
 CONSTRAINT [PK_consulta] PRIMARY KEY CLUSTERED 
(
	[idConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[correo]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[correo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[correo](
	[idCorreo] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[fkPersona] [int] NOT NULL,
 CONSTRAINT [PK_correo] PRIMARY KEY CLUSTERED 
(
	[idCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departamento](
	[idDep] [int] IDENTITY(1,1) NOT NULL,
	[nombreDepa] [varchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[idDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_entrada]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_entrada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_entrada](
	[id] [int] NOT NULL,
	[fkentrada] [int] NOT NULL,
	[fkmedicina] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[fechacaducidad] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[detalle_factura]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_factura](
	[id] [int] NOT NULL,
	[fkfactura] [int] NOT NULL,
	[fkmedicina] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[detalle_medicina]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_medicina]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_medicina](
	[idDetMedTrata] [int] IDENTITY(1,1) NOT NULL,
	[fkTratamiento] [int] NULL,
	[fkSalidaPro] [int] NULL,
 CONSTRAINT [PK_detalle_medicina] PRIMARY KEY CLUSTERED 
(
	[idDetMedTrata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[detalle_salida]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_salida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_salida](
	[id] [int] NOT NULL,
	[fksalida] [int] NOT NULL,
	[fkmedicina] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Direccion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] IDENTITY(1,1) NOT NULL,
	[calleDireccion] [varchar](50) NULL,
	[casaDireccion] [varchar](50) NULL,
	[fkMunicipio] [int] NOT NULL,
	[fkpersona] [int] NOT NULL,
 CONSTRAINT [PK_Dirreccion] PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[documento]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[documento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[documento](
	[idDocu] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[fkpersona] [int] NULL,
 CONSTRAINT [PK_documento] PRIMARY KEY CLUSTERED 
(
	[idDocu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[fkTipoemple] [int] NOT NULL,
	[fkCargo] [int] NOT NULL,
	[fkpersona] [int] NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[entrada]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entrada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entrada](
	[idEntr] [int] IDENTITY(1,1) NOT NULL,
	[cantidadEntrada] [int] NOT NULL,
	[presentacionEntrada] [varchar](50) NULL,
	[precioEntrada] [decimal](18, 0) NULL,
	[fkEmpleado] [int] NULL,
	[fkmedicamento] [int] NULL,
	[fechaCaducidad] [date] NULL,
	[fechain] [date] NOT NULL,
 CONSTRAINT [PK_entrada] PRIMARY KEY CLUSTERED 
(
	[idEntr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[examen]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[examen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[examen](
	[idExamen] [int] IDENTITY(1,1) NOT NULL,
	[fechasoliExamen] [datetime] NULL,
	[fechaaplicacionExamen] [datetime] NULL,
	[observExamen] [varchar](50) NULL,
	[fkTipoexamen] [int] NOT NULL,
	[fkResultado] [int] NOT NULL,
	[fkConsulta] [int] NULL,
	[fkExpediente] [int] NOT NULL,
 CONSTRAINT [PK_examen] PRIMARY KEY CLUSTERED 
(
	[idExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expediente]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expediente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[expediente](
	[idExpedi] [int] IDENTITY(1,1) NOT NULL,
	[fkDetMedTrata] [int] NULL,
	[fkEmpleado] [int] NOT NULL,
	[fkpaciente] [int] NULL,
 CONSTRAINT [PK_historial] PRIMARY KEY CLUSTERED 
(
	[idExpedi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[factura]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[factura](
	[idFactura] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](50) NULL,
	[fkPaciente] [int] NOT NULL,
	[fkEmpleado] [int] NULL,
	[fkPago] [int] NULL,
	[fkconsulta] [int] NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grupo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[grupo](
	[idGrupo] [int] IDENTITY(1,1) NOT NULL,
	[nombreGrupo] [varchar](50) NULL,
 CONSTRAINT [PK_grupo] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[horario]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[horario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[horario](
	[idhorario] [int] IDENTITY(1,1) NOT NULL,
	[horaini] [time](1) NULL,
	[estado] [varchar](1) NULL,
	[fkempleado] [int] NOT NULL,
 CONSTRAINT [PK_horario] PRIMARY KEY CLUSTERED 
(
	[idhorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[junta]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[junta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[junta](
	[idJunta] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](50) NULL,
	[fkMedico] [int] NULL,
 CONSTRAINT [PK_junta] PRIMARY KEY CLUSTERED 
(
	[idJunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[login](
	[idLogin] [int] IDENTITY(1,1) NOT NULL,
	[usuLogin] [varchar](50) NOT NULL,
	[passLogin] [varchar](50) NOT NULL,
	[fkRol] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[idLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medicamento]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[medicamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[medicamento](
	[idMedica] [int] IDENTITY(1,1) NOT NULL,
	[nombreMedica] [varchar](50) NOT NULL,
	[viaAdmonMedica] [varchar](50) NULL,
	[presentaMedica] [varchar](50) NULL,
	[existenciaMedica] [int] NULL,
	[EstadoMedica] [varchar](50) NOT NULL,
	[fkSubGrupo] [int] NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[municipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[municipio](
	[idmuni] [int] IDENTITY(1,1) NOT NULL,
	[nombreMui] [varchar](255) NULL,
	[fkDepa] [int] NULL,
 CONSTRAINT [PK_Hoja1$] PRIMARY KEY CLUSTERED 
(
	[idmuni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paciente]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[paciente](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[fkpersona] [int] NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[pago]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pago](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[valorPago] [numeric](18, 0) NULL,
	[fkTipopago] [int] NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[persona]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[pnombrePer] [varchar](30) NOT NULL,
	[snombrePer] [varchar](30) NULL,
	[pApellPer] [varchar](30) NOT NULL,
	[sApellPer] [varchar](50) NULL,
	[fechaNacPer] [date] NOT NULL,
	[sexo] [varchar](1) NULL,
	[iglesia] [varchar](50) NULL,
	[fkLogin] [int] NULL,
	[fkresponsable] [int] NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[resultado]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resultado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[resultado](
	[idResultado] [int] IDENTITY(1,1) NOT NULL,
	[descripcionResul] [varchar](100) NULL,
 CONSTRAINT [PK_resultado] PRIMARY KEY CLUSTERED 
(
	[idResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [varchar](50) NULL,
	[descripcionRol] [varchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salida]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[salida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[salida](
	[idsalida] [int] IDENTITY(1,1) NOT NULL,
	[fechaSalida] [date] NOT NULL,
	[fkMedicamento] [int] NOT NULL,
	[fktiposalida] [int] NULL,
 CONSTRAINT [PK_salida] PRIMARY KEY CLUSTERED 
(
	[idsalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[subgrupo]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subgrupo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subgrupo](
	[idSubGrupo] [int] IDENTITY(1,1) NOT NULL,
	[nombreSubGrupo] [varchar](50) NULL,
	[fkGrupo] [int] NULL,
 CONSTRAINT [PK_subgrupo] PRIMARY KEY CLUSTERED 
(
	[idSubGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[telefono]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[telefono](
	[idtelefono] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NULL,
	[idPerson] [int] NOT NULL,
 CONSTRAINT [PK_telefono] PRIMARY KEY CLUSTERED 
(
	[idtelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_empleado]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_empleado](
	[idTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoEmp] [varchar](50) NULL,
	[descripcionTipoEmp] [varchar](80) NULL,
 CONSTRAINT [PK_tipo_empleado] PRIMARY KEY CLUSTERED 
(
	[idTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_examen]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_examen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_examen](
	[idTipoExamen] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoExa] [varchar](50) NULL,
	[descripcionTipoExa] [varchar](90) NULL,
 CONSTRAINT [PK_tipo_examen] PRIMARY KEY CLUSTERED 
(
	[idTipoExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_pago]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_pago](
	[idTipopago] [int] IDENTITY(1,1) NOT NULL,
	[descripcionTipoPago] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_pago] PRIMARY KEY CLUSTERED 
(
	[idTipopago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_salida]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_salida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_salida](
	[id] [int] NOT NULL,
	[nombre] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_tratamiento]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_tratamiento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_tratamiento](
	[idTipoTratamient] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoTrata] [varchar](50) NULL,
	[descripcionTipoTrata] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_tratamiento] PRIMARY KEY CLUSTERED 
(
	[idTipoTratamient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tratamiento]    Script Date: 24/06/2014 13:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tratamiento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tratamiento](
	[idTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[fechainiTrata] [date] NOT NULL,
	[fechasoliTrata] [date] NULL,
	[observaTrata] [varchar](150) NOT NULL,
	[fechafinalTrata] [datetime] NULL,
	[fkConsulta] [int] NULL,
	[fkTipoTrata] [int] NULL,
 CONSTRAINT [PK_tratamiento] PRIMARY KEY CLUSTERED 
(
	[idTratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cargo] ON 

INSERT [dbo].[cargo] ([idCargo], [nombreCargo], [descripcionCargo]) VALUES (1, N'medicina', N'diagnostico')
INSERT [dbo].[cargo] ([idCargo], [nombreCargo], [descripcionCargo]) VALUES (2, N'medico', N'diagnostico')
INSERT [dbo].[cargo] ([idCargo], [nombreCargo], [descripcionCargo]) VALUES (3, N'administrativo', N'atender personas')
INSERT [dbo].[cargo] ([idCargo], [nombreCargo], [descripcionCargo]) VALUES (4, N'laboratorista', N'examenes')
SET IDENTITY_INSERT [dbo].[cargo] OFF
SET IDENTITY_INSERT [dbo].[cita] ON 

INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1, CAST(0xA3380B00 AS Date), N'email@Nazareth.com                 ', 31, N'Dorlor', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (6, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 31, N'miedo', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (10, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 3, N'dolor', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (12, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 6, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (13, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (15, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 31, N'confirmado', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (17, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (19, CAST(0xAF380B00 AS Date), N'jaga_jangel@hotmail.com', 3, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (21, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (23, CAST(0xAF380B00 AS Date), N'jaga_jangel@hotmail.com', 6, N'enfermedad', N'confirmado', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (25, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 7, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (26, CAST(0xA7380B00 AS Date), N'clinicanazareth.asi@gmail.com', 7, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (27, CAST(0xAE380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'confirmado', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (28, CAST(0xAF380B00 AS Date), N'email@Nazareth.com                 ', 31, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (29, CAST(0xAF380B00 AS Date), N'ntesorero@ufg.edu.sv', 17, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (30, CAST(0xAE380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'confirmado', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (31, CAST(0xAE380B00 AS Date), N'email@Nazareth.com                 ', 18, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (32, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 18, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (33, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (34, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (35, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (36, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (37, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (38, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (39, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'confirmado', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (40, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (41, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (42, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (43, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (44, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (45, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (46, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (47, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (48, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (49, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (50, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (51, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (52, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (53, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (54, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (55, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (56, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (57, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (58, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (59, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (60, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (61, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (62, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (63, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (64, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (65, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (66, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (67, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (68, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (69, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (70, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (71, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (72, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (73, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (74, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (75, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 3, N'enfermedad', N'conformada', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (76, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (77, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (78, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (79, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (80, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (81, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (82, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (83, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (84, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (85, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (86, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (87, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (88, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (89, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (90, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 4, N'enfermedad', N'tardado   ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (91, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (92, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (93, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (94, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (95, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (96, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (97, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (98, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (99, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (100, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (101, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (102, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (103, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (104, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (105, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (106, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (107, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (108, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (109, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (110, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (111, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (112, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (113, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (114, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (115, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (116, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (117, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (118, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (119, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (120, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 12)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (121, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (122, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (123, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (124, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (125, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (126, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (127, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (128, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (129, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (130, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (131, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (132, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 31, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (133, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'Consulta', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (134, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (135, CAST(0xA4380B00 AS Date), N'jaga_jangel@hotmail.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (136, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 31, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (137, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 31, N'enfermedad', N'consulta', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (138, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (139, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (140, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'confirmado', 13)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (141, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (142, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (143, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (144, CAST(0xA4380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (145, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (146, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (147, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (148, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (149, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (150, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (151, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (152, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (153, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (154, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (155, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (156, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (157, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (158, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (159, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (160, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (161, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (162, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (163, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (164, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (165, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (166, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (167, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (168, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (169, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (170, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (171, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (172, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (173, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (174, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (175, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (176, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (177, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (178, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (179, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'confirmado', 17)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (180, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (181, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (182, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (183, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (184, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (185, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (186, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (187, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (188, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (189, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (190, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (191, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (192, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (193, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (194, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (195, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (196, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (197, CAST(0xA1380B00 AS Date), N'kdsoul.original@gmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (198, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (199, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (200, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (201, CAST(0xA1380B00 AS Date), N'chepeto24@hotmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (202, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (203, CAST(0xA8380B00 AS Date), N'jaga_jangel@hotmail.com', 7, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (204, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (205, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (206, CAST(0xA1380B00 AS Date), N'crcc002@gmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (207, CAST(0xA1380B00 AS Date), N'zaid.haz@gmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (208, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (209, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (210, CAST(0xA1380B00 AS Date), N'manc_27_12_86@hotmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (211, CAST(0xA1380B00 AS Date), N'angelvin0291@gmail.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (212, CAST(0xA1380B00 AS Date), N'manc_27_12_86@hotmail.com', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (213, CAST(0xA1380B00 AS Date), N'angelvin0291@gmail.com', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (214, CAST(0xA1380B00 AS Date), N'angelvin0291@gmail.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (215, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (216, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (217, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (218, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (219, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (220, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (221, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (222, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (223, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (224, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (225, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (226, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (227, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (228, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (229, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (230, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (231, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (232, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (233, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (234, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (235, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (236, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (237, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (238, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (239, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (240, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (241, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (242, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (243, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (244, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (245, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (246, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (247, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (248, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (249, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (250, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (251, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (252, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (253, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (254, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (255, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (256, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (257, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (258, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (259, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (260, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (261, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (262, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (263, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (264, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (265, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (266, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (267, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (268, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (269, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (270, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (271, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (272, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (273, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (274, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (275, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (276, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (277, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (278, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (279, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (280, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (281, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (282, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (283, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (284, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (285, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (286, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (287, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (288, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (289, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (290, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (291, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (292, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (293, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (294, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (295, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (296, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (297, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (298, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (299, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (300, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (301, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (302, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (303, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (304, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (305, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (306, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (307, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (308, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (309, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (310, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (311, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (312, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (313, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (314, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (315, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (316, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (317, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (318, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (319, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (320, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (321, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (322, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (323, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (324, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (325, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (326, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (327, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (328, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (329, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (330, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (331, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (332, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (333, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (334, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (335, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (336, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (337, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (338, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (339, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (340, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (341, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (342, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (343, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (344, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (345, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (346, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (347, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (348, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (349, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (350, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (351, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (352, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (353, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (354, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (355, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (356, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (357, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (358, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (359, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (360, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (361, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (362, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (363, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (364, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (365, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (366, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (367, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (368, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (369, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (370, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (371, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (372, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (373, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (374, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (375, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (376, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (377, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (378, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (379, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (380, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (381, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (382, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (383, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (384, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (385, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (386, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (387, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (388, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (389, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (390, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (391, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (392, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (393, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (394, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (395, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (396, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (397, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (398, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (399, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (400, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (401, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (402, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (403, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (404, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (405, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (406, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (407, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (408, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (409, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (410, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (411, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (412, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (413, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (414, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (415, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (416, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (417, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (418, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (419, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (420, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (421, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (422, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (423, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (424, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (425, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (426, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (427, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (428, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (429, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (430, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (431, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (432, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (433, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (434, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (435, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (436, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (437, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (438, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (439, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (440, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (441, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (442, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (443, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (444, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (445, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (446, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (447, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (448, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (449, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (450, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (451, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (452, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (453, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (454, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (455, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (456, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (457, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (458, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (459, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (460, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (461, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (462, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (463, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (464, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (465, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (466, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (467, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (468, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (469, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (470, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (471, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (472, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (473, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (474, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (475, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (476, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (477, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (478, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (479, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (480, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (481, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (482, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (483, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (484, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (485, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (486, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (487, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (488, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (489, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (490, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (491, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (492, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (493, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (494, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (495, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (496, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (497, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (498, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (499, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (500, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (501, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (502, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (503, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (504, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (505, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (506, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (507, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (508, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (509, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (510, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (511, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (512, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (513, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (514, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (515, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (516, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (517, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (518, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (519, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (520, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (521, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (522, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (523, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (524, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (525, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (526, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (527, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (528, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (529, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (530, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (531, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (532, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (533, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (534, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (535, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (536, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (537, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (538, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (539, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (540, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (541, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (542, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (543, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (544, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (545, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (546, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (547, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (548, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (549, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (550, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (551, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (552, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (553, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (554, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (555, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (556, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (557, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (558, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (559, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (560, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (561, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (562, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (563, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (564, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (565, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (566, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (567, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (568, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (569, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (570, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (571, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (572, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (573, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (574, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (575, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (576, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (577, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (578, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (579, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (580, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (581, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (582, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (583, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (584, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (585, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (586, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (587, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (588, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (589, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (590, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (591, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (592, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (593, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (594, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (595, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (596, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (597, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (598, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (599, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (600, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (601, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (602, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (603, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (604, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (605, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (606, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (607, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (608, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (609, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (610, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (611, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (612, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (613, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (614, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (615, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (616, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (617, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (618, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (619, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (620, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (621, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (622, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (623, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (624, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (625, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (626, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (627, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (628, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (629, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (630, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (631, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (632, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (633, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (634, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (635, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (636, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (637, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (638, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (639, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (640, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (641, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (642, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (643, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (644, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (645, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (646, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (647, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (648, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (649, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (650, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (651, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (652, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (653, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (654, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (655, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (656, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (657, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (658, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (659, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (660, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (661, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (662, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (663, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (664, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (665, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (666, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (667, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (668, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (669, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (670, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (671, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (672, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (673, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (674, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (675, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (676, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (677, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (678, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (679, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (680, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (681, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (682, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (683, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (684, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (685, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (686, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (687, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (688, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (689, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (690, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (691, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (692, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (693, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (694, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (695, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (696, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (697, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (698, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (699, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (700, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (701, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (702, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (703, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (704, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (705, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (706, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (707, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (708, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (709, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (710, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (711, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (712, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (713, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (714, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (715, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (716, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (717, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (718, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (719, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (720, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (721, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (722, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (723, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (724, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (725, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (726, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (727, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (728, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (729, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (730, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (731, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (732, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (733, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (734, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (735, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (736, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (737, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (738, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (739, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (740, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (741, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (742, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (743, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (744, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (745, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (746, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (747, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (748, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (749, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (750, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (751, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (752, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (753, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (754, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (755, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (770, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 24, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (782, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (788, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 25, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (791, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 11, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (797, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (804, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (807, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (816, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (857, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 14, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (861, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (868, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (883, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 24, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (895, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (901, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 25, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (904, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 11, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (910, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (917, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (920, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (929, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (942, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 24, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (954, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (960, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 25, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (963, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 11, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (969, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (976, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (979, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (995, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 24, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1009, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 24, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1021, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 17, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1027, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 25, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1030, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 11, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1036, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1043, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1046, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1055, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1096, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 14, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1100, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1107, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1118, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1128, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1131, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 18, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1133, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1140, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 6, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1155, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 22, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1158, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 11, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1160, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1164, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 23, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1174, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 9, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1178, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 19, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1190, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 7, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1199, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 21, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1206, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 1, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1220, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 6, N'enfermedad', N'espera    ', 10)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1222, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 14, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1236, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 10, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1237, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 22, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1254, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 13, N'enfermedad', N'espera    ', 11)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1267, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 15, N'enfermedad', N'espera    ', 11)
GO
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1272, CAST(0xA1380B00 AS Date), N'email@Nazareth.com                 ', 20, N'enfermedad', N'espera    ', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1273, CAST(0xA8380B00 AS Date), N'saber', 1, N'confirmado', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1274, CAST(0xA9380B00 AS Date), N'confirmado', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1275, CAST(0xA9380B00 AS Date), N'confirmado', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1276, CAST(0xA9380B00 AS Date), N'confirmado', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1277, CAST(0xA9380B00 AS Date), N'confirmado', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1278, CAST(0xA9380B00 AS Date), N'jaga_jangel', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1279, CAST(0xA9380B00 AS Date), N'jaga_jangel', 1, N'dolor', N'sin confirmacion', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1280, CAST(0xA2380B00 AS Date), N'angelvin0291@gmail.com', 4, N'dolor de cabez', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1282, CAST(0xA3380B00 AS Date), N'angelvin0291@gmail.com', 13, N'dolor', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1283, CAST(0xA3380B00 AS Date), N'angelvin0291@gmail.com', 1, N'enfe', N'espara', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1284, CAST(0xA6380B00 AS Date), N'angelvin0291@gmail.com', 1, N'miedo', N'confirmado', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1285, CAST(0xA7380B00 AS Date), N'angelvin0291@gmail.com', 1, N'dolor', N'cancelado', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1286, CAST(0xA6380B00 AS Date), N'clinicanazareth.asi@gmail.com', 1, N'cabez', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1287, CAST(0xAB380B00 AS Date), N'angelvin0291@gmail.com', 14, N'enfermedad', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1289, CAST(0xA5380B00 AS Date), N'jaga_jangel@hotmail.com', 1, N'enfermedad', N'espera', 1)
INSERT [dbo].[cita] ([idCita], [fechaCita], [correoCita], [fkhorario], [motivo], [estadoCita], [fkPaciente]) VALUES (1292, CAST(0xA8380B00 AS Date), N'jaga_jangel@hotmail.com', 6, N'dolor de cabeza', N'espera', 1)
SET IDENTITY_INSERT [dbo].[cita] OFF
SET IDENTITY_INSERT [dbo].[consulta] ON 

INSERT [dbo].[consulta] ([idConsulta], [fechaConsulta], [horaConsulta], [peso], [temperatura], [tensionalterial], [consultaPor], [pulso], [tipoConsulta], [Medicamentos], [Examenes], [sintomasConsulta], [fkcita], [fkExpediente]) VALUES (1, CAST(0xA4380B00 AS Date), CAST(0x070040230E430000 AS Time), N'200', N'37', NULL, NULL, N'1.70', N'general', NULL, NULL, N'dolor', 1, 1)
INSERT [dbo].[consulta] ([idConsulta], [fechaConsulta], [horaConsulta], [peso], [temperatura], [tensionalterial], [consultaPor], [pulso], [tipoConsulta], [Medicamentos], [Examenes], [sintomasConsulta], [fkcita], [fkExpediente]) VALUES (4, CAST(0xA4380B00 AS Date), CAST(0x0700A8E76F4B0000 AS Time), N'170', N'37', NULL, NULL, N'1.60', N'especialida', NULL, NULL, N'piel', 21, 3)
INSERT [dbo].[consulta] ([idConsulta], [fechaConsulta], [horaConsulta], [peso], [temperatura], [tensionalterial], [consultaPor], [pulso], [tipoConsulta], [Medicamentos], [Examenes], [sintomasConsulta], [fkcita], [fkExpediente]) VALUES (7, CAST(0xA4380B00 AS Date), CAST(0x07007870335C0000 AS Time), N'210', N'36', NULL, NULL, N'1.80', N'general', NULL, NULL, N'sobreperso', 23, 4)
INSERT [dbo].[consulta] ([idConsulta], [fechaConsulta], [horaConsulta], [peso], [temperatura], [tensionalterial], [consultaPor], [pulso], [tipoConsulta], [Medicamentos], [Examenes], [sintomasConsulta], [fkcita], [fkExpediente]) VALUES (9, CAST(0xA4380B00 AS Date), CAST(0x0700B0BD58750000 AS Time), N'130', N'37', NULL, NULL, N'1.65', N'especiliada', NULL, NULL, N'mareo', 25, 5)
INSERT [dbo].[consulta] ([idConsulta], [fechaConsulta], [horaConsulta], [peso], [temperatura], [tensionalterial], [consultaPor], [pulso], [tipoConsulta], [Medicamentos], [Examenes], [sintomasConsulta], [fkcita], [fkExpediente]) VALUES (10, CAST(0xA4380B00 AS Date), CAST(0x070074053F470000 AS Time), N'140', N'37', NULL, NULL, N'1.55', N'general', NULL, NULL, N'palido', 26, 6)
SET IDENTITY_INSERT [dbo].[consulta] OFF
SET IDENTITY_INSERT [dbo].[correo] ON 

INSERT [dbo].[correo] ([idCorreo], [Correo], [tipo], [fkPersona]) VALUES (1, N'jaga_jangel', NULL, 1)
INSERT [dbo].[correo] ([idCorreo], [Correo], [tipo], [fkPersona]) VALUES (2, N'algo', NULL, 1)
INSERT [dbo].[correo] ([idCorreo], [Correo], [tipo], [fkPersona]) VALUES (6, N'juanperez@hotmail.com', N'oficina', 20)
INSERT [dbo].[correo] ([idCorreo], [Correo], [tipo], [fkPersona]) VALUES (7, N'angel', N'angel', 21)
SET IDENTITY_INSERT [dbo].[correo] OFF
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (1, N'san salvador')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (2, N'san vicente')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (3, N'Ahuachapán')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (4, N'Santa Ana')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (5, N'Sonsonate')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (6, N'Usulután')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (7, N'San Miguel')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (8, N'Morazán')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (9, N'La Unión')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (10, N'La Libertad')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (11, N'Chalatenango')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (12, N'Cuscatlán')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (13, N'cabañas')
INSERT [dbo].[Departamento] ([idDep], [nombreDepa]) VALUES (14, N'La Paz')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
SET IDENTITY_INSERT [dbo].[detalle_medicina] ON 

INSERT [dbo].[detalle_medicina] ([idDetMedTrata], [fkTratamiento], [fkSalidaPro]) VALUES (4, 4, 1)
INSERT [dbo].[detalle_medicina] ([idDetMedTrata], [fkTratamiento], [fkSalidaPro]) VALUES (5, 9, NULL)
INSERT [dbo].[detalle_medicina] ([idDetMedTrata], [fkTratamiento], [fkSalidaPro]) VALUES (6, 7, NULL)
INSERT [dbo].[detalle_medicina] ([idDetMedTrata], [fkTratamiento], [fkSalidaPro]) VALUES (7, 10, NULL)
SET IDENTITY_INSERT [dbo].[detalle_medicina] OFF
SET IDENTITY_INSERT [dbo].[Direccion] ON 

INSERT [dbo].[Direccion] ([idDireccion], [calleDireccion], [casaDireccion], [fkMunicipio], [fkpersona]) VALUES (1, N'planes', N'gavidia', 1, 16)
INSERT [dbo].[Direccion] ([idDireccion], [calleDireccion], [casaDireccion], [fkMunicipio], [fkpersona]) VALUES (5, N'dolores', N'12Vnida', 1, 20)
INSERT [dbo].[Direccion] ([idDireccion], [calleDireccion], [casaDireccion], [fkMunicipio], [fkpersona]) VALUES (6, N'angel', N'angel', 1, 21)
SET IDENTITY_INSERT [dbo].[Direccion] OFF
SET IDENTITY_INSERT [dbo].[documento] ON 

INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (1, N'123213', N'dui', 1)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (2, N'566123', N'pasaporte', 1)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (3, N'vamos', N'vamos', 14)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (4, N'vamos', N'vamos', 15)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (5, N'111111', N'dui', 16)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (9, N'1234567', N'dui', 20)
INSERT [dbo].[documento] ([idDocu], [numero], [tipo], [fkpersona]) VALUES (10, N'angel', N'angel', 21)
SET IDENTITY_INSERT [dbo].[documento] OFF
SET IDENTITY_INSERT [dbo].[empleado] ON 

INSERT [dbo].[empleado] ([idEmpleado], [fkTipoemple], [fkCargo], [fkpersona]) VALUES (2, 5, 1, 2)
INSERT [dbo].[empleado] ([idEmpleado], [fkTipoemple], [fkCargo], [fkpersona]) VALUES (3, 6, 2, 4)
INSERT [dbo].[empleado] ([idEmpleado], [fkTipoemple], [fkCargo], [fkpersona]) VALUES (7, 5, 1, 20)
SET IDENTITY_INSERT [dbo].[empleado] OFF
SET IDENTITY_INSERT [dbo].[entrada] ON 

INSERT [dbo].[entrada] ([idEntr], [cantidadEntrada], [presentacionEntrada], [precioEntrada], [fkEmpleado], [fkmedicamento], [fechaCaducidad], [fechain]) VALUES (2, 20, N'botes ', CAST(2 AS Decimal(18, 0)), 2, 9, CAST(0x6D390B00 AS Date), CAST(0xA6380B00 AS Date))
SET IDENTITY_INSERT [dbo].[entrada] OFF
SET IDENTITY_INSERT [dbo].[expediente] ON 

INSERT [dbo].[expediente] ([idExpedi], [fkDetMedTrata], [fkEmpleado], [fkpaciente]) VALUES (1, 4, 2, 1)
INSERT [dbo].[expediente] ([idExpedi], [fkDetMedTrata], [fkEmpleado], [fkpaciente]) VALUES (3, 7, 3, 10)
INSERT [dbo].[expediente] ([idExpedi], [fkDetMedTrata], [fkEmpleado], [fkpaciente]) VALUES (4, 5, 2, 11)
INSERT [dbo].[expediente] ([idExpedi], [fkDetMedTrata], [fkEmpleado], [fkpaciente]) VALUES (5, 6, 3, 12)
INSERT [dbo].[expediente] ([idExpedi], [fkDetMedTrata], [fkEmpleado], [fkpaciente]) VALUES (6, 7, 2, 13)
SET IDENTITY_INSERT [dbo].[expediente] OFF
SET IDENTITY_INSERT [dbo].[grupo] ON 

INSERT [dbo].[grupo] ([idGrupo], [nombreGrupo]) VALUES (1, N'medi')
INSERT [dbo].[grupo] ([idGrupo], [nombreGrupo]) VALUES (2, N'jara')
INSERT [dbo].[grupo] ([idGrupo], [nombreGrupo]) VALUES (3, N'sudor')
SET IDENTITY_INSERT [dbo].[grupo] OFF
SET IDENTITY_INSERT [dbo].[horario] ON 

INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (1, CAST(0x0100650400000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (3, CAST(0x0150AB0400000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (4, CAST(0x01F0370500000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (6, CAST(0x01407E0500000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (7, CAST(0x01407E0500000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (9, CAST(0x0100650400000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (10, CAST(0x0150AB0400000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (11, CAST(0x01A0F10400000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (12, CAST(0x01F0370500000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (13, CAST(0x01E00A0600000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (14, CAST(0x0120240700000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (15, CAST(0x01706A0700000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (17, CAST(0x01C0B00700000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (18, CAST(0x0110F70700000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (19, CAST(0x01603D0800000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (20, CAST(0x01B0830800000000 AS Time), NULL, 2)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (21, CAST(0x01407E0500000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (22, CAST(0x0190C40500000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (23, CAST(0x01E00A0600000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (24, CAST(0x0130510600000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (25, CAST(0x01A08C0000000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (26, CAST(0x01F0D20000000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (27, CAST(0x0140190100000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (28, CAST(0x01905F0100000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (29, CAST(0x01E0A50100000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (30, CAST(0x0130EC0100000000 AS Time), NULL, 3)
INSERT [dbo].[horario] ([idhorario], [horaini], [estado], [fkempleado]) VALUES (31, CAST(0x01E06F0A00000000 AS Time), NULL, 2)
SET IDENTITY_INSERT [dbo].[horario] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (1, N'Angel@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (2, N'marlonl@ejemplo.com', N'123', 2)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (3, N'oscarl@ejemplo.com', N'123', 3)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (4, N'lilil@ejemplo.com', N'lili', 3)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (5, N'vanessalilil@ejemplo.com', N'vane', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (6, N'ingrid@ejemplo.com', N'1234', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (7, N'anderson@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (8, N'manuel@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (10, N'marleny@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (12, N'olano@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (13, N'KOKI@ejemplo.com', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (14, N'VICTOR', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (15, N'najarro', N'123', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (16, N'angel', N'angel', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (17, N'vamos', N'vamos', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (18, N'vamos', N'vamos', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (19, N'jaga', N'angel', 1)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (23, N'juanperez@hotmail.com', N'juan', 2)
INSERT [dbo].[login] ([idLogin], [usuLogin], [passLogin], [fkRol]) VALUES (24, N'angel', N'anngel', 1)
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[medicamento] ON 

INSERT [dbo].[medicamento] ([idMedica], [nombreMedica], [viaAdmonMedica], [presentaMedica], [existenciaMedica], [EstadoMedica], [fkSubGrupo]) VALUES (9, N'dolofin', N'oral', N'pastillas', NULL, N'activo', 1)
SET IDENTITY_INSERT [dbo].[medicamento] OFF
SET IDENTITY_INSERT [dbo].[municipio] ON 

INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (1, N'Aguilares', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (2, N'Apopa', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (3, N'Ayutuxtepeque', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (4, N'Delgado', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (5, N'Cuscatancingo', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (6, N'El Paisnal', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (7, N'Guazapa', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (8, N'Ilopango', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (9, N'Mejicanos', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (10, N'Nejapa', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (11, N'Panchimalco', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (12, N'Rosario de Mora', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (13, N'San Marcos', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (14, N'San Martín', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (15, N'San Salvador', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (16, N'Santiago Texacuangos', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (17, N'Santo Tomás', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (18, N'Soyapango', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (19, N'Tonacatepeque', 1)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (20, N'Apastepeque', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (21, N'Guadalupe', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (22, N'San Cayetano Istepeque', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (23, N'San Esteban Catarina', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (24, N'San Ildefonso', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (25, N'San Lorenzo', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (26, N'San Sebastián', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (27, N'San Vicente', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (28, N'Santa Clara', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (29, N'Santo Domingo', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (30, N'Tecoluca', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (31, N'Tepetitán', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (32, N'Verapaz', 2)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (33, N'Ahuachapán', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (34, N'Apaneca', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (35, N'Atiquizaya', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (36, N'Concepción de Ataco', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (37, N'El Refugio', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (38, N'Guaymango', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (39, N'Jujutla', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (40, N'San Francisco Menéndez', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (41, N'San Lorenzo', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (42, N'San Pedro Puxtla', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (43, N'Tacuba', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (44, N'Turín', 3)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (45, N'Candelaria de la Frontera', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (46, N'Chalchuapa', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (47, N'Coatepeque', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (48, N'El Congo', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (49, N'El Porvenir', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (50, N'Masahuat', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (51, N'Metapán', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (52, N'San Antonio Pajonal', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (53, N'San Sebastián Salitrillo', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (54, N'Santa Ana', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (55, N'Santa Rosa Guachipilín', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (56, N'Santiago de la Frontera', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (57, N'Texistepeque', 4)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (58, N'Acajutla', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (59, N'Armenia', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (60, N'Caluco', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (61, N'Cuisnahuat', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (62, N'Izalco', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (63, N'Juayúa', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (64, N'Nahuizalco', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (65, N'Nahulingo', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (66, N'Salcoatitán', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (67, N'San Antonio del Monte', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (68, N'San Julián', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (69, N'Santa Catarina Masahuat', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (70, N'Santa Isabel Ishuatán', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (71, N'Santo Domingo de Guzmán', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (72, N'Sonsonate', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (73, N'Sonzacate', 5)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (74, N'Alegría', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (75, N'Berlín', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (76, N'California', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (77, N'Concepción Batres', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (78, N'El Triunfo', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (79, N'Ereguayquín', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (80, N'Estanzuelas', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (81, N'Jiquilisco', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (82, N'Jucuapa', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (83, N'Jucuarán', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (84, N'Mercedes Umaña', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (85, N'Nueva Granada', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (86, N'Ozatlán', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (87, N'Puerto El Triunfo', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (88, N'San Agustín', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (89, N'San Buenaventura', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (90, N'San Dionisio', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (91, N'San Francisco Javier', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (92, N'Santa Elena', 6)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (93, N'Carolina', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (94, N'Chapeltique', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (95, N'Chinameca', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (96, N'Chirilagua', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (97, N'Ciudad Barrios', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (98, N'Comacarán', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (99, N'El Tránsito', 7)
GO
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (100, N'Lolotique', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (101, N'Moncagua', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (102, N'Nueva Guadalupe', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (103, N'Nuevo Edén de San Juan', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (104, N'Quelepa', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (105, N'San Antonio del Mosco', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (106, N'San Gerardo', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (107, N'San Jorge', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (108, N'San Luis de la Reina', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (109, N'San Miguel', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (110, N'San Rafael Oriente', 7)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (111, N'Arambala', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (112, N'Cacaopera', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (113, N'Chilanga', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (114, N'Corinto', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (115, N'Delicias de Concepción', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (116, N'El Divisadero', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (117, N'El Rosario', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (118, N'Gualococti', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (119, N'Guatajiagua', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (120, N'Joateca', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (121, N'Jocoaitique', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (122, N'Jocoro', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (123, N'Lolotiquillo', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (124, N'Meanguera', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (125, N'Osicala', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (126, N'Perquín', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (127, N'San Carlos', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (128, N'San Fernando', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (129, N'San Francisco Gotera', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (130, N'San Isidro', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (131, N'San Simón', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (132, N'Sensembra', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (133, N'Sociedad', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (134, N'Torola', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (135, N'Yamabal', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (136, N'Yoloaiquín', 8)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (137, N'Anamorós', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (138, N'Bolívar', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (139, N'Concepción de Oriente', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (140, N'Conchagua', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (141, N'El Carmen', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (142, N'El Sauce', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (143, N'Intipucá', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (144, N'La Unión', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (145, N'Lilisque', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (146, N'Meanguera del Golfo', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (147, N'Nueva Esparta', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (148, N'Pasaquina', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (149, N'Polorós', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (150, N'San Alejo', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (151, N'San José', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (152, N'Santa Rosa de Lima', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (153, N'Yayantique', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (154, N'Yucuaiquín', 9)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (155, N'Antiguo Cuscatlán', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (156, N'Chiltiupán', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (157, N'Ciudad Arce', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (158, N'Colón', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (159, N'Comasagua', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (160, N'Huizúcar', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (161, N'Jayaque', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (162, N'Jicalapa', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (163, N'La Libertad', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (164, N'Santa Tecla', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (165, N'Antes: Nueva San Salvador', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (166, N'Nuevo Cuscatlán', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (167, N'San Juan Opico', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (168, N'Quezaltepeque', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (169, N'Sacacoyo', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (170, N'San José Villanueva', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (171, N'San Matías', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (172, N'San Pablo Tacachico', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (173, N'Talnique', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (174, N'Tamanique', 10)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (175, N'Agua Caliente', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (176, N'Arcatao', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (177, N'Azacualpa', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (178, N'Chalatenango', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (179, N'Citalá', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (180, N'Comalapa', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (181, N'Concepción Quezaltepeque', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (182, N'Dulce Nombre de María', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (183, N'El Carrizal', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (184, N'El Paraíso', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (185, N'La Laguna', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (186, N'La Palma', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (187, N'La Reina', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (188, N'Las Vueltas', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (189, N'Nombre de Jesús', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (190, N'Nueva Concepción', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (191, N'Nueva Trinidad', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (192, N'Ojos de Agua', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (193, N'Potonico', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (194, N'San Antonio de la Cruz', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (195, N'San Antonio Los Ranchos', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (196, N'San Fernando', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (197, N'San Francisco Lempa', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (198, N'San Francisco Morazán', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (199, N'San Ignacio', 11)
GO
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (200, N'San Isidro Labrador', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (201, N'San José Cancasque / Cancasque', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (202, N'San José Las Flores / Las Flores', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (203, N'San Luis del Carmen', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (204, N'San Miguel de Mercedes', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (205, N'San Rafael', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (206, N'Santa Rita', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (207, N'Tejutla', 11)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (208, N'Candelaria', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (209, N'Cojutepeque', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (210, N'El Carmen', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (211, N'El Rosario', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (212, N'Monte San Juan', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (213, N'Oratorio de Concepción', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (214, N'San Bartolomé Perulapía', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (215, N'San Cristóbal', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (216, N'San José Guayabal', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (217, N'San Pedro Perulapán', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (218, N'San Rafael Cedros', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (219, N'San Ramón', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (220, N'Santa Cruz Analquito', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (221, N'Santa Cruz Michapa', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (222, N'Suchitoto', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (223, N'Tenancingo', 12)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (224, N'Cinquera', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (225, N'Dolores / Villa Dolores', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (226, N'Guacotecti', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (227, N'Ilobasco', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (228, N'Jutiapa', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (229, N'San Isidro', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (230, N'Sensuntepeque', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (231, N'Tejutepeque', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (232, N'Victoria', 13)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (233, N'Olocuilta', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (234, N'El Rosario / Rosario de La Paz', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (235, N'Jerusalén', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (236, N'Mercedes La Ceiba', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (237, N'Olocuilta', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (238, N'Paraíso de Osorio', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (239, N'San Antonio Masahuat', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (240, N'San Emigdio', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (241, N'San Francisco Chinameca', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (242, N'San Juan Nonualco', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (243, N'San Juan Talpa', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (244, N'San Juan Tepezontes', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (245, N'San Luis La Herradura', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (246, N'San Luis Talpa', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (247, N'San Miguel Tepezontes', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (248, N'San Pedro Masahuat', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (249, N'San Pedro Nonualco', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (250, N'San Rafael Obrajuelo', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (251, N'Santa María Ostuma', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (252, N'Santiago Nonualco', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (253, N'Tapalhuaca', 14)
INSERT [dbo].[municipio] ([idmuni], [nombreMui], [fkDepa]) VALUES (254, N'Zacatecoluca', 14)
SET IDENTITY_INSERT [dbo].[municipio] OFF
SET IDENTITY_INSERT [dbo].[paciente] ON 

INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (1, 1)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (10, 5)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (11, 6)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (12, 7)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (13, 8)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (14, 9)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (15, 10)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (17, 11)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (18, 12)
INSERT [dbo].[paciente] ([idPaciente], [fkpersona]) VALUES (19, 21)
SET IDENTITY_INSERT [dbo].[paciente] OFF
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (1, N'jose', N'angel', N'gomez', N'alvardo', CAST(0x42180B00 AS Date), NULL, NULL, 1, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (2, N'marlon', N'alonso', N'navarrete', N'cruz', CAST(0x2B170B00 AS Date), NULL, NULL, 2, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (3, N'marlon', N'alonso', N'navarrete', N'cruz', CAST(0x2B170B00 AS Date), NULL, NULL, 4, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (4, N'lili', N'ana', N'gomez', N'garay', CAST(0x1E180B00 AS Date), NULL, NULL, 4, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (5, N'marilyn', N'vaness', N'alvarez', N'guzman', CAST(0xAE200B00 AS Date), NULL, NULL, 5, 1)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (6, N'INGRID ', N'ESTEPHANY ', N'FUENTES ', N'HERNANDEZ', CAST(0xAE240B00 AS Date), NULL, NULL, 6, 1)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (7, N'anderson', NULL, N'alvarado', N'guzman', CAST(0x15080B00 AS Date), NULL, NULL, 7, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (8, N'manuel ', N'jose ', N'linarez ', N'mejia', CAST(0x7D160B00 AS Date), NULL, NULL, 8, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (9, N'marleny', NULL, N'lopez', NULL, CAST(0x0A150B00 AS Date), NULL, NULL, 10, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (10, N'victor', NULL, N'olano', NULL, CAST(0xCA170B00 AS Date), NULL, NULL, 14, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (11, N'koki', N'magiber', N'fuentes', N'aldana', CAST(0xA91A0B00 AS Date), NULL, NULL, 13, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (12, N'SAMUEL', NULL, N'NAJARRO', NULL, CAST(0x62200B00 AS Date), NULL, NULL, 15, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (13, N'angel', N'angel', N'angel', N'angel', CAST(0x35380B00 AS Date), N'm', NULL, 16, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (14, N'vamos', N'vamos', N'vamos', N'vamso', CAST(0xA3380B00 AS Date), N'm', NULL, 17, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (15, N'vamos', N'vamos', N'vamos', N'vamso', CAST(0xA3380B00 AS Date), N'm', NULL, 18, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (16, N'angel', N'jose', N'alvarado', N'gomez', CAST(0x35380B00 AS Date), N'm', NULL, 19, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (20, N'juan', N'perez', N'guzman', N'guzman', CAST(0xA1150B00 AS Date), N'm', NULL, 23, NULL)
INSERT [dbo].[persona] ([idPersona], [pnombrePer], [snombrePer], [pApellPer], [sApellPer], [fechaNacPer], [sexo], [iglesia], [fkLogin], [fkresponsable]) VALUES (21, N'Angel', N'saber', N'angel', N'angel', CAST(0x64170B00 AS Date), N'm', NULL, 24, 1)
SET IDENTITY_INSERT [dbo].[persona] OFF
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([idRol], [nombreRol], [descripcionRol]) VALUES (1, N'paciente', NULL)
INSERT [dbo].[rol] ([idRol], [nombreRol], [descripcionRol]) VALUES (2, N'medico', NULL)
INSERT [dbo].[rol] ([idRol], [nombreRol], [descripcionRol]) VALUES (3, N'secretaria', NULL)
SET IDENTITY_INSERT [dbo].[rol] OFF
SET IDENTITY_INSERT [dbo].[salida] ON 

INSERT [dbo].[salida] ([idsalida], [fechaSalida], [fkMedicamento], [fktiposalida]) VALUES (1, CAST(0xA4380B00 AS Date), 9, NULL)
SET IDENTITY_INSERT [dbo].[salida] OFF
SET IDENTITY_INSERT [dbo].[subgrupo] ON 

INSERT [dbo].[subgrupo] ([idSubGrupo], [nombreSubGrupo], [fkGrupo]) VALUES (1, N'saber', 1)
SET IDENTITY_INSERT [dbo].[subgrupo] OFF
SET IDENTITY_INSERT [dbo].[telefono] ON 

INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (1, N'22806019', N'residencial', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (2, N'22806019', N'residencial', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (3, N'22806019', N'residencial', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (4, N'566123', N'celular', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (5, N'566123', N'celular', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (6, N'566123', N'celular', 1)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (7, N'22806019', N'casa', 7)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (8, N'22806019', N'casa', 16)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (12, N'22806019', N'casa', 20)
INSERT [dbo].[telefono] ([idtelefono], [numero], [tipo], [idPerson]) VALUES (13, N'angel', N'angel', 21)
SET IDENTITY_INSERT [dbo].[telefono] OFF
SET IDENTITY_INSERT [dbo].[tipo_empleado] ON 

INSERT [dbo].[tipo_empleado] ([idTipoEmpleado], [nombreTipoEmp], [descripcionTipoEmp]) VALUES (5, N' general', N'medicamentos')
INSERT [dbo].[tipo_empleado] ([idTipoEmpleado], [nombreTipoEmp], [descripcionTipoEmp]) VALUES (6, N'especialidad', N'medicina')
INSERT [dbo].[tipo_empleado] ([idTipoEmpleado], [nombreTipoEmp], [descripcionTipoEmp]) VALUES (7, N'odontologo', N'dental')
INSERT [dbo].[tipo_empleado] ([idTipoEmpleado], [nombreTipoEmp], [descripcionTipoEmp]) VALUES (8, N'secretaria', N'oficina')
INSERT [dbo].[tipo_empleado] ([idTipoEmpleado], [nombreTipoEmp], [descripcionTipoEmp]) VALUES (9, N'laboratorio', N'examenes')
SET IDENTITY_INSERT [dbo].[tipo_empleado] OFF
SET IDENTITY_INSERT [dbo].[tipo_pago] ON 

INSERT [dbo].[tipo_pago] ([idTipopago], [descripcionTipoPago]) VALUES (2, N'credito')
INSERT [dbo].[tipo_pago] ([idTipopago], [descripcionTipoPago]) VALUES (1, N'efectivo')
INSERT [dbo].[tipo_pago] ([idTipopago], [descripcionTipoPago]) VALUES (3, N'gratis')
SET IDENTITY_INSERT [dbo].[tipo_pago] OFF
SET IDENTITY_INSERT [dbo].[tipo_tratamiento] ON 

INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (1, N'Analgésico', N'contra el dolor')
INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (2, N'Anestésico', N'para adormecer a los pacientes en cirugía')
INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (3, N'Ansiolítico', N'contra la ansiedad')
INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (4, N'Cirugía general', NULL)
INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (5, N'Cirugía ortopédica y traumatología', NULL)
INSERT [dbo].[tipo_tratamiento] ([idTipoTratamient], [nombreTipoTrata], [descripcionTipoTrata]) VALUES (6, N'Cirugía oral y maxilofacial', NULL)
SET IDENTITY_INSERT [dbo].[tipo_tratamiento] OFF
SET IDENTITY_INSERT [dbo].[tratamiento] ON 

INSERT [dbo].[tratamiento] ([idTratamiento], [fechainiTrata], [fechasoliTrata], [observaTrata], [fechafinalTrata], [fkConsulta], [fkTipoTrata]) VALUES (4, CAST(0xA4380B00 AS Date), CAST(0xA4380B00 AS Date), N'ghj', CAST(0x0000A34C00000000 AS DateTime), 1, 1)
INSERT [dbo].[tratamiento] ([idTratamiento], [fechainiTrata], [fechasoliTrata], [observaTrata], [fechafinalTrata], [fkConsulta], [fkTipoTrata]) VALUES (7, CAST(0xA4380B00 AS Date), CAST(0xA4380B00 AS Date), N'es feo', CAST(0x0000A62400000000 AS DateTime), 4, 2)
INSERT [dbo].[tratamiento] ([idTratamiento], [fechainiTrata], [fechasoliTrata], [observaTrata], [fechafinalTrata], [fkConsulta], [fkTipoTrata]) VALUES (9, CAST(0xA5380B00 AS Date), CAST(0xA5380B00 AS Date), N'deformaciones ', CAST(0x0000A34B00000000 AS DateTime), 7, 3)
INSERT [dbo].[tratamiento] ([idTratamiento], [fechainiTrata], [fechasoliTrata], [observaTrata], [fechafinalTrata], [fkConsulta], [fkTipoTrata]) VALUES (10, CAST(0xA7380B00 AS Date), CAST(0xA7380B00 AS Date), N'dolor de cartilago', CAST(0x0000A34E00000000 AS DateTime), 9, 4)
SET IDENTITY_INSERT [dbo].[tratamiento] OFF
/****** Object:  Index [IX_consulta]    Script Date: 24/06/2014 13:37:37 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[consulta]') AND name = N'IX_consulta')
CREATE UNIQUE NONCLUSTERED INDEX [IX_consulta] ON [dbo].[consulta]
(
	[fkcita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__empleado__52AEF05D2EA1F731]    Script Date: 24/06/2014 13:37:37 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND name = N'UQ__empleado__52AEF05D2EA1F731')
ALTER TABLE [dbo].[empleado] ADD  CONSTRAINT [UQ__empleado__52AEF05D2EA1F731] UNIQUE NONCLUSTERED 
(
	[fkpersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_expediente]    Script Date: 24/06/2014 13:37:37 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[expediente]') AND name = N'IX_expediente')
CREATE UNIQUE NONCLUSTERED INDEX [IX_expediente] ON [dbo].[expediente]
(
	[fkpaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__paciente__52AEF05DF64BFA80]    Script Date: 24/06/2014 13:37:37 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND name = N'UQ__paciente__52AEF05DF64BFA80')
ALTER TABLE [dbo].[paciente] ADD UNIQUE NONCLUSTERED 
(
	[fkpersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tipo_pag__9CD5AC535842E045]    Script Date: 24/06/2014 13:37:37 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tipo_pago]') AND name = N'UQ__tipo_pag__9CD5AC535842E045')
ALTER TABLE [dbo].[tipo_pago] ADD UNIQUE NONCLUSTERED 
(
	[descripcionTipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_cita_estadoCita]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cita] ADD  CONSTRAINT [DF_cita_estadoCita]  DEFAULT ('espera') FOR [estadoCita]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_horario_estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[horario] ADD  CONSTRAINT [DF_horario_estado]  DEFAULT ('s') FOR [estado]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita]  WITH CHECK ADD  CONSTRAINT [FK_cita_horario] FOREIGN KEY([fkhorario])
REFERENCES [dbo].[horario] ([idhorario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita] CHECK CONSTRAINT [FK_cita_horario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita]  WITH CHECK ADD  CONSTRAINT [FK_cita_paciente] FOREIGN KEY([fkPaciente])
REFERENCES [dbo].[paciente] ([idPaciente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_cita_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[cita]'))
ALTER TABLE [dbo].[cita] CHECK CONSTRAINT [FK_cita_paciente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_cita]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta]  WITH CHECK ADD  CONSTRAINT [FK_consulta_cita] FOREIGN KEY([fkcita])
REFERENCES [dbo].[cita] ([idCita])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_cita]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] CHECK CONSTRAINT [FK_consulta_cita]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_expediente]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta]  WITH CHECK ADD  CONSTRAINT [FK_consulta_expediente] FOREIGN KEY([fkExpediente])
REFERENCES [dbo].[expediente] ([idExpedi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_consulta_expediente]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] CHECK CONSTRAINT [FK_consulta_expediente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_correo_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[correo]'))
ALTER TABLE [dbo].[correo]  WITH CHECK ADD  CONSTRAINT [FK_correo_persona] FOREIGN KEY([fkPersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_correo_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[correo]'))
ALTER TABLE [dbo].[correo] CHECK CONSTRAINT [FK_correo_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_e__fkent__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_entrada]'))
ALTER TABLE [dbo].[detalle_entrada]  WITH CHECK ADD FOREIGN KEY([fkentrada])
REFERENCES [dbo].[entrada] ([idEntr])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_e__fkmed__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_entrada]'))
ALTER TABLE [dbo].[detalle_entrada]  WITH CHECK ADD FOREIGN KEY([fkmedicina])
REFERENCES [dbo].[medicamento] ([idMedica])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_f__fkfac__60A75C0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_factura]'))
ALTER TABLE [dbo].[detalle_factura]  WITH CHECK ADD FOREIGN KEY([fkfactura])
REFERENCES [dbo].[factura] ([idFactura])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_f__fkmed__619B8048]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_factura]'))
ALTER TABLE [dbo].[detalle_factura]  WITH CHECK ADD FOREIGN KEY([fkmedicina])
REFERENCES [dbo].[medicamento] ([idMedica])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkDetalleTratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_medicina]'))
ALTER TABLE [dbo].[detalle_medicina]  WITH CHECK ADD  CONSTRAINT [fkDetalleTratamiento] FOREIGN KEY([fkTratamiento])
REFERENCES [dbo].[tratamiento] ([idTratamiento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkDetalleTratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_medicina]'))
ALTER TABLE [dbo].[detalle_medicina] CHECK CONSTRAINT [fkDetalleTratamiento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_s__fkmed__6383C8BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_salida]'))
ALTER TABLE [dbo].[detalle_salida]  WITH CHECK ADD FOREIGN KEY([fkmedicina])
REFERENCES [dbo].[medicamento] ([idMedica])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__detalle_s__fksal__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_salida]'))
ALTER TABLE [dbo].[detalle_salida]  WITH CHECK ADD FOREIGN KEY([fksalida])
REFERENCES [dbo].[salida] ([idsalida])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_municipio] FOREIGN KEY([fkMunicipio])
REFERENCES [dbo].[municipio] ([idmuni])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_municipio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_persona] FOREIGN KEY([fkpersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_documento_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[documento]'))
ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK_documento_persona] FOREIGN KEY([fkpersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_documento_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[documento]'))
ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK_documento_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_cargo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cargo1] FOREIGN KEY([fkCargo])
REFERENCES [dbo].[cargo] ([idCargo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_cargo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_cargo1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_persona] FOREIGN KEY([fkpersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_tipo_empleado1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_tipo_empleado1] FOREIGN KEY([fkTipoemple])
REFERENCES [dbo].[tipo_empleado] ([idTipoEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_tipo_empleado1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_tipo_empleado1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entrada_medicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada]  WITH NOCHECK ADD  CONSTRAINT [FK_entrada_medicamento] FOREIGN KEY([fkmedicamento])
REFERENCES [dbo].[medicamento] ([idMedica])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entrada_medicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada] CHECK CONSTRAINT [FK_entrada_medicamento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkEmpleadoEntrada]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada]  WITH CHECK ADD  CONSTRAINT [fkEmpleadoEntrada] FOREIGN KEY([fkEmpleado])
REFERENCES [dbo].[empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkEmpleadoEntrada]') AND parent_object_id = OBJECT_ID(N'[dbo].[entrada]'))
ALTER TABLE [dbo].[entrada] CHECK CONSTRAINT [fkEmpleadoEntrada]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_resultado]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_resultado] FOREIGN KEY([fkResultado])
REFERENCES [dbo].[resultado] ([idResultado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_resultado]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_resultado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_tipo_examen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_tipo_examen1] FOREIGN KEY([fkTipoexamen])
REFERENCES [dbo].[tipo_examen] ([idTipoExamen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_tipo_examen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_tipo_examen1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExamenConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [fkExamenConsulta] FOREIGN KEY([fkConsulta])
REFERENCES [dbo].[consulta] ([idConsulta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExamenConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [fkExamenConsulta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_expediente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FK_expediente_paciente] FOREIGN KEY([fkpaciente])
REFERENCES [dbo].[paciente] ([idPaciente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_expediente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FK_expediente_paciente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteDetaMed]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [fkExpedienteDetaMed] FOREIGN KEY([fkDetMedTrata])
REFERENCES [dbo].[detalle_medicina] ([idDetMedTrata])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteDetaMed]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [fkExpedienteDetaMed]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteEmpleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [fkExpedienteEmpleado] FOREIGN KEY([fkEmpleado])
REFERENCES [dbo].[empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkExpedienteEmpleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[expediente]'))
ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [fkExpedienteEmpleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__factura__fkconsu__5F7E2DAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK__factura__fkconsu__5F7E2DAC] FOREIGN KEY([fkconsulta])
REFERENCES [dbo].[consulta] ([idConsulta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__factura__fkconsu__5F7E2DAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK__factura__fkconsu__5F7E2DAC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_paciente] FOREIGN KEY([fkPaciente])
REFERENCES [dbo].[paciente] ([idPaciente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_paciente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_pago] FOREIGN KEY([fkPago])
REFERENCES [dbo].[pago] ([idPago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_pago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_horario_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[horario]'))
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_empleado] FOREIGN KEY([fkempleado])
REFERENCES [dbo].[empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_horario_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[horario]'))
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_junta_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[junta]'))
ALTER TABLE [dbo].[junta]  WITH CHECK ADD  CONSTRAINT [FK_junta_empleado] FOREIGN KEY([fkMedico])
REFERENCES [dbo].[empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_junta_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[junta]'))
ALTER TABLE [dbo].[junta] CHECK CONSTRAINT [FK_junta_empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_login_rol]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FK_login_rol] FOREIGN KEY([fkRol])
REFERENCES [dbo].[rol] ([idRol])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_login_rol]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FK_login_rol]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkMediSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento]  WITH CHECK ADD  CONSTRAINT [fkMediSub] FOREIGN KEY([fkSubGrupo])
REFERENCES [dbo].[subgrupo] ([idSubGrupo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkMediSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento] CHECK CONSTRAINT [fkMediSub]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_municipio_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD  CONSTRAINT [FK_municipio_Departamento] FOREIGN KEY([fkDepa])
REFERENCES [dbo].[Departamento] ([idDep])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_municipio_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio] CHECK CONSTRAINT [FK_municipio_Departamento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paciente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[paciente]'))
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [FK_paciente_paciente] FOREIGN KEY([fkpersona])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paciente_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[paciente]'))
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [FK_paciente_paciente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pago_tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[pago]'))
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_tipo_pago] FOREIGN KEY([fkTipopago])
REFERENCES [dbo].[tipo_pago] ([idTipopago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pago_tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[pago]'))
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_tipo_pago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_persona] FOREIGN KEY([fkresponsable])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKpersonaLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FKpersonaLogin] FOREIGN KEY([fkLogin])
REFERENCES [dbo].[login] ([idLogin])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKpersonaLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FKpersonaLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__salida__fktiposa__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[salida]'))
ALTER TABLE [dbo].[salida]  WITH CHECK ADD FOREIGN KEY([fktiposalida])
REFERENCES [dbo].[tipo_salida] ([id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkSalidaMedicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[salida]'))
ALTER TABLE [dbo].[salida]  WITH CHECK ADD  CONSTRAINT [fkSalidaMedicamento] FOREIGN KEY([fkMedicamento])
REFERENCES [dbo].[medicamento] ([idMedica])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkSalidaMedicamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[salida]'))
ALTER TABLE [dbo].[salida] CHECK CONSTRAINT [fkSalidaMedicamento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkGrupoSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[subgrupo]'))
ALTER TABLE [dbo].[subgrupo]  WITH CHECK ADD  CONSTRAINT [fkGrupoSub] FOREIGN KEY([fkGrupo])
REFERENCES [dbo].[grupo] ([idGrupo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkGrupoSub]') AND parent_object_id = OBJECT_ID(N'[dbo].[subgrupo]'))
ALTER TABLE [dbo].[subgrupo] CHECK CONSTRAINT [fkGrupoSub]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_telefono_telefono]') AND parent_object_id = OBJECT_ID(N'[dbo].[telefono]'))
ALTER TABLE [dbo].[telefono]  WITH CHECK ADD  CONSTRAINT [FK_telefono_telefono] FOREIGN KEY([idPerson])
REFERENCES [dbo].[persona] ([idPersona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_telefono_telefono]') AND parent_object_id = OBJECT_ID(N'[dbo].[telefono]'))
ALTER TABLE [dbo].[telefono] CHECK CONSTRAINT [FK_telefono_telefono]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tratamiento_tipo_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_tratamiento_tipo_tratamiento] FOREIGN KEY([fkTipoTrata])
REFERENCES [dbo].[tipo_tratamiento] ([idTipoTratamient])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tratamiento_tipo_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [FK_tratamiento_tipo_tratamiento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkTratamientoConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [fkTratamientoConsulta] FOREIGN KEY([fkConsulta])
REFERENCES [dbo].[consulta] ([idConsulta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fkTratamientoConsulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [fkTratamientoConsulta]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_cargo_soloLetras]') AND parent_object_id = OBJECT_ID(N'[dbo].[cargo]'))
ALTER TABLE [dbo].[cargo]  WITH CHECK ADD  CONSTRAINT [CK_cargo_soloLetras] CHECK  ((NOT [nombreCargo] like '%[^A-Z]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_cargo_soloLetras]') AND parent_object_id = OBJECT_ID(N'[dbo].[cargo]'))
ALTER TABLE [dbo].[cargo] CHECK CONSTRAINT [CK_cargo_soloLetras]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta]  WITH CHECK ADD  CONSTRAINT [CK_consulta] CHECK  (([fechaconsulta]<getdate()))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] CHECK CONSTRAINT [CK_consulta]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta]  WITH CHECK ADD  CONSTRAINT [CK_consulta_1] CHECK  ((NOT [sintomasConsulta] like '%[^A-Z]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_consulta_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[consulta]'))
ALTER TABLE [dbo].[consulta] CHECK CONSTRAINT [CK_consulta_1]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [CK_examen] CHECK  (([fechaaplicacionExamen]>getdate()))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [CK_examen]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen_fechaSol]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [CK_examen_fechaSol] CHECK  (([fechasoliExamen]>=getdate()))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_examen_fechaSol]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [CK_examen_fechaSol]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckpassLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [ckpassLogin] CHECK  ((ltrim(rtrim([passLogin]))<>''))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckpassLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [ckpassLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckusuLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [ckusuLogin] CHECK  ((ltrim(rtrim([usuLogin]))<>''))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckusuLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [ckusuLogin]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckproducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento]  WITH CHECK ADD  CONSTRAINT [ckproducto] CHECK  ((NOT [nombreMedica] like '%[^A-Z]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckproducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[medicamento]'))
ALTER TABLE [dbo].[medicamento] CHECK CONSTRAINT [ckproducto]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [CK_persona] CHECK  ((NOT [pnombrePer] like '%[0-9]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [CK_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [CK_persona_1] CHECK  ((NOT [snombrePer] like '%[0-9]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [CK_persona_1]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [CK_persona_2] CHECK  ((NOT [snombrePer] like '%[0-9]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [CK_persona_2]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [CK_persona_3] CHECK  ((NOT [snombrePer] like '%[0-9]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [CK_persona_3]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_4]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [CK_persona_4] CHECK  (([fechaNacPer]<getdate()))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_persona_4]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [CK_persona_4]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreRol]') AND parent_object_id = OBJECT_ID(N'[dbo].[rol]'))
ALTER TABLE [dbo].[rol]  WITH CHECK ADD  CONSTRAINT [ckNombreRol] CHECK  ((NOT [nombreRol] like '%[^A-Z]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreRol]') AND parent_object_id = OBJECT_ID(N'[dbo].[rol]'))
ALTER TABLE [dbo].[rol] CHECK CONSTRAINT [ckNombreRol]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreTipoempleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_empleado]'))
ALTER TABLE [dbo].[tipo_empleado]  WITH CHECK ADD  CONSTRAINT [ckNombreTipoempleado] CHECK  (([nombreTipoEmp] like '%[^0-9]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ckNombreTipoempleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_empleado]'))
ALTER TABLE [dbo].[tipo_empleado] CHECK CONSTRAINT [ckNombreTipoempleado]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tipo_examen_nombre]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_examen]'))
ALTER TABLE [dbo].[tipo_examen]  WITH CHECK ADD  CONSTRAINT [CK_tipo_examen_nombre] CHECK  ((NOT [nombreTipoExa] like '%[^A-Z]%'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tipo_examen_nombre]') AND parent_object_id = OBJECT_ID(N'[dbo].[tipo_examen]'))
ALTER TABLE [dbo].[tipo_examen] CHECK CONSTRAINT [CK_tipo_examen_nombre]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [CK_tratamiento] CHECK  (([fechafinalTrata]>[fechainiTrata]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [CK_tratamiento]
GO
/****** Object:  Trigger [dbo].[correotr]    Script Date: 24/06/2014 13:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[correotr]'))
EXEC dbo.sp_executesql @statement = N'      
CREATE TRIGGER [dbo].[correotr]

ON [dbo].[cita]

AFTER insert,update



AS 
declare @cor varchar(50)
select @cor=correoCita from inserted

BEGIN


    Exec msdb.dbo.sp_send_dbmail
@profile_name=''clinicaNazareth'',
@recipients=@cor,
@body=''buenas tardes este correo es para confirmar con la cita pogramada en la clinica nazareth por favor dar click en el enlace 
para confirmar la cita  < src=https://www.google.com.sv/ /> 
si este correo llego por accidente nuestra disculpa y haga caso omiso de este muchas gracias por su atencion  '',
@subject=''Confirmacion de cita'';

 


END
	
	

' 
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'examen', N'CONSTRAINT',N'CK_examen'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua la fecha sea posterior al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'examen', N'CONSTRAINT',N'CK_examen_fechaSol'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que la fecha de solicitud sea posterior o igual al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen_fechaSol'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'medicamento', N'COLUMN',N'viaAdmonMedica'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'representa la via de administracion del medicamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'medicamento', @level2type=N'COLUMN',@level2name=N'viaAdmonMedica'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'medicamento', N'COLUMN',N'presentaMedica'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa la presentacion del medicamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'medicamento', @level2type=N'COLUMN',@level2name=N'presentaMedica'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tipo_examen', N'CONSTRAINT',N'CK_tipo_examen_nombre'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en nombre de examen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipo_examen', @level2type=N'CONSTRAINT',@level2name=N'CK_tipo_examen_nombre'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tratamiento', N'CONSTRAINT',N'CK_tratamiento'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha final sea posterior a la inicial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tratamiento', @level2type=N'CONSTRAINT',@level2name=N'CK_tratamiento'
GO
USE [master]
GO
ALTER DATABASE [clinica] SET  READ_WRITE 
GO
