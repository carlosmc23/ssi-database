USE SSICODE
GO
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN TRANSACTION;
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla OcupationalSafety
**
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/

PRINT 'Insert data into the OcupationalSafety table';
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia incidentes de personal ', 'analista de seguridad industrial de personal', 'reducir incidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','20000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitacion de seguridad industrial', 'experto analista de seguridad industrial', 'reducir accidentes en la empresa', 'cursos con personal capacitado, y materiasles didactivos','7000','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('inspeccion de Seguridad Industrial', 'Inspector de seguridad industrial', 'reducir accidentes', 'Iplementacion de seguridad industrial materiales ','5000','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','2200','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'Exposicion de materiales de seguridad','8000','2 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia incidentes de personal ', 'analista de seguridad industrial de personal', 'reducir incidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','20000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitacion de seguridad industrial', 'experto analista de seguridad industrial', 'reducir accidentes en la empresa', 'cursos con personal capacitado, y materiasles didactivos','7000','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('inspeccion de Seguridad Industrial', 'Inspector de seguridad industrial', 'reducir accidentes', 'Iplementacion de seguridad industrial materiales ','5000','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','20022','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'Exposicion de materiales de seguridad','20005','2 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','40000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia incidentes de personal ', 'analista de seguridad industrial de personal', 'reducir incidentes', 'materiales didacticos de aprendisaje','2000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','20005','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','80002','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitacion de seguridad industrial', 'experto analista de seguridad industrial', 'reducir accidentes en la empresa', 'cursos con personal capacitado, y materiasles didactivos','7000','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('inspeccion de Seguridad Industrial', 'Inspector de seguridad industrial', 'reducir accidentes', 'Iplementacion de seguridad industrial materiales ','30005','3 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo en la metodologia de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'materiales didacticos de aprendisaje','20000','5 semanas');
INSERT INTO [dbo].[OcupationalSafety] ([activities],[responsable],[objective],[resources],[cost],[weeks])
VALUES ('capacitar al equipo de seguridad', 'analista de seguridad industrial', 'reducir accidentes', 'Exposicion de materiales de seguridad','20000','2 semanas');
PRINT 'OcupationalSafety table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla SegurityManual
**
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
PRINT 'Insert data into the SegurityManual table';
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de almacenes', 'seguridad industrial en almacenes',  'materiales en almacenes son apilados segun llegan al mismo');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de maquinaria de construccion', 'seguridad industrial en macquinaria de construccion', 'maquinaria para la construccion de viviendas no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes restringidos', 'seguridad industrial en almacenes restringidos', 'materiales reactivos en almacenes no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes no restringidos', 'seguridad industrial en diversas areas', 'mantener seguridad en diversos ambientes de la empresa');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de empleados', 'seguridad industrial ',  'seguridad industrial');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de almacenes', 'seguridad industrial en almacenes',  'materiales en almacenes son apilados segun llegan al mismo');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de maquinaria de construccion', 'seguridad industrial en macquinaria de construccion', 'maquinaria para la construccion de viviendas no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes restringidos', 'seguridad industrial en almacenes restringidos', 'materiales reactivos en almacenes no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes no restringidos', 'seguridad industrial en diversas areas',  'mantener seguridad en diversos ambientes de la empresa');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de empleados', 'seguridad industrial ', 'seguridad industrial');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de almacenes', 'seguridad industrial en almacenes', 'materiales en almacenes son apilados segun llegan al mismo');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de almacenes', 'seguridad industrial en almacenes',  'materiales en almacenes son apilados segun llegan al mismo');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de maquinaria de construccion', 'seguridad industrial en macquinaria de construccion', 'maquinaria para la construccion de viviendas no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes restringidos', 'seguridad industrial en almacenes restringidos',  'materiales reactivos en almacenes no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes no restringidos', 'seguridad industrial en diversas areas',  'mantener seguridad en diversos ambientes de la empresa');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de empleados', 'seguridad industrial ', 'seguridad industrial');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de almacenes', 'seguridad industrial en almacenes', 'materiales en almacenes son apilados segun llegan al mismo');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de maquinaria de construccion', 'seguridad industrial en macquinaria de construccion', 'maquinaria para la construccion de viviendas no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes restringidos', 'seguridad industrial en almacenes restringidos',  'materiales reactivos en almacenes no son correctamente cuidados');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes no restringidos', 'seguridad industrial en diversas areas',  'mantener seguridad en diversos ambientes de la empresa');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad de empleados', 'seguridad industrial ', 'seguridad industrial no es acatada en los primeros meses');
INSERT INTO [dbo].[SegurityManual] ([Name],[Descriptionn],[Observations])
VALUES ('seguridad en ambientes no restringidos', 'seguridad industrial en diversas areas',  'mantener seguridad en diversos ambientes de la empresa');
PRINT 'Insert data into the SegurityManual table';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla area
**
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
PRINT 'Insert data into the area table...';

INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material de construccion', 'NO RESTRINGIDO',2,3);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material reactivos', ' RESTRINGIDO',3,4);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA, SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen de material electrico', 'NO RESTRINGIDO',5,6);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA, SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de materiales de herramiemtas', 'NO RESTRINGIDO',6,7);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA, SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de mecanica automotris',  'NO RESTRINGIDO',8,9);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA,SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen general', 'NO RESTRINGIDO',10,11);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material de construccion',  'NO RESTRINGIDO',12,13);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material de construccion', 'NO RESTRINGIDO',14,15);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material reactivos',  ' RESTRINGIDO',16,17);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material electrico',  'NO RESTRINGIDO',18,19);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de materiales de herramiemtas', 'NO RESTRINGIDO',20,21);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA,SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen de mecanica automotris', 'NO RESTRINGIDO',1,2);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA,SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen general', 'NO RESTRINGIDO',22,23);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA,SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen de material de construccion', 'NO RESTRINGIDO',1,2);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material de construccion', 'NO RESTRINGIDO',2,3);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA,SegurityManualID,OcupationalSafetyID )
VALUES ('almacen', 'almacen de material reactivos', ' RESTRINGIDO',3,4);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material electrico',  'NO RESTRINGIDO',4,5);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de materiales de herramiemtas',  'NO RESTRINGIDO',5,6);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de mecanica automotris', 'NO RESTRINGIDO',7,8);
INSERT INTO [dbo].[Area] ( Name , Descriptionn , TypeA ,SegurityManualID,OcupationalSafetyID)
VALUES ('almacen', 'almacen de material de construccion', 'NO RESTRINGIDO',8,9);


PRINT 'Area table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Employee
**
**  Author: Carlos Meneses Covarrubias, Luis Aviles
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
** 21/06/2018 Luis Aviles       Adding 50 Employee rows
*******************************************************************************/
PRINT 'Insert data into the Employee  table....';
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6674546,'Jorge', 'Beltran', 'Av. Cap. Ustaris', '1990-03-03', 69433445);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3344553,'Rudy', 'Salvatierra', 'Av. Avion', '1986-06-19', 70755443);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6837584,'Noemi', 'Luna', 'Av. Panamericana', '1988-10-02', 69465789);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(2048735,'Juaquin', 'Gonzales', 'Av. Circumvalacion', '1987-12-10', 69423234);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5904837,'Carlos', 'Meneses', 'Av. Oquendo', '1986-12-23', 72294735);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3808112,'Hope','Carter','P.O. Box 728, 1041 Iaculis Ave','1986-06-07',79969466);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6786873,'Devin','Ross','Ap #709-5674 Dolor St.','1988-11-13',75198890);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9026884,'Dieter','Allen','4454 Facilisi. St.','1984-08-15',76225410);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3636446,'Fuller','Townsend','751-338 Malesuada. St.','1990-09-05',74782114);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(7925055,'Jameson','Curtis','P.O. Box 654, 857 Iaculis, St.','1987-02-11',70540513);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6784173,'Hop','Walters','772-6149 Mi Avenue','1984-01-08',79016856);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4560147,'Basia','Stafford','2040 Magna Rd.','1985-09-22',76348897);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(7625555,'Jamal','Foreman','8903 Rutrum Road','1990-01-16',79900162);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3588788,'Hilel','Fitzgerald','Ap #373-8083 Erat Avenue','1984-12-09',71002188);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(7928573,'Sara','Mcknight','2588 Erat St.','1989-10-29',71869634);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8338235,'Frances','Johns','P.O. Box 374, 1792 In Rd.','1987-02-02',73918399);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8970307,'Rinah','Moody','3276 Pharetra Avenue','1985-07-27',78816537);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(7858940,'Nehru','Walter','P.O. Box 635, 4269 Accumsan Avenue','1990-04-03',77118189);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9375432,'Breanna','Lancaster','477-2740 Malesuada. St.','1987-04-05',75947065);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6624581,'Madeline','Mack','P.O. Box 213, 3003 At Street','1989-07-25',75425400);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4335695,'Meghan','Mcbride','Ap #490-5486 Lacinia Street','1985-09-27',73709491);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9084104,'Flynn','Myers','5641 In Avenue','1988-08-19',70604475);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3975880,'Mariko','Price','Ap #283-2794 Purus St.','1985-06-15',71994041);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8385349,'Kato','Mejia','3145 Scelerisque Road','1985-06-04',72729267);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6825358,'Julie','Ruiz','293-5036 Lorem, St.','1989-02-09',77850828);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4191472,'Kiara','Leonard','4689 Sodales Rd.','1987-04-04',73613416);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9386110,'Eaton','Reid','P.O. Box 122, 4844 Duis Street','1985-08-16',76609214);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8734723,'Imogene','Fox','Ap #430-7539 Diam. Avenue','1990-10-18',75437887);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3981851,'Ahmed','Petersen','999-6673 Proin St.','1987-03-08',71076998);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8975275,'Genevieve','Harrington','Ap #808-6729 Gravida Avenue','1989-02-01',71931023);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8017231,'Zachery','Washington','Ap #814-2055 Sociis Avenue','1990-02-13',71945450);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5065862,'Clark','Meyer','P.O. Box 981, 1543 Nulla. Road','1986-02-04',76419795);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8744113,'Carlos','Green','Ap #182-2672 Ac Ave','1987-08-24',79198923);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6669847,'Lucius','Aguirre','Ap #703-3990 Mollis Road','1990-02-27',76768949);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5173664,'Joseph','Hendrix','P.O. Box 628, 8637 Egestas Road','1988-03-01',75230327);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8429423,'Brynne','Meyers','9367 Magna St.','1987-06-29',73395617);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9252055,'Keely','Bond','2953 Morbi St.','1984-09-17',70206703);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8746800,'David','Hunt','Ap #565-6725 Cubilia St.','1987-11-14',74777341);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4880385,'Ian','Hewitt','172-9410 Mauris Rd.','1989-05-18',79016134);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5852332,'Hanna','Kent','2638 Et Rd.','1989-05-21','72856481');
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8676658,'Aquila','Perry','813-7664 Maecenas Avenue','1985-01-30',75231211);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5063723,'Aurora','Wyatt','Ap #487-6341 Non Av.','1988-11-20',72812296);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6040021,'Sawyer','Figueroa','9208 Nec Ave','1987-05-09',73377507);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5445605,'Tanner','Weeks','Ap #241-9321 Mauris Street','1984-01-27',70113524);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(7049393,'Adam','Cameron','P.O. Box 398, 3236 Sapien Rd.','1986-06-10',76611737);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(5245301,'Myles','White','576-191 Augue St.','1986-08-13',75640603);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4389546,'Karleigh','Whitney','3147 Montes, Rd.','1987-04-19',76581484);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(8044824,'Mariam','Stokes','P.O. Box 169, 6456 Ullamcorper Av.','1986-07-08',77334389);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4395091,'Chastity','Hebert','Ap #593-6243 Primis St.','1986-05-23',79554738);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6171680,'Astra','Rutledge','P.O. Box 383, 710 Litora St.','1989-12-31',76216059);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(6638415,'Rosalyn','Massey','P.O. Box 109, 1623 Mattis St.','1985-02-01',77608232);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4795545,'Price','Mcdaniel','252-6022 Diam Rd.','1986-06-02',79825845);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(9264976,'Harper','Mayer','4971 Ipsum Rd.','1985-09-09',75208404);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(4345454,'Eric','Acevedo','8323 Ut Avenue','1989-01-08',79275282);
INSERT INTO dbo.Employee( Ci, First_Name, Last_Name, Address ,Birth_date, Phone)
    VALUES(3534605,'Denton','Guy','Ap #875-550 Vivamus St.','1990-03-03',70639253);
PRINT 'Employee table done...';
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Affliction_catalog
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Affliction_Catalog table....';
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Dermatologica', 'Es aquella afflicicon o enfermedad de la piel');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Cardiologica', 'Es aquella afflicicon o enfermedad del corazon y del aparato circulatorio');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Digestiva', 'Es aquella afflicicon o enfermedad del esofago, estomago e intestinos');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Reumatica', 'Es aquella afflicicon o enfermedad que afecta todas las actividades del aparato locomotor');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Traumatologica', 'Es aquella afflicicon o enfermedad que afecta a los huesos, ligamentos, articulaciones, musculos y tendones');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Pulmonar Respiratoria', 'Es aquella afflicicon o enfermedad que abarca desde un simple resfriado hasta una tubercolosis');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Alergica', 'Es aquella afflicicon o enfermedad producida por mecanismos inmunologicos');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Hematologica', 'Es aquella afflicicon o enfermedad correspodiente a patologias de la sangre o hematologicas');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Neurologica', 'Es aquella afflicicon o enfermedad de transtornos del sistema nervioso desde sus casos mas comunes(estres)');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Oftalmologica', 'Es aquella afflicicon o enfermedad del ojo incluyendo el globo ocular y su musculatura');
INSERT INTO dbo.Affliction_Catalog(Name, Description)
VALUES ( 'Ninguno', 'Ninguno');
PRINT 'Affliction_Catalog table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Incident_Catalog
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Incident_Catalog table....';
INSERT INTO dbo.Incident_Catalog(Name, Description)
VALUES ('Higth','Se concidera un incidente de nivel alto cuando los costos de reparacion superan los 7000 bs');
INSERT INTO dbo.Incident_Catalog(Name, Description)
VALUES ('Important','Se concidera un incidente de nivel alto cuando los costos de reparacion son mayores a los 3000 bs y menores los 7000 bs');
INSERT INTO dbo.Incident_Catalog(Name, Description)
VALUES ('Mediun','Se concidera un incidente de nivel alto cuando los costos de reparacion son mayores a los 1000 bs y menores los 3000 bs');
INSERT INTO dbo.Incident_Catalog(Name, Description)
VALUES ('Low','Se concidera un incidente de nivel alto cuando los costos de reparacion son menores los 1000 bs');
INSERT INTO dbo.Incident_Catalog(Name, Description)
VALUES ('Null','Se concidera un incidente de nivel alto cuando los costos de reparacion son minimos o nulos, menos de 100 bs');

PRINT 'Incident_Catalog table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Affliction
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Affliction table....';
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor muscular', 'El dolor es en el muslo derecho', 'El dolor comenzo despues de transportar ladrillos', '2018-02-05', 37, 10);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Irritacion en la piel', 'El area de irritada son las manos', 'La irritacion comenzo despues de manipular yeso', '2018-02-05', 23, 1);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor estomacal', 'El dolor escomacal es constante', 'Se cree que el dolor es por la manipulacion de diecel si mascarilla', '2018-02-05', 10, 3);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Molestia ocular', 'Irritacion en los ojos', 'La irritacion comenzo despues de realizar tranajos de pintura', '2018-02-05', 49, 10);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor en la espalda', 'Dolor empeso despues de trabajos intensos', 'El dolor se debe a la fatiga del empleado', '2018-02-05', 33, 5);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor de hombro', 'El dolor es en el hombro izquierdo', 'El dolor comenzo despues de tranportar vigas de madera', '2018-02-05', 5, 4);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Resfrio', 'El resfrio es intenso', 'El resfrio es provocado por los factores climaticos y la estacion', '2018-02-05', 3, 2);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor en el pecho', 'El dolordebido a la aflicion Cardio Vascular del empleado', 'El empleado ya ingreso a la empresa con esta aflicion', '2018-02-05', 2, 3);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Estres', 'El empelado sufre Estres', 'Se esta deribando al empleado a Medico del area para su tratamiento', '2018-02-05', 39, 9);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Reaccion alergica', 'Reaccion alergica por picadura', 'El empleado tuvo una reaccion alergica por la picadura de una abeja', '2018-02-05', 18, 7);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor muscular', 'El dolor es en la mano izquierda', 'El dolor comenzo despues de realizar soldadura', '2018-02-05', 11, 4);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Irritacion en la piel', 'Irritacion presentada en la cara', 'La irritacion se presento despues de realizar trabajos de soldadura', '2018-02-05', 42, 1);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor de estomago', 'El dolor estomacal es recurrente', 'El dolor comienza cuando el empleadi realiza trabajos de pintura', '2018-02-05', 31, 3);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Resfriado recurrente', 'El empleado sufre de agotamiento y debilidad', 'El resfriado se dio por contagio fuera del trabajo', '2018-02-05', 19, 6);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Alergia', 'Alergia en las manos', 'la alergia comenzo depues de manipular yeso', '2018-02-05', 45, 7)
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Catarro', 'El dolor de garganta es intenso', 'El dolor comenzo despues del trabajo con diecel', '2018-02-05', 26, 6);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor en la espalda', 'Dolor empeso despues de trabajos intensos', 'El dolor se debe a la fatiga del empleado', '2018-02-05', 15, 5);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Molestia ocular', 'Irritacion en los ojos', 'La irritacion comenzo despues de realizar tranajos de pintura', '2018-02-05', 47, 10);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Estres', 'El empelado sufre Estres', 'Se esta deribando al empleado a Medico del area para su tratamiento', '2018-02-05', 21, 9);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Dolor articular', 'El dolor es en el pie derecho', 'El dolor comenzo despues de tranportar ladrillos', '2018-02-05', 13, 4);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Irritacion en la piel', 'Irritacion presentada en la cara', 'La irritacion se presento despues de realizar trabajos de soldadura', '2018-02-05', 2, 1);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Ninguno', 'Ninguno','ninguno', '2018-02-05', 9, 11);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Ninguno', 'Ninguno','ninguno', '2018-02-05', 14, 11);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Ninguno', 'Ninguno','ninguno', '2018-02-05', 22, 11);
INSERT INTO dbo.Affliction(Name, Description, Observation, Registration_date, Employee_id, Affliction_Catalog_id)
VALUES ('Ninguno', 'Ninguno','ninguno', '2018-02-05', 24, 11);

PRINT 'Affliction table done...';
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Incident
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Incident table....';
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Caida de una Carretilla', 'La carretilla cayo desde el segundo piso en la hora del almuerzo', 'Av. Heroinas', 'Joginio vecino', '2018-02-17', 35, 5);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('caida de una escalera', 'La escalera cayo desde el segundo piso en la hora del almuerzo', 'Av. Moscu', 'Gabriel vecino', '2018-03-02', 24, 5);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Derrumbe de una bloque de ladrillos', 'el derrumbe obedecio al tipo de terreno de la zona', 'Av. Lunares', 'Guillermo Obrero', '2018-04-21', 8, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Perdida de 60 bolsas de cemento', 'La perdida fue ocacionada por la lluvia y por que las bolsas no fueron cubiertas de manera adecuada', 'Av. Oquendo', 'Noemi vecina', '2018-02-17', 50, 2);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Caida de tejas', 'La caida de las tejas se ocaciono por que no fueron acomodadas adecuadamente', 'Av. Panamericana', 'Luis Obrero', '2018-05-22', 38, 4);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('destruccion de ladrillos', 'los ladrillos no fueron adecuadamente por lo que se cayeron', 'Av. Belzu', 'Jose vecino', '2018-01-23', 27, 5);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('caida de una viga', 'La cuerda que subia las vigas se rompio ocasionando la caida de la misma', 'Av. Oquendo', 'Juan vecino', '2018-04-26', 43, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('caida de varillas de vigas', 'las varillas no fueron aseguradas del extremo y cayeron por el peso', 'Av. Panamericana', 'Carlos vecino', '2018-03-16', 29, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('desperdicio de cemento', 'una carretilla llena de cemento se volteo', 'Av. Heroinas', 'Jorge obrero', '2018-06-04', 22, 2);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('loza destruida', 'se cayeron varias cajas de loza en e momento de ser descargadas del camion', 'Av. Heroinas', 'Manuel vecino', '2018-04-19', 34, 4);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('perdida de tubos ', 'La carretilla lena de mezcla de cemento cayo desde el segundo piso sobre los tubos', 'Av. Moscu', 'Lucas vecino', '2018-03-16', 17, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('explicion de una compresa', 'La exploicion ocurrio por la caida de agua sobre la misma', 'Av. Heroinas', 'Mariano vecino', '2018-02-12', 9, 5);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Rotura de tuberias de agua', 'La rotura se ocaciono por  el transporte de escombros en areas no indicadas', 'Av. Lunares', 'Lucinda vecino', '2018-02-23', 41, 2);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Accidente con vehiculo', 'Ocurrio por la caida de un escombro que cayo sobre el parabrisas de un auto estacionado', 'Av. America', 'Patricio vecino', '2018-03-13', 25, 4);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Caida de un andamio', 'La caida se ocaciono desde el tercer piso, por el descuido de un obrero', 'Av. Circumbalacion', 'Jonas vecino', '2018-05-20', 14, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('destruccion de ladrillos', 'los ladrillos no fueron adecuadamente por lo que se cayeron', 'Av. Aroma', 'Joginio vecino', '2018-01-23', 32, 3);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('caida de una viga', 'La cuerda que subia las vigas se rompio ocasionando la caida de la misma', 'Av. America', 'Joel vecino', '2018-03-01', 7, 4);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('loza destruida', 'se cayeron varias cajas de loza en e momento de ser descargadas del camion', 'Av. Heroinas', 'Limbert vecino', '2018-05-25', 40, 5);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Derrumbe de una bloque de ladrillos', 'el derrumbe obedecio al tipo de terreno de la zona', 'Av. Belzu', 'Pablo vecino', '2018-06-20', 12, 4);
INSERT INTO dbo.Incident(Description, Observations, Place, Witness, Registration_Date, Employee_id, Incident_Catalog_id)
VALUES ('Desperdicio de pintura', 'Se cayeron 6 botes de pintura por que estaban mal acomodados', 'Av. Oquendo', 'Ricardo vecino', '2018-05-07', 20, 5);
PRINT 'Incident table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Project
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Project table....';
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Los Robles', 'Av. Belzu', 'Edif. de 6 pisos', '2018-02-05');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. Saavedra', 'Av. Heroinas', 'Edif. de 4 pisos', '2018-03-06');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Los Tajivos', 'Av. Aroma', 'Edif. de 5 pisos', '2018-01-15');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Civeles', 'Av. Ayacucho', 'Edif. de 10 pisos', '2018-04-25');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Suares', 'Av. America', 'Edif. de 4 pisos', '2017-10-12');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'La Riviera', 'Av. Circulvalacion', 'Edif. de 2 pisos', '2017-11-08');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'La Casona', 'Av. Pando', 'Edif. de 7 pisos', '2017-12-07');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Mercado', 'Av. Oquendo', 'condiminio 3 Edif. de 6 pisos', '2018-02-17');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Las Lomas', 'Av. Dorbigni', 'Edif. de 4 pisos', '2017-09-19');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. Alianza', 'Av. America', 'Edif. de 6 pisos', '2017-12-23');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Torre Duo', 'Av. Uyuni', 'Edif. de 12 pisos', '2017-10-22');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. Alameda', 'Av. Costanera', 'Edif. de 4 pisos', '2018-04-16');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif Yolanda', 'Av. Beiging', 'Edif. de 2 pisos', '2018-03-01');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif Illimani', 'Av. Oquendo', 'Edif. de 8 pisos', '2018-03-26');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif Orion', 'Av. La Paz', 'Edif. de 2 pisos', '2018-04-13');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif Hansa', 'Av. Villarroel', 'Edif. de 10 pisos', '2018-01-17');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Torre Azul', 'Av. Heroinas', 'Edif. de 11 pisos', '2018-03-14');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. El Poeta', 'Av. Sucre', 'Edif. de 14 pisos', '2018-01-28');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. Colon', 'Av. Calama', 'Edif. de 3 pisos', '2018-05-03');
INSERT INTO dbo.Project(Name, Location, Description, Init_date)
VALUES ( 'Edif. Royal', 'Av. Esteban Arze', 'Edif. de 9 pisos', '2018-02-18');
PRINT 'Project table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Asignation_Project
**
**  Author: Carlos Meneses Covarrubias
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Carlos Menseses   Initial version
*******************************************************************************/
PRINT 'Insert data into the Asignation_Project table....';
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (4, 18, '2018-01-17','2018-03-02');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (19, 6, '2018-01-13','2018-03-03');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (32, 14, '2018-01-26','2018-03-25');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (44, 12, '2018-01-20','2018-03-12');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (8, 5, '2018-01-28','2018-03-19');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (22, 19, '2018-01-29','2018-03-20');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (35, 10, '2018-02-01','2018-04-26');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (46, 20, '2018-02-05','2018-04-02');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (11, 13, '2018-02-12','2018-04-05');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (25, 2, '2018-02-15','2018-04-07');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (38, 17, '2018-02-21','2018-04-08');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (49, 7, '2018-02-26','2018-04-11');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (15, 3, '2018-03-02','2018-05-01');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (28, 4, '2018-03-05','2018-05-03');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (40, 10, '2018-03-08','2018-05-05');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (2, 9, '2018-03-11','2018-05-09');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (17, 15, '2018-03-14','2018-05-10');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (30, 11, '2018-03-19','2018-05-11');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (42, 1, '2018-03-23','2018-05-13');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (9, 8, '2018-03-25','2018-05-14');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (23, 5, '2018-03-28','2018-05-17');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (36, 9, '2018-04-02','2018-06-26');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (47, 13, '2018-04-04','2018-06-03');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (6, 17, '2018-04-05','2018-06-05');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (21, 4, '2018-04-08','2018-06-06');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (34, 8, '2018-04-09','2018-06-09');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (10, 20, '2018-04-13','2018-06-10');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (24, 11, '2018-04-16','2018-06-12');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (37, 6, '2018-04-17','2018-06-13');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (48, 15, '2018-04-21','2018-06-14');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (14, 18, '2018-04-22','2018-06-17');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (50, 2, '2018-04-25','2018-06-20');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (12, 7, '2018-04-27','2018-06-02');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (27, 12, '2018-05-01','2018-06-01');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (13, 14, '2018-05-03','2018-07-01');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (26, 19, '2018-05-05','2018-07-02');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (39, 10, '2018-05-06','2018-07-06');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (5, 3, '2018-05-08','2018-07-10');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (20, 1, '2018-05-10','2018-07-15');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (33, 12, '2018-05-11','2018-07-17');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (45, 8, '2018-05-14','2018-07-17');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (7, 5, '2018-05-17','2018-07-21');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (31, 19, '2018-05-18','2018-07-29');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (3, 14, '2018-05-20','2018-08-03');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (18, 3, '2018-05-22','2018-08-05');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (43, 18, '2018-05-23','2018-08-10');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (16, 10, '2018-05-25','2018-08-13');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (41, 17, '2018-05-29','2018-08-15');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (1, 9, '2018-05-29','2018-08-18');
INSERT INTO dbo.Asignation_Project(Employee_id, Project_id, asignation_init_date , asingation_end_date)
VALUES (29, 13, '2018-06-02','2018-08-26');
PRINT 'Asignation_Project table done...';
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Catalog Injury Factor 
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the Catalog Injury Factor table....';
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Acciones precipitadas',null,'CAT-FI-01', 'Acciones precipitadas',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Falta de Información',null,'CAT-FI-02','Falta de información sobre Normas de Trabajo',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Dificultades de Aprendizaje',null,'CAT-FI-03','Dificultades provenientes del aprendizaje',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Falta de Interés preventivo',null,'CAT-FI-04',' Evidenciar falta de interés preventivo',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('No Identificar Riesgos',null,'CAT-FI-05','Carencias para la identificación de riesgos',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Uso inadecuado de Máquinas',null,'CAT-FI-06','Uso inadecuado de máquinas y herramientas.',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Fallas de Coordinación',null,'CAT-FI-07','Fallas de coordinación en las acciones',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Hábitos Inadecuados',null,'CAT-FI-08','Hábitos inadecuados para la tarea',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Ausencia de Alarmas',null,'CAT-FI-09','Ausencia de alarmas en lugares y maquinarias peligrosas',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Inexistencia de Plan de Emergencia',null,'CAT-FI10','No existe ningun plan de emergencia',0)
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('Sin Factor inseguro',null,'CAT-FI-11','Sin Factor Inseguro',0);
INSERT INTO catalogfi(catalogfiname,updated_on,catalogficode,catalogfidescription,deleted)
    VALUES('No especificado',null,'CAT-FI-12','No especificado',0);	
	
PRINT 'Catalog Injury Factor table done...';	

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Catalog Nature of Injury
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the Catalog Nature of Injury table....';
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Dermatofitosis',null,'CAT-NI-01','Problemas en la Piel',0);
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Trastornos del metabolismo',null,'CAT-NI-02','Trastornos del metabolismo de los esfingolipidos y almacenamiento de lípidos',0);
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Trastornos Mentales ',null,'CAT-NI-03','Otros trastornos mentales debidos a lesión y disfunción cerebral, y a enfermedad física',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Efecto toxico ',null,'CAT-NI-04','Efecto toxico de sustancias corrosivas',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Secuelas de traumatismos',null,'CAT-NI-05','Secuelas de traumatismos de miembro superior e Inferior',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Quemaduras y Corrosion',null,'CAT-NI-06','Quemaduras clasificadas según la extensión de la superficie del cuerpo afectada',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Fractura de Extremidades',null,'CAT-NI-07','Fractura de miembro inferior,superior nivel no especificado',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Cuerpo extraño en el oído',null,'CAT-NI-08','Cuerpo extraño en el oído',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Traumatismos por aplastamiento',null,'CAT-NI-09','Traumatismos por aplastamiento que afectan múltiples regiones del cuerpo',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Asma',null,'CAT-NI-10','Problemas Respiratorios agudos',0);	
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('Sin Nature Condition',null,'CAT-NI-11','Sin Nature Condition',0);
INSERT INTO catalogni(catalogniname,updated_on,catalognicode,catalognidescription,deleted)
    VALUES('No especificado',null,'CAT-NI-12','No especificado',0);	
	
PRINT 'Catalog Nature of Injury table done...';	
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Catalog Type of Disability 
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the Catalog Type of Disability  table....';
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Debilidad Auditiva',null,'CAT-TD-01','No escucha bien tiene deficiencia',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Deterioro Severo de La Audicion',null,'CAT-TD-02','Perdida auditiva por Ruido en el Area de trabajo',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Atrofia en las Extremidades',null,'CAT-TD-03','Atrofia en las extremidades Inferiores y posteriores',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Fiebre Reumatica',null,'CAT-TD-04','Fiebre Reumatica Invalidante del movimiento de las extremidades',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Paralisis del Brazo',null,'CAT-TD-05','Paralisis Parcial de Brazo debido al cansancio',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Amnesia',null,'CAT-TD-06','Perdida Temporal de la memoria',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Convulsiones',null,'CAT-TD-07','Convulsiones continuas,severas,muy severas',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Deficiencia Cardiaca',null,'CAT-TD-08','Padecimiento de problemas del corazon',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Deficiencia Renal',null,'CAT-TD-09','{Pacimiento de Problemas de Riñon',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Dolor En la espalda',null,'CAT-TD-10','Malestar y debilidad en la espalda',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('Sin Discapacidad',null,'CAT-TD-11','Sin Discapacidad',0);
INSERT INTO catalogtd(catalotdname,updated_on,catalogtdcode,catalogtddescription,deleted)
    VALUES('No especificado',null,'CAT-TD-12','No especificado',0);	
PRINT 'Catalog Type of Disability table done...';	

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Catalog Insecure Condition
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the Catalog Insecure Condition  table....';
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Materiales sin marcar',null,'CAT-UA-01','Materiales sin marcar o inapropiadamente marcados.',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Materiales o equipo defectuoso',null,'CAT-UA-02','Materiales o equipo defectuoso no propiedad del empleador',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Falta de Colocacion de ademes ',null,'CAT-UA-03','Falta de colocacion de ademes en minas, excavaciones, construcciones, etc.',0);	
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Inadecuada Colocacion de ademes ',null,'CAT-UA-04','Inadecuada colocacion de ademes en minas, excavaciones, construcciones, etc.',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Terrenos Defectuosos',null,'CAT-UA-05','Terrenos defectuosos no propiedad del empleador',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Blindado inadecuadamente',null,'CAT-UA-06','Blindado inadecuadamente',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Conductores electricos no aislados.',null,'CAT-UA-07','Conductores, conexiones, interruptores, etc., electricos, no aislados.',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Ayuda inadecuada',null,'CAT-UA-08','Ayuda inadecuada para levantar, mover, rodar, etc., cargas.',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Asignacion inadecuada de personal',null,'CAT-UA-09','Asignacion inadecuada de personal, para el desarrollo de una actividad especifica.',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Control inadecuado del transito',null,'CAT-UA-10','Control inadecuado del transito en areas de trabajo.',0);	
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('Sin riesgo fisico',null,'CAT-UA-11', 'Sin riesgo fisico',0);
INSERT INTO catalogua(catalouaname,updated_on,cataloguacode,cataloguadescription,deleted)
    VALUES('No especificado',null,'CAT-UA-12','No especificado',0);
PRINT 'Catalog Insecure Condition table done...';	
/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Catalog Insecure Act
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the  Catalog Insecure Act  table....';
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Falta de atención',null,'CAT-UC-01','Falta de atención a la base de sustentación o sus alrededores',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Arrancar o detener vehículos',null,'CAT-UC-02','Arrancar o detener vehículos o equipo de la planta sin tomar las debidas precauciones',0);	
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Omitir la colocación de avisos',null,'CAT-UC-03','Omitir la colocación de avisos, señales, marcas, etc., preventivas',0);	
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Usar Accesorios Inseguros',null,'CAT-UC-04','Usar accesorios de indumentaria personal inseguros, sce',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Arrojar el Material ',null,'CAT-UC-05','Arrojar el material en lugar de llevarlo o pasarlo genera tropiezo o incidente',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Comportamiento Inapropiado ',null,'CAT-UC-06','Comportamiento inapropiado en el trabajo, como ser molestar correr, jugar,etc',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Usar Herramientas Inapropiadas',null,'CAT-UC-07','Usar las manos en lugar de herramientas',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Adoptar posiciones peligrosas ',null,'CAT-UC-08','Adoptar posiciones peligrosas para levantar, sostener, mover, etc.',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Colocar Materiales en forma Insegura',null,'CAT-UC-09','Colocar en forma insegura materiales, herramientas, desperdicios, etc.',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Falta de atención ',null,'CAT-UC-10','Falta de atención a la base de sustentación o sus alrededores, sce',0);	
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('Sin acto inseguro',null,'CAT-UC-11','Sin acto inseguro',0);
INSERT INTO cataloguc(cataloucname,updated_on,cataloguccode,catalogucdescription,deleted)
    VALUES('No especificado',null,'CAT-UC-12','No especificado',0);
PRINT 'Catalog Insecure Act table done...';	

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Accident
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the  Accident table....';

INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-01','Resbalon de Andamio con Fractura Expuesta ',50,'Centro Medico Cochabamba','Area de Construccion','Acc','Alberto Quiroga Rojas','Joaquin Rivas Soto',0,1,2,3,4,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-02','Caida de una Herramienta desde el 4 piso en el hombro',10,'Centro Medico Los Angeles','Edificio Buenas Nuevas','Acc','Donato Cespedez Quiroga ','Carlos Bustamante Goytia',0,2,3,3,4,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-03','Tropieso Con Maquinaria para Mesclar cemento y golpe en la cabeza',8,'Centro Medico Viedma','Edificio Los Angeles Av. Juan Pablo II','Acc','Alberto Cespedez Quiroga ','Juana Vargas Goytia',0,2,4,2,5,4);	
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-04','Choque Frontal Montacarga y Maquinaria para Mesclar ',2,'Centro Medico Viedma','Edificio Los Angeles Av. Juan Pablo II','Acc','Alberto Cespedez Quiroga ','Orlando Ledezma Vargas',0,1,4,2,3,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-05','Choque Frontal Montacarga y Maquinaria para Mesclar ',8,'Centro Medico Viedma','Edificio Los Angeles Av. Juan Pablo II','Acc','Alberto Cespedez Quiroga ','Orlando Ledezma Vargas',0,2,4,2,3,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-06','Choque Frontal Montacarga y Maquinaria para Mesclar ',10,'Centro Medico Viedma','Edificio Los Angeles Av. Juan Pablo II','Acc','Alberto Cespedez Quiroga ','Orlando Ledezma Vargas',0,1,5,6,3,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-07','Resbalon desde el piso 2 con Fractura Expuesta  ',50,'Centro Medico Los Angeles','Edificio Torre 2 Av. Juan 23','Acc','Roberto Quiroga Rojas ','Maria Rojas Diaz',0,7,6,8,1,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-08','Caida Herramienta de trabajo en el pie del empleado',7,'Centro Medico Viedma','Edificio Rey Carlos II Av. Blanco Galindo Km 2','Acc','Donato Cespedez Quiroga ',' Maria Ledezma Vargas',0,1,9,10,3,10);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-09','Caida por Tropiezo en Fierro Mal acomodado ',9,'Centro Medico Viedma','Edificio Rey Carlos II Av. Blanco Galindo Km 2','Acc','Donato Cespedez Quiroga ',' Roberto Alcon Quiroz',0,12,5,12,4,5);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-10','Caida Al llevar Carretilla con golpe en el hombro con lesion',10,'Caja Nacional de Salud','Av. Blanco Galindo Km. 5','Acc','Ramiro Guerrero Paz','Humberto Quiroga',0,5,6,4,5,8);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-11','Choque de Montacarga con un soporte de andamio con caida de empleado',7,'Centro Medico Viedma','Edificio Rey Carlos II Av. Blanco Galindo Km 2','Acc','Mario Cespedez Quiroga ',' Pilar Sanchez Vargas',0,3,8,6,9,6);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-12','Caida por Tropiezo en Tablon Descubierto',9,'Centro Medico Maria de los Angeles','Edificio Juan Pablo II Av. Blanco Galindo Km 5','Acc','Marcos Quiroga Vargas','Raul Carballo Ariaz',0,4,7,11,12,12);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-13','Tropezon con la rueda de la excavadora con golpe en la prente',5,'Caja Nacional de Salud','Av. Blanco Galindo Km. 7','Acc','Marcos Quiroga Vargas','Humberto Quiroga',0,2,4,5,6,11);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-14','Caida del piso 2 del edificio en construccion con rotura de extremidades inferiores',70,'Centro Medico Viedma','Edificio Banco los Andes Av. Blanco Galindo Km 2','Acc','Mario Cespedez Quiroga ','Carla Sanches Vargas',0,1,5,10,9,8);
INSERT INTO accident(updated_on,accident_code,accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,accident_supervisor,accident_witness,deleted,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id )
    VALUES(null,'ACC-15','Desplome de andamio de construccion',9,'Centro Medico aranjuez','Edificio Gabriel 2 av. Papa Paulo','Acc','Rolando Vargas Candia','Marcelo Arnez Ariaz',0,1,5,7,8,10);

PRINT 'Accident table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Accident
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------                    -------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Insert data into the  Accident Registry table....';	
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,1,1,'2015-01-15','09:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,2,5,'2015-02-28','10:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,3,6,'2015-03-21','14:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,4,9,'2016-03-10','08:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,5,10,'2016-06-18','17:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,6,14,'2016-09-21','10:35')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,7,15,'2016-10-28','11:25')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,8,21,'2016-11-30','12:15')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,9,22,'2017-01-24','08:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,10,24,'2017-01-25','14:05')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,11,26,'2017-05-17','16:45')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,12,31,'2017-09-19','08:50')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,13,36,'2017-10-13','10:55')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,14,41,'2018-02-10','11:25')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,15,45,'2018-04-11','12:05')
INSERT INTO accident_registry(updated_on,accident_id,employee_id,accident_registry_date,accident_registry_hour)
			Values(null,15,49,'2018-05-22','13:15')
			
PRINT 'Accident Registry table done...';
/******************************************************************************
**  Name: Inicializacion de datos de la tabla Category
**  Desc: Se tiene inicialmente 2 datos para la tabla Category
** 
**  Author: Noemi Luna Huanca
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Noemi Luna Huanca   Initial version
*******************************************************************************/
PRINT 'Insertando datos dentro la tabla Category...';
INSERT INTO [dbo].[category] (code, name)
VALUES ('CAT-1', 'RESOURCES CONSTRUCTION');
INSERT INTO [dbo].[category] (code, name)
VALUES ('CAT-2', 'EPP');
PRINT 'Tabla Category hecho...';

/******************************************************************************
**  Name: Inicializacion de datos de la tabla Subcategory
**  Desc: Se tiene inicialmente 11 datos para la tabla Subcategory
** 
**  Author: Noemi Luna Huanca
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Noemi Luna Huanca   Initial version
*******************************************************************************/
PRINT 'Insertando datos dentro la tabla Subcategory...';
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-1', 'Herramientas de mano', 1);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-2', 'Cemento y Complementos', 1);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-3', 'Tabiqueria', 1);

INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-4', 'Respiradores desechables', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-5', 'Proteccion Auditiva', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-6', 'Proteccion Ocular', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-7', 'Respiradores Reusables', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-8', 'Proteccion para cabeza y cara', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-9', 'Prendas de Proteccion', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-10', 'Proteccion para pies y piernas', 2);
INSERT INTO [dbo].[sub_category](code, name, category_id)
VALUES ('SUB-11', 'Proteccion para manos', 2);
PRINT 'Tabla Subcategory hecho...';

/******************************************************************************
**  Name: Inicializacion de datos de la tabla Item
**  Desc: Se tiene inicialmente 30 datos para la tabla Item
** 
**  Author: Noemi Luna Huanca
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Noemi Luna Huanca   Initial version
*******************************************************************************/
PRINT 'Insertando datos dentro la tabla Item...';
INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-1', 'Llana metalica con forma triangular y puntas redondeadas', 'ITM-1', 'Bailejo', 
 '35', 'nuevo', 1);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-2', 'Barra de hierro con un lado en punta y el otro plano', 'ITM-2', 'Barra', 
 '500', 'usado', 1);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-3', 'Alicate Pro de punta larga 8 STANLEY Modelo: 84-625 ', 'ITM-3', 'Alicate', 
 '56', 'nuevo', 1);
 
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-4', 'Cadena Eslabonada zincada 10 mm Mamut', 'ITM-4', 'Cadenas de Eslabon', '30',
 'nuevo', 2);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-5', 'Bolsa de cemento SOBOCE Viacha 50 Kg', 'ITM-5', 'Cemento', '58', 'nuevo', 2);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-6', 'Concreto Facil Topex, ideal para pisos, columnas, techos, veredas 40 Kg Lima Peru', 'ITM-5', 'Mezclas Predosificadas', 
 '83', 'nuevo', 2);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-7', 'Plancha Fibrocemento 1.22 m x 2.44 m x 6 mm', 'ITM-6', 'Planchas de Fibrocemento',  
 '40', 'nuevo', 3);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-8', 'Arcansas angulo aluminio barnizado blanco 880Q', 'ITM-7', 'Arcansas', '126', 
 'nuevo', 3);
 
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-9', 'Respiradero desechable para el polvo con tecnologia avanzada', 'ITM-8', 'Respiradero de Uso General', 
 '88', 'nuevo', 4);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-10', 'Respiraderos para particulas 3M 8247 R95', 'ITM-9', 'Respiradero para aliviar malos olores', 
 '85', 'nuevo', 4);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-11', 'Orejeras Estandar con atenuacion acustica de 15 dB, amortizable en 10 usos', 'ITM-10', 'Orejeras', 
 '68', 'nuevo', 5);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-12', 'Tapones protectores reutilizables con cordel', 'ITM-11', 'Tapones Auditivos Premoldeados', 
 '9', 'nuevo', 5);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-13', 'Tapon protector auditivo 3m 1100 sin cordon', 'ITM-12', 'Tapon Protector de Espuma', 
 '11', 'nuevo', 5);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-14', 'Lentes de Seguridad 3m Cristal de policarbonato', 'ITM-13', 'Lentes de Seguridad', 
 '690', 'nuevo', 6);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-15', 'Respiradero de cara completa serie 6000 marca 3m', 'ITM-14', 'Respiradero de Cara Completa', 
 '590', 'nuevo', 7);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-16', 'Respiradero Facial de media cara 3m', 'ITM-15', 'Respiradero de Media Cara', 
 '115', 'nuevo', 7);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-17', 'Filtro cartucho multi gas acido/vapor organico 3M', 'ITM-16', 'Filtro', '7',
 'nuevo', 7);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-18', 'Careta de Policarbonato transparente esmerilar calibre 0.9', 'ITM-17', 'Careta de Policarbonato', 
 '350', 'nuevo', 8);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-19', 'Casco de Seguridad de proteccion MSA', 'ITM-18', 'Casco de Seguridad', '65',
 'nuevo', 8);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-20', 'Chaleco de trabajo Panostyle Gris Delta Plus', 'ITM-19', 'Chaleco de Trabajo', 
 '350', 'nuevo', 9);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-21', 'Chaqueta de trabajo Mach2 Azul', 'ITM-20', 'Chaqueta', '420', 'nuevo', 9);
  INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-22', 'Pantalon de Trabajo Panostyle Gris Delta Plus', 'ITM-21', 'Pantalon', '420',
 'nuevo', 9);
  INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-23', 'Arnez de 3 argollas Chilesin', 'arnes.jpg', 'Arnes de 3 argollas', '164', 'nuevo',
 9);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-24', 'Faja Lumbar con suspension Redline', 'faja.jpg', 'Faja Lumbar', '30', 'nuevo', 9);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-25', 'Mandil contra sustancias quimicas y acidos', 'ITM-24', 'Mandil', '450', 'nuevo',
 9);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-26', 'Overol Industrial moderno para todo rubro', 'ITM-25', 'Overol', '343', 'nuevo',
 9);

  INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-27', 'Rodillera poliester Redline', 'ITM-26', 'Rodillera', '30', 'nuevo', 10);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-28', 'Calzado bota de seguridad Milan Redline', 'ITM-27', 'Calzado', '350', 'nuevo',
 10);

 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-29', 'Guantes de tela con puntos PVC para construccion', 'ITM-28', 'Guantes', '48',
 'nuevo', 11);
 INSERT INTO [dbo].[item](code, description, label, name, price, state, sub_category_id)
VALUES ('ITM-30', 'Guantes de cuero cromo con palma reforzada', 'ITM-29', 'Guantes Cuero', 
 '42', 'nuevo', 11);
 PRINT 'Tabla Item hecho...';
 
 /******************************************************************************
**  Name: Inicializacion de datos de la tabla ItemAsignation
**  Desc: Se tiene inicialmente 40 datos para la tabla ItemAsignation
** 
**  Author: Noemi Luna Huanca
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Noemi Luna Huanca   Initial version
*******************************************************************************/
 PRINT 'Insertando datos dentro la tabla ItemAsignation...';
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Chaleco multiuso de seguridad', 1, '2018-04-03 10:39:26:400', '2018-04-01 10:30:20:500', 20, 'usado', 1, 20);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero blanco para polvo', 2, '2018-12-02 11:20:20:500', '2018-04-02 09:30:20:300', 9, 'usado', 2, 9);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Orejeras para ruidos fuertes', 3, '2018-07-12 08:45:20:400', '2018-05-03 09:37:20:500', 11, 'usado', 3, 11);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Lentes de seguridad transparentes', 4, '2018-04-04 11:50:40:400', '2018-03-04 10:07:00:400', 14, 'usado', 4, 14);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Casco de seguridad color azul', 5, '2018-11-05 08:10:50:100', '2018-10-05 08:38:28:200', 19, 'usado', 5, 19);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Pantalon de seguridad', 6, '2018-02-06 12:10:50:100', '2018-02-06 09:38:25:150', 22, 'usado', 6, 22);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Arnes de seguridad', 7, '2018-06-06 08:10:50:100', '2018-05-06 08:38:28:200', 23,  'usado', 7, 23);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Faja para trabajos pesados', 8, '2018-08-06 08:50:10:100', '2018-07-06 08:28:38:200', 24, 'usado', 8, 24);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Mandil para trabajo con sustancias oxidables', 9, '2018-10-06 09:11:30:100', '2018-09-06 09:30:28:200', 25, 'usado', 9, 25);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Overol para trabajo de pozos', 10, '2018-11-06 11:11:10:100', '2018-10-06 10:20:29:200', 26, 'usado', 10, 26);

 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Rodillera para trabajo de pisos', 11, '2018-12-06 09:02:03:200', '2018-11-06 08:01:02:100', 27, 'usado', 11, 27);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Calzado de seguridad para trabajo', 12, '2018-02-06 11:04:05:400', '2018-01-06 10:03:04:300', 28, 'usado', 12, 28);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero para olores daninos', 13, '2018-04-06 08:06:07:600', '2018-03-06 12:05:06:500', 10, 'usado', 13, 10);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero blanco para polvo', 14, '2018-06-06 10:08:09:800', '2018-05-06 09:07:08:700', 9, 'usado', 14, 9);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Orejeras para ruidos fuertes', 15, '2018-08-06 12:10:11:100', '2018-07-06 11:09:10:900', 11, 'usado', 15, 11);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Tapones auditivos para ruidos leves', 16, '2018-10-06 09:12:13:300', '2018-09-06 08:11:12:200', 12, 'usado', 16, 12);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Tapon auditivo protector de espuma', 17, '2018-12-06 11:14:15:500', '2018-11-06 10:13:14:400', 13, 'usado', 17, 13);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Lentes de seguridad transparentes', 18, '2018-02-06 08:16:17:700', '2018-01-06 12:15:16:600', 14, 'usado', 18, 14);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero de cara completa', 19, '2018-04-06 10:18:19:900', '2018-03-06 09:17:18:800', 15, 'usado', 19, 15);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero media cara', 20, '2018-06-06 12:20:21:200', '2018-05-06 11:19:20:100', 16, 'usado', 20, 16);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Filtro para respiracion', 21, '2018-08-06 09:22:23:400', '2018-07-06 08:21:22:300', 17, 'usado', 21, 17);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Careta de policarbonato para trabajo de seguridad', 22, '2018-10-06 11:24:25:600', '2018-09-06 10:23:24:500', 18, 'usado', 22, 18);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Casco de seguridad color azul', 23, '2018-12-06 08:26:27:800', '2018-11-06 12:25:26:700', 19, 'usado', 23, 19);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Chaleco multiuso de seguridad', 24, '2018-06-06 10:28:29:100', '2018-05-06 09:27:28:900', 20, 'usado', 24, 20);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Chaqueta de trabajo color azul', 25, '2018-07-06 12:30:31:300', '2018-06-06 11:29:30:200', 21, 'usado', 25, 21);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Pantalon de seguridad', 26, '2018-08-06 09:32:33:500', '2018-07-06 08:31:32:400', 22, 'usado', 26, 22);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Arnes de seguridad', 27,  '2018-09-06 11:34:35:700', '2018-08-06 10:33:34:600', 23, 'usado', 27, 23);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Faja para trabajos pesados', 28, '2018-12-06 08:36:37:900', '2018-11-06 12:35:36:800', 24, 'usado', 28, 24);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Mandil para trabajo con sustancias oxidables', 29, '2018-12-06 10:38:39:200', '2018-11-06 09:37:38:100', 25, 'usado', 29, 
 25);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Overol para trabajo de pozos', 30, '2018-01-06 12:40:41:400', '2018-12-06 11:39:40:300', 26, 'usado', 30, 
 26);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Rodillera para trabajo de pisos', 31, '2018-03-06 09:11:43:600','2018-02-06 08:41:42:500', 27, 'usado', 31,  
 27);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Calzado de seguridad para trabajo', 32, '2018-05-06 11:44:45:800', '2018-04-06 10:43:44:700', 28, 'usado', 32, 
28);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Guantes de cuero para uso con fierros', 33, '2018-07-06 08:46:47:100', '2018-06-06 12:45:46:900', 30, 'usado', 33, 
30);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Guantes de seguridad con pvc', 34, '2018-09-06 10:48:49:300', '2018-08-06 09:47:48:200', 29, 'usado', 34, 
  29);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Overol para trabajo de pozos', 35, '2018-11-06 12:50:51:500', '2018-10-06 11:49:50:400', 26, 'usado', 35, 
  26);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero blanco para polvo', 36, '2018-01-06 09:52:53:700', '2018-12-06 08:51:52:600', 9, 'usado', 36, 
  9);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Chaleco multiuso de seguridad', 37, '2018-03-06 11:54:55:900', '2018-02-06 10:53:54:800', 20, 'usado', 37, 
  20);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Respiradero blanco para polvo', 38, '2018-05-06 08:56:57:200', '2018-04-06 12:55:56:100', 9, 'usado', 38, 
  9);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Orejeras para ruidos fuertes', 39, '2018-07-06 10:58:59:400', '2018-06-06 09:57:58:300', 11, 'usado', 39, 
  11);
 INSERT INTO [dbo].[item_asignation](description, emp_id, end_dateia, init_dateia, it_id, state_actual_item,
  employee_id, item_id)
VALUES ('Lentes de seguridad transparentes', 40, '2018-09-06 12:01:02:600', '2018-08-06 11:59:01:500', 14, 'usado', 40, 
  14);
 PRINT 'Tabla ItemAsignation hecho...';
 /******************************************************************************
**  Name: Machinery_Catalog
**  Desc: Insert data into the Machinery_Catalog
**  
**
**  Author: Jorge beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge beltran						 Initial version
*******************************************************************************/


PRINT 'Insert data into the Machinery_Catalog table...';

INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Movimientos de Tierra','son los equipos de exacavacion y movimiento de tierra',' desarrollaron a partir de una maquina mecanica');
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Tecnologia para Hormigon','El hormigon es un material de construccion','(piedra artificial)producida de cemento');
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Compactacion','Es una herramienta poderosa por un motor de combustion',' se aplica tremenda fuerza en la superficie del suelo');
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Demolicion','Cuando hacemos un demolicion por el motivo que sea elegimos maquinarias en especifico','derribo es lo contrario de construcción: la destrucción de edificios y otras estructuras');
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Bombas','Es una herramienta de ayuda al momento trabajar en un proyecto cuando se necesita agua','características generales de las bombas centrífugas')
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Iluminacion','Es una herramienta que ayuda a iluminar cuando un lugar oscuro se encuentra','Se dice que el modo clásico de iluminar un ambiente es combinar iluminación general y puntual')
INSERT INTO [dbo].[machinery_catalog](name,description,characteristics)
		VALUES ('Accesorios','son equipos que sirven como accesorio para los equipos y para que esto puedan desenpe?ar otras funciones','son equipos que se anade a un accesorio de una maquina');
PRINT 'Machinery_Catalog table done...';

/******************************************************************************
**  Name: Machinery
**  Desc: Insert data into the Machinery
**  
**
**  Author: Jorge beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge beltran						 Initial version
*******************************************************************************/



PRINT 'Insert data into the Machinery table...';

INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Excavadora','jhon deere 4045H','2016-05-15','25000',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Cargadores Frontales','jhon deere D120','2016-04-20','23000',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Retroexcavadora','jhon deere 310L','2016-07-21','24300',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Minicargadores','jhon deere 321GR','2016-09-18','24500',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Cisternas','mercedez benz 1725','2016-10-21','23600',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Manipuladores Telescopicos','Wacker Neuson TH408','2016-11-09','22600',1);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Vibradores Internos','Wacker Neuson HMS  ','2016-11-17','100',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Vibradores Externos','Wacker Neuson PEV  ','2016-11-20','100',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Convertidores de Frecuencia Portatiles','Wacker Neuson ','2017-02-10','1300',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Fratasadoras','Wacker Neuson CT ','2017-03-21','23000',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Reglas Vibratorias','Wacker Neuson P 35A  ','2017-04-15','800',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Authormigoneras','carmix3.5TT','2017-04-21','500',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Aisladore','wacker neuson ','2017-05-15','700',2);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Apisonadores Vobratorios','Wacker Neuson','2017-11-22','400',3);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Planchas Vibratorias reversibles','Wacker Neuson WPU 1550','2017-12-14','23600',3);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Compactadoras Monocilindricas de Suelos','Wacker Neuson RC70','2017-12-21','23500',3);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Rodillos tandem' ,'Wacker Neuson RD45','2018-01-22','27500',3);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Martillos Demoledores' ,'Wacker Neuson BH55','2018-03-18','800',4);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Herramientas para Martillos' ,'Wacker Neuson','2018-03-21','90',4);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Bombas para Aguas Sucias Autocebantes' ,'Wacker Neuson PT2','2018-04-22','600',5);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Bombas de Diafragma' ,'Wacker Neuson PT2','2018-05-07','650',5);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Bombas de Desague' ,'Wacker Neuson ','2018-05-10','2750',5);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Globos de Iluminacion' ,'Wacker Neuson LB80M ','2018-06-12','170',6);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Torres de Iluminacion' ,'Wacker Neuson LTN6LV ','2018-07-11','250',6);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Martillo Hidraulico','NPK','2018-07-15','640',7);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Compactadora Hidraulica','NPK','2018-08-20','400',7);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Brazo Excavadora','cartepillar','2018-11-16','650',7);
INSERT INTO[dbo].[machinery] (name,brand,Date_buy,Price,machinery_catalog_id)
		VALUES ('Martillo Hidraulico','cartepillar','2018-11-20','600',7);

PRINT 'Machinery table done...';

/******************************************************************************
**  Name: Maintenance
**  Desc: Insert data into the Maintenance
**  
**
**  Author: Jorge beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge beltran						 Initial version
*******************************************************************************/

PRINT 'Insert data into the Maintenance table...';

INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('se rompio la correa por que estaba desgastado', 'las empaquetaduras de de motor hay que cambiar','150','2017-04-08','2017-04-10',1);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el acite hidraulico aumentar', 'verficar el filtro de acite  petrolio','110','2017-05-08','2017-05-10',2);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('tenia fuga de agua', 'hacer un mantemiento a la disco de embriague','120','2017-07-08','2017-07-10',3);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio se hace cada 10 meses el cambio', 'revisar la correa esta floja','145','2017-09-08','2017-09-10',4);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro ya no sirve del motor', 'revisar el sistema de electrico','130','2017-10-12','2017-10-13',5);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('cambiar el filtro de caja', 'ajustar la correa','150','2017-11-08','2017-11-10',6);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('hacer una limpieza del filtro de aire', 'revision del aceite hidraulico','120','2018-04-08','2018-04-08',7);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('cambiar la bomba hidraulico', 'cambiar el disco de la caja','112','2018-05-12','2018-05-14',1);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el disco de la caja reparar ', 'las empaquetaduras de de motor hay que cambiar','121','2018-09-08','2018-09-10',2);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('las empaquetaduras estan desgastada', 'revisar el sistema electrico','130','2018-11-15','2018-11-18',3);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('la correa esta floja', 'reparar la disco de la caja','110','2018-11-19','2018-11-20',4);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio ya no sirve', 'revisar las pastias frenos','142','2018-12-01','2018-12-04',8);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('los amortiguadores estan desgasto', 'revisar las pastias frenos','120','2018-12-16','2018-12-19',1);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('la bomba de agua no sirve', 'revisar los munones','111','2018-12-17','2018-12-19',2);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el disco de caja esta desgastado', 'revisar el sistema electrico','122','2018-12-18','2018-12-20',4);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('la bomba hidrauilica ya no sirve', 'revisar el filtro aire','130','2018-12-20','2018-12-21',5);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('ajustar la correa ', 'revisar el filtro de petrolio','129','2018-12-19','2018-12-21',7);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio ya no sirve', 'revisar el filtro de aire','140','2018-12-21','2018-12-21',6);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio ya no sirve', 'mantemiento de pastias','142','2018-12-21','2018-12-21',7);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('mantemineto del filtro de aire', 'revisar el filtro de aire','140','2018-12-21','2018-12-21',9);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio ya no sirve', 'revisar el filtro de aira','140','2018-12-21','2018-12-21',6);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('las empaquetadura estan desgastada', 'revisar sistema electrico','138','2018-12-21','2018-12-21',8);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro de petrolio ya no sirve', 'revisar correa','130','2018-12-21','2018-12-21',4);
INSERT INTO[dbo].[maintenance] (description,observation,price,timelineinitdate,timelineenddate,machinery_id)
		VALUES ('el filtro hidraulico ya no sirve', 'revisar el filtro de aire','140','2018-12-21','2018-12-21',5);

PRINT 'Maintenance table done...';



/******************************************************************************
**  Name: Machinery_Assignation
**  Desc: Insert data into the Machinery_Assignation
**  
**
**  Author: Jorge beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge beltran						 Initial version
*******************************************************************************/


PRINT 'Insert data into the Machinery_Assignation table...';
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (1,2,'2017-02-09','2017-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (2,3,'2017-05-09','2017-05-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (3,5,'2017-06-09','2017-06-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id,asignation_init_date , asingation_end_date)
		VALUES (4,6,'2017-07-19','2017-07-19');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (5,7,'2017-08-16','2017-08-16');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (6,8,'2017-09-09','2017-09-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (7,12,'2017-10-09','2017-10-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (8,15,'2017-11-07','2017-11-08');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (9,16,'2017-12-13','2017-12-13');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (10,17,'2018-02-09','2018-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (11,2,'2017-02-09','2017-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (12,1,'2017-05-09','2017-05-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (13,4,'2017-06-09','2017-06-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (14,13,'2017-07-19','2017-07-19');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (15,14,'2017-08-16','2017-08-16');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (16,15,'2017-09-09','2017-09-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (17,18,'2017-10-09','2017-10-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (18,19,'2017-11-07','2017-11-08');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (19,13,'2017-12-13','2017-12-13');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (20,17,'2018-02-09','2018-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (21,20,'2017-02-09','2017-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (22,23,'2017-05-09','2017-05-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (23,25,'2017-06-09','2017-06-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (24,26,'2017-07-19','2017-07-19');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (25,27,'2017-08-16','2017-08-16');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id,asignation_init_date , asingation_end_date)
		VALUES (26,8,'2017-09-09','2017-09-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (27,12,'2017-10-09','2017-10-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (28,15,'2017-11-07','2017-11-08');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (29,16,'2017-12-13','2017-12-13');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (30,17,'2018-02-09','2018-02-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (31,11,'2018-03-09','2018-03-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (32,3,'2018-04-09','2018-04-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (33,5,'2018-05-09','2018-05-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (34,6,'2018-07-19','2018-07-19');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (35,7,'2018-08-16','2018-08-16');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (36,8,'2018-09-09','2018-09-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (37,12,'2018-10-09','2018-10-09');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (38,15,'2018-11-07','2018-11-08');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (39,16,'2018-12-13','2018-12-13');
INSERT INTO [dbo].[Machinery_Assignation](Employee_id,Machinery_id, asignation_init_date , asingation_end_date)
		VALUES (40,17,'2018-12-19','2018-12-19');
PRINT 'Machinery_Assignation table done...';

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Position
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Insert data into the Position  table....';

insert into Position(name, position_type, Position_Description, Position_Code)
values('Boss', 'ADM', 'the position for BOSS', 'BSS')
insert into Position(name, position_type, Position_Description, Position_Code)
values('Secretary', 'ADM', 'the position for Secretary', 'SEC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('admin chief', 'ADM', 'the position for admin chief', 'AC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('secretary chief', 'ADM', 'the position for secretary chief', 'SC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('worker', 'WORK', 'the position for worker', 'WORK')
insert into Position(name, position_type, Position_Description, Position_Code)
values('Message guy', 'ADM', 'the position for messaging', 'MESG')
insert into Position(name, position_type, Position_Description, Position_Code)
values('designed Worker', 'WORK', 'the position for designed worker', 'DW')
insert into Position(name, position_type, Position_Description, Position_Code)
values('chef', 'kitchen', 'the position for chef', 'CH')
insert into Position(name, position_type, Position_Description, Position_Code)
values('worker jr', 'WORK', 'the position for workers', 'WJ')
insert into Position(name, position_type, Position_Description, Position_Code)
values('worker chief', 'WORK', 'the position for BOSS', 'WC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('security firm', 'ADM', 'the position for security', 'SC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('mechanic', 'WORK', 'the position for mechanic', 'MEC')
insert into Position(name, position_type, Position_Description, Position_Code)
values('driver guy', 'WORK', 'the position for messaging', 'DRI')
insert into Position(name, position_type, Position_Description, Position_Code)
values('ingeneering chief', 'INGENEERING', 'the position for Ingeneering', 'ING')
insert into Position(name, position_type, Position_Description, Position_Code)
values('accounting chief', 'ACCOUTING', 'the position for accouting', 'ACC')
print('positions Inserted correctly');

/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Functional Manual
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Insert data into the Functional Manual  table....';

insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(1,'BOSS Functional Manual', 'ADM', 'BOSS should use this functional manual',
		GETDATE(),'/bossFunctionalManual','ADMINISTRATIVE','BOSS')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(2,'Position Functional Manual Generic', 'ADM',  'all employee should use this functional manual',
		GETDATE(),'/genericFunctionalManual','ADMINISTRATIVE','Administrative Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(3,'Secretary Functional Manual', 'ADM', 'all secretary should use this functional manual',
		GETDATE(),'/secretarycFunctionalManual','ADMINISTRATIVE','secreatary Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(4,'admin chief Functional Manual', 'ADM', 'all adm chief should use this functional manual',
		GETDATE(),'/admChiefFunctionalManual','ADMINISTRATIVE','Administrative Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(5,'secreatary chief Functional Manual', 'ADM', 'all sec chief should use this functional manual',
		GETDATE(),'/secreateryChiefFunctionalManual','ADMINISTRATIVE','Administrative Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(6,'worker Functional Manual', 'WORK', 'all workers should use this functional manual',
		GETDATE(),'/workerFunctionalManual','WORKER','worker Personal')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(7,'Messaging Functional Manual', 'ADM', 'all message guy should use this functional manual',
		GETDATE(),'/messageFunctionalManual','ADMINISTRATIVE','messaging personal')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(8,'designer Functional Manual', 'WORK', 'all designer should use this functional manual',
		GETDATE(),'/designerFunctionalManual','WORK','WORKER Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(9,'Chef Functional Manual', 'KITCHEN', 'all chefs should use this functional manual',
		GETDATE(),'/chefFunctionalManual','KITCHEN','CHEF Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(10,'woeker jr Functional Manual', 'WORK', 'all workers should use this functional manual',
		GETDATE(),'/workerjrFunctionalManual','WORKER','work Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(11,'Worker chief Functional Manual', 'WORK', 'all chiefs should use this functional manual',
		GETDATE(),'/workerChiefFunctionalManual','WORK','WORKER Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(12,'Security Functional Manual', 'ADM', 'all security should use this functional manual',
		GETDATE(),'/secFunctionalManual','ADMINISTRATIVE','Administrative Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(13,'Mechanic Functional Manual', 'WORK', 'all mechanic should use this functional manual',
		GETDATE(),'/mechanicFunctionalManual','WORK','mechanic Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(14,'Driver  Functional Manual', 'WORK', 'all driver should use this functional manual',
		GETDATE(),'/driverFunctionalManual','WORK','WORK Professional')
insert into Funtional_Manual([position_id], name,code, description,
							date, url, organitational_level, 
							education_level)
values(15,'Engineer Functional Manual', 'ENG', 'all Engineering should use this functional manual',
		GETDATE(),'/EngineerFunctionalManual','Engineering','Engineering Professional')

print('Functional Manuals were inserted on the database')


/******************************************************************************
**  Name: Inicializacion de datos del sistema
**  Description: Inicializacion de datos para la tabla Contract
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Insert data into the Contract table....';

insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Generic', 1,1)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for BOSS', 2,2)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for Secretary', 3,3)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chief', 4,4)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract sec chief', 5,5)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker', 6,6)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for message guy', 7,7)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for desginer', 8,8)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chef', 9,9)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker jr', 10,10)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker chief', 11,11)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for security', 12,12)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for mechanic', 13,13)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Engineer', 14,14)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for accounting', 1,15)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Generic', 2,16)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for BOSS', 3,18)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for Secretary', 4,19)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chief', 5,20)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract sec chief', 6,21)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker', 7,22)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for message guy', 8,23)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for desginer', 9,24)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chef', 10,25)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker jr', 11,26)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker chief', 12,27)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for security', 13,28)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for mechanic', 14,29)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Engineer', 15,30)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for accounting', 1,31)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Generic', 2,32)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for BOSS', 3,33)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for Secretary', 4,34)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chief', 5,35)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract sec chief', 6,36)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker', 7,37)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for message guy', 8,38)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for desginer', 9,39)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for chef', 10,40)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker jr', 11,41)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker chief', 12,42)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for security', 13,43)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for mechanic', 14,44)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract Engineer', 15,45)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for accounting', 1,46)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker jr', 2,47)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for worker chief', 3,48)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for security', 4,49)
insert into Contract(contract_description, Position_Id, Employee_Id)
values('Administration Contract for mechanic', 5,50)

print('Contracts were inserted correctly')
PRINT 'Finished Table Migration...';

COMMIT
GO