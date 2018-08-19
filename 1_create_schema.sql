USE ssicode
PRINT 'Start of Script Execution....';
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Employee
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Employee table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Employee')
				AND type in (N'U'))
BEGIN
	CREATE TABLE employee(	id bigint Identity(1,1)		NOT NULL
							,ci bigint					NOT NULL
							,first_name varchar(255)	NOT NULL
							,last_Name varchar(255)		NOT NULL
							,Address varchar(255)		NULL
							,birth_date datetime		NULL
							,gender varchar(255)		NULL
							,phone bigint				NULL
							,Image varbinary(255)		NULL
							,rowversion	TIMESTAMP 		NOT NULL
							,created_on datetime 		not null DEFAULT (getDate())
							,updated_on datetime		null
							,version    bigint    		not null DEFAULT (1)
	,CONSTRAINT PK_Employee PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Employee has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Employee already exist into the database'
	END
GO

/******************************************************************************
**  Name: Creacion del modelo de la tabla Project
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Project table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Project')
				AND type in (N'U'))
BEGIN
	CREATE TABLE project(	id bigint Identity(1,1)		NOT NULL
							,name varchar(255)			NOT NULL
							,location varchar(255)		NOT NULL
							,description varchar(255)	NULL
							,code varchar(255)			NOT NULL DEFAULT('PRJ')
							,init_date datetime		NOT NULL
							,end_date datetime		NULL
							,activate bit				NOT NULL DEFAULT (1)
							,deleted bit				NOT NULL DEFAULT (0)
							,image varbinary(max)		NULL
							,rowversion	TIMESTAMP 		NOT NULL
							,created_on datetime 		not null DEFAULT (getDate())
							,updated_on datetime		null 
							,version    bigint    		not null DEFAULT (1)
	,CONSTRAINT PK_Project PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Project has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Project already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Incident_Catalog
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Incident_Catalog table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Incident_Catalog')
				AND type in (N'U'))
BEGIN
	CREATE TABLE incident_catalog(	id bigint Identity(1,1)		NOT NULL
									,name varchar(255)			NOT NULL
									,description varchar(255)	NULL
									,code varchar(255)			NOT NULL DEFAULT ('INSCAT')
									,deleted bit				NOT NULL DEFAULT (0)
									,rowversion	TIMESTAMP 		NOT NULL
									,created_on datetime 		not null DEFAULT (getDate())
									,updated_on datetime		null
									,version    bigint    		not null DEFAULT (1)		
	,CONSTRAINT PK_Incident_Catalog PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Incident_Catalog has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Incident_Catalog already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Affiction_Catalog
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Affliction_Catalog table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Affliction_Catalog')
				AND type in (N'U'))
BEGIN
	CREATE TABLE affliction_catalog(	id bigint Identity(1,1)		NOT NULL
										,name varchar(255)			NOT NULL
										,description varchar(255)	NULL
										,code varchar(255)			NOT NULL DEFAULT ('AFFCAT')
										,deleted bit				NOT NULL DEFAULT (0)
										,rowversion	TIMESTAMP 		NOT NULL
										,created_on datetime 		not null DEFAULT (getDate())
										,updated_on datetime		null
										,version    bigint    		not null DEFAULT (1)			
	,CONSTRAINT PK_Affliction_Catalog PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Affliction_Catalog has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Affliction_Catalog already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Incident
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Incident table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Incident')
				AND type in (N'U'))
BEGIN
	CREATE TABLE incident(	id bigint Identity(1,1) 		NOT NULL
							,description varchar(255)		NULL
							,code varchar(255)				NOT NULL DEFAULT ('INC')
							,deleted bit					NOT NULL DEFAULT (0)
							,observations varchar(255)  	NULL
							,place varchar(255)				NULL
							,registration_date datetime		NOT NULL
							,witness varchar(255)			NULL
							,employee_id bigint				NULL
							,image varbinary(max)			null
							,incident_catalog_id bigint		NULL
							,rowversion	TIMESTAMP 			NOT NULL
							,created_on datetime 			not null DEFAULT (getDate())
							,updated_on datetime			null
							,version    bigint    			not null DEFAULT (1)	
	,CONSTRAINT PK_Incident PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Incident has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Incident already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Affliction
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Affliction table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Affliction')
				AND type in (N'U'))
BEGIN
	CREATE TABLE affliction(id bigint Identity(1,1)			NOT NULL
							,name varchar(255)				NOT NULL
							,description varchar(255)		NULL
							,code varchar(255)				NOT NULL DEFAULT ('AFF')
							,deleted bit					NOT NULL DEFAULT (0)
							,observation varchar(255)  		NULL
							,registration_date datetime		NOT NULL
							,employee_id bigint				NULL
							,affliction_catalog_id bigint	NULL
							,rowversion	TIMESTAMP 			NOT NULL
							,created_on datetime 			not null DEFAULT (getDate())
							,updated_on datetime			null
							,version    bigint    			not null DEFAULT (1)
	,CONSTRAINT PK_Affliction PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Affliction has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Affliction already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Asignation_Project
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
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
PRINT 'Creating the Asignation_Project table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Asignation_Project')
				AND type in (N'U'))
BEGIN
	CREATE TABLE asignation_project( id bigint Identity(1,1)			NOT NULL
									,employee_id bigint					NOT NULL
									,project_id bigint					NOT NULL
									,asignation_init_date datetime		NOT NULL
									,asingation_end_date datetime		NULL			
									,deleted bit						NOT NULL DEFAULT (0)
									,rowversion timestamp				NOT NULL 
									,created_on datetime 				not null DEFAULT (getDate())
									,updated_on datetime				null
									,version    bigint    				not null DEFAULT (1)
	,CONSTRAINT PK_EmployeeProject PRIMARY KEY(Id ASC)
	);
	PRINT 'Table Asignation_Project has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Asignation_Project already exist into the database'
	END
GO

/******************************************************************************
**  Name: Creacion del modelo de la tabla Catalog Injury Factor 
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Creating the Catalog Injury Factor table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[CatalogFi]') 
		       AND type in (N'U'))
BEGIN
	create table catalogfi
	(
		id                					bigint identity(1,1) 	not null
		,created_on 						datetime				not null DEFAULT (getDate())
		,updated_on 						datetime				
		,version    						bigint    				not null DEFAULT (1)
		,catalogficode        	     		varchar(255)
		,catalogfidescription        		varchar(255) 
		,catalogfiname       				varchar(255)             
		,deleted              				bit						not null DEFAULT (0)         			
		,rowversion			 				TIMESTAMP 				NOT NULL
		
		constraint Pk_CatalogFi Primary Key (id)
	)
 	PRINT 'Table Catalog Injury Factor created!';
END
ELSE
	BEGIN
		PRINT 'Table Catalog Injury Factor already exist into the database'
	END
GO


/******************************************************************************
**  Name: Creacion del modelo de la tabla Catalog Nature of Injury
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Creating the Catalog Nature of Injury table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[CatalogNi]') 
		       AND type in (N'U'))
BEGIN
	create table catalogni
	(
		id                					bigint identity(1,1) 	not null
		,created_on 						datetime				not null DEFAULT (getDate())
		,updated_on 						datetime				
		,version    						bigint    				not null DEFAULT (1)
		,catalognicode        	     		varchar(255) 
		,catalognidescription              	varchar(255) 
		,catalogniname       				varchar(255)
		,deleted              				bit          			null DEFAULT (0)
		,rowversion			 				TIMESTAMP 				NOT NULL
		,constraint Pk_CatalogNi Primary Key (id)			
	)
 	PRINT 'Table Catalog Nature of Injury created!';
END
ELSE
	BEGIN
		PRINT 'Table Catalog INature of Injury already exist into the database'
	END
GO

/******************************************************************************
**  Name: Creacion del modelo de la tabla Catalog Type of Disability
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/

PRINT 'Creating the Catalog Type of Disability table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[CatalogTd]') 
		       AND type in (N'U'))
BEGIN
	create table catalogtd
	(
		id                					bigint identity(1,1) 	not null
		,created_on 						datetime 				not null DEFAULT (getDate())
		,updated_on 						datetime				
		,version    						bigint    				not null DEFAULT (1)
		,catalogtdcode        	     		varchar(255) 
		,catalogtddescription              	varchar(255) 
		,catalotdname       				varchar(255)
		,deleted              				bit          			null DEFAULT (0)
		,rowversion			 				TIMESTAMP 				NOT NULL
		,constraint PK_CatalogTd Primary Key (id)		
	)
 	PRINT 'Table Catalog Type of Disability created!';
END
ELSE
	BEGIN
		PRINT 'Table Catalog Type of Disability already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Catalog Insecure Act
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/

PRINT 'Creating the Catalog Insecure Act table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[CatalogUa]') 
		       AND type in (N'U'))
BEGIN
	create table catalogua
	(
		id                					bigint identity(1,1) 	not null
		,created_on 						datetime 				not null DEFAULT (getDate())
		,updated_on 						datetime				
		,version    						bigint    				not null DEFAULT (1)
		,cataloguacode        	     		varchar(255) 
		,cataloguadescription              	varchar(255) 
		,catalouaname       				varchar(255)
		,deleted              				bit          			null DEFAULT (0)
		,rowversion			 				TIMESTAMP 				NOT NULL
		,constraint PK_CatalogUa Primary Key (id)					
	)
 	PRINT 'Table Catalog Insecure Act created!';
END
ELSE
	BEGIN
		PRINT 'Table Catalog Insecure Act already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Catalog Insecure Condition
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Creating the Catalog Insecure Condition table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[CatalogUc]') 
		       AND type in (N'U'))
BEGIN
	create table cataloguc
	(
		id                					bigint identity(1,1) 	not null
		,created_on 						datetime				not null DEFAULT (getDate())
		,updated_on 						datetime				
		,version    						bigint    				not null DEFAULT (1)
		,cataloguccode        	     		varchar(255) 
		,catalogucdescription              	varchar(255) 
		,cataloucname       				varchar(255)
		,deleted              				bit          			null DEFAULT (0)
		,rowversion			 				TIMESTAMP 				NOT NULL
		constraint Pk_CatalogUc Primary Key (id)			
	)
 	PRINT 'Table Catalog Insecure Condition created!';
END
ELSE
	BEGIN
		PRINT 'Table Catalog Insecure Condition already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Accident
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/
PRINT 'Creating the Accident table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[Accident]') 
		       AND type in (N'U'))
BEGIN
	create table accident
	(
		id                         bigint  Identity(1,1)   not null,
		created_on                 datetime not null DEFAULT (getDate()),
		updated_on                 datetime,
		version                    bigint    not null DEFAULT (1),
		accident_code              varchar(255),
		accident_description       varchar(255),
		accident_disability_day    bigint,
		accident_medical_center    varchar(255),
		accident_place             varchar(255),
		accident_registration_code varchar(255),
		accident_supervisor        varchar(255),
		accident_witness           varchar(255),
		deleted                    bit DEFAULT (0), 
		catalogfi_id               bigint,
		catalogni_id               bigint,
		catalogtd_id               bigint,
		catalogua_id               bigint,
		cataloguc_id               bigint,
		rowversion			 	   TIMESTAMP 		NOT NULL,
		
		constraint Pk_AccidentId Primary Key (id)
)
PRINT 'Table Accident created!';
END
ELSE
	BEGIN
		PRINT 'Table Accident already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla AccidentRegistry
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/

PRINT 'Creating the Accident Registry table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[Accident_registry]') 
		       AND type in (N'U'))
BEGIN
	create table accident_registry
	(
	    id                     bigint  Identity(1,1)  not null,
		created_on             datetime not null DEFAULT (getDate()),
		updated_on             datetime,
		version                bigint    not null DEFAULT (1),
		accident_registry_date datetime,
		accident_registry_hour time,
		deleted                bit DEFAULT (0),
		accident_id            bigint,
		employee_id            bigint,
		rowversion			   TIMESTAMP 		NOT NULL,
		constraint Pk_AccidentRId Primary Key (id)
	)
PRINT 'Table Accident Registry created!';
END
ELSE
	BEGIN
		PRINT 'Table Accident Registry already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion de la tabla Category
**  Desc: La tabla hace referencia a las categorias que tiene la empresa
**	constructora
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
PRINT 'Creacion de la tabla Category....';
IF NOT EXISTS (SELECT * FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Category]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE category(
							id         bigint    Identity(1,1)	not null primary key,
							created_on datetime 	not null DEFAULT (getDate()),
							updated_on datetime,
							version    bigint    	not null DEFAULT (1),
							code       varchar(255),
							name       varchar(255),
							deleted         bit DEFAULT (0),
						  	rowversion	TIMESTAMP 	NOT NULL
						  	);
	PRINT 'Tabla Category creada!';
 END
 ELSE
	BEGIN
		PRINT 'Tabla Category ya existe dentro la base de datos';
	END
GO
/******************************************************************************
**  Name: Creacion de la tabla Subcategory
**  Desc: La tabla hace referencia a las Subcategorias que tiene la empresa
**  y dentro de esta tabla hace referencia a una categoria en especifica
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
PRINT 'Creacion de la tabla Subcategory....';
IF NOT EXISTS (SELECT * FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Sub_category]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE sub_category(id          bigint  Identity(1,1)  not null primary key,
							created_on  datetime not null DEFAULT (getDate()),
							updated_on  datetime,
							version     bigint    not null DEFAULT (1),
							code        varchar(255),
							name        varchar(255),
							category_id bigint,
							deleted         bit DEFAULT (0),
							rowversion			 TIMESTAMP 		NOT NULL
							);
	PRINT 'Tabla Subcategory creada!';
 END
 ELSE
	BEGIN
		PRINT 'Tabla Subcategory ya existe dentro la base de datos';
	END
GO
/******************************************************************************
**  Name: Creacion de la tabla Item
**  Desc: La tabla hace referencia a los Items que tiene la empresa constructora
**  y dentro de esta tabla hace referencia a una Subcategoria en especifica
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
PRINT 'Creacion de la tabla Item....';
IF NOT EXISTS (SELECT * FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Item]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE item(
					id              bigint  Identity(1,1)  not null primary key,
					created_on      datetime not null DEFAULT (getDate()),
					updated_on      datetime,
					version         bigint    not null DEFAULT (1),
					code            varchar(255),
					description     varchar(255),
					image           varbinary(max),
					label           varchar(255),
					name            varchar(255),
					price           varchar(255),
					state           varchar(255),
					deleted         bit DEFAULT (0),
					sub_category_id bigint,
					rowversion			 TIMESTAMP 		NOT NULL
					);
	PRINT 'Tabla Item creada!';
 END
 ELSE
	BEGIN
		PRINT 'Tabla Item ya existe dentro la base de datos';
	END
GO
/******************************************************************************
**  Name: Creacion de la tabla ItemAsignation
**  Desc: La tabla es una clase intermedia entre item y employee, hace referencia
**  a los Items asignados a un empleado en especifico que tiene la empresa y
**  dentro de esta tabla se tiene los ids de item y employee para la relacion
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
PRINT 'Creacion de la tabla ItemAsignation....';
IF NOT EXISTS (SELECT * FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Item_Asignation]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE item_asignation(
								id                bigint  Identity(1,1)  not null primary key,
								created_on        datetime not null DEFAULT (getDate()),
								updated_on        datetime,
								version           bigint    not null DEFAULT (1),
								description       varchar(255),
								emp_id            bigint,
								end_dateia        datetime,
								init_dateia       datetime,
								it_id             bigint,
								state_actual_item varchar(255),
								employee_id       bigint,
								item_id           bigint,
								rowversion			 TIMESTAMP 		NOT NULL
								);
	PRINT 'Tabla ItemAsignation creada!';
 END
 ELSE
	BEGIN
		PRINT 'Tabla ItemAsignation ya existe dentro la base de datos';
	END
GO
PRINT 'creation of  Machinery_Catalog table....'
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Machinery_Catalog')
				AND type in (N'U'))
BEGIN 
/******************************************************************************
**  Name: Machinery_Catalog
**  Desc: Creacion de tabla machinery_catalog
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
CREATE TABLE machinery_catalog(		id              bigint  Identity(1,1)  not null,
									created_on      datetime not null DEFAULT (getDate()),
									updated_on      datetime,
									version         bigint    not null DEFAULT (1),
									characteristics varchar(255),
									cod             varchar(255) DEFAULT('MAC'),
									deleted         bit   not null DEFAULT (0),
									description     varchar(255),
									image           varbinary(255),
									name            varchar(255)
									,rowversion			 TIMESTAMP 		NOT NULL
									,CONSTRAINT PK_Machinery_Catalog PRIMARY KEY(Id  ASC)			
						);
PRINT 'Table Machinery_Catalog created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Machinery_Catalog already exists into the database';
	END
GO

/******************************************************************************
**  Name: Maintenance
**  Desc: Creacion de tabla Maintenance
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
PRINT 'creation of  Maintenance table....'
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Maintenance')
				AND type in (N'U'))
BEGIN 
	CREATE TABLE maintenance(id               bigint Identity(1,1)   not null,
							created_on       datetime not null DEFAULT (getDate()),
							updated_on       datetime,
							version          bigint    not null DEFAULT (1),
							code             varchar(255) DEFAULT('MAT'),
							deleted          bit       not null DEFAULT (0),
							description      varchar(255),
							observation      varchar(255),
							price            float,
							timelineenddate  datetime,
							timelineinitdate datetime,
							machinery_id     bigint    not null
							,rowversion		TIMESTAMP   NOT NULL
							,CONSTRAINT PK_Maintenance PRIMARY KEY(Id ASC)
						);
PRINT 'Table Maintenance created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Maintenance already exists into the database';
	END
GO

/******************************************************************************
**  Name: Machinery
**  Desc: Creacion de tabla Machinery
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

PRINT 'creation of  Machinery table....'
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Machinery')
				AND type in (N'U'))
BEGIN 
	CREATE TABLE machinery(	id                   bigint  Identity(1,1)  not null,
							created_on           datetime not null DEFAULT (getDate()),
							updated_on           datetime,
							version              bigint    not null DEFAULT (1),
							available            int,
							brand                varchar(255),
							code                 varchar(255) DEFAULT('MA'),
							date_buy             datetime,
							deleted              bit       not null DEFAULT (0),
							image                varbinary(max),
							name                 varchar(255),
							price                float,
							machinery_catalog_id bigint
							,rowversion	 TIMESTAMP 		NOT NULL
							,CONSTRAINT PK_Machinery PRIMARY KEY(Id ASC)
						);
PRINT 'Table Machinery created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Machinery already exists into the database';
	END
GO

/******************************************************************************
**  Name: Machinery_Assignation
**  Desc: Creacion de tabla Machinery_Assignation
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
	PRINT 'creation of  Machinery_Assignation table....'
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Machinery_Assignation')
				AND type in (N'U'))
BEGIN 
	CREATE TABLE machinery_assignation(
							id                  bigint  Identity(1,1)  not null,
							asignation_init_date datetime		NOT NULL,
							asingation_end_date datetime		NULL,	
							created_on          datetime not null DEFAULT (getDate()),
							updated_on          datetime,
							version             bigint    not null DEFAULT (1),
							deleted             bit       not null DEFAULT (0),
							employee_id         bigint,
							machinery_id        bigint
							,rowversion timestamp				NOT NULL
							,CONSTRAINT PK_Machinery_Assignation PRIMARY KEY( Id ASC)
							
						);
PRINT 'Table Machinery_Assignation created!';
END
 ELSE 
	BEGIN
		PRINT 'Table Machinery_Assignation already exists into the database';
	END	
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Contract
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Joaquin Gonzales Mosquera
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Creating the Contract table....';

IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Contract')
				AND type in (N'U'))
BEGIN

create table contract (
						id                   bigint  Identity(1,1)  not null,
						created_on           datetime not null DEFAULT (getDate()),
						updated_on           datetime,
						version              bigint    not null DEFAULT (1),
						contract_description varchar(255),
						deleted              bit       not null DEFAULT (0),
						employee_id          bigint,	
						position_id          bigint,
						rowversion			timestamp					NOT NULL,
						constraint PK_ContractId primary key (id)
)
	PRINT 'Contract Table has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Contract already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla Position
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Joaquin Gonzales Mosquera
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Creating the Position table....';

IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Position')
				AND type in (N'U'))
BEGIN
CREATE TABLE position(
					id                   bigint  Identity(1,1)  not null,
					created_on           datetime not null DEFAULT (getDate()),
					updated_on           datetime,
					version              bigint    not null DEFAULT (1),
					name                 varchar(255),
					position_code        varchar(255),
					position_description varchar(255),
					position_type        varchar(255),
					deleted              bit       not null DEFAULT (0),
					rowversion			 TIMESTAMP 					NOT NULL,
					constraint PK_PositionId primary key (id) 
)
PRINT 'Position Table has been created!';
END
ELSE
	BEGIN
		PRINT 'Table Position already exist into the database'
	END
GO

/******************************************************************************
**  Name: Creacion del modelo de la tabla Functional Manual
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Joaquin Gonzales Mosquera
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
PRINT 'Creating the Functional Manual table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Funtional_Manual')
				AND type in (N'U'))
BEGIN
CREATE TABLE funtional_manual
(
	id                   bigint  Identity(1,1)  not null,
  	created_on           datetime not null DEFAULT (getDate()),
  	updated_on           datetime,
  	version              bigint    not null DEFAULT (1),
  	education_level      varchar(255),
  	organitational_level varchar(255),
  	code                 varchar(255) DEFAULT('FM'),
  	date                 datetime,
  	deleted              bit       not null DEFAULT (0),
  	description          varchar(255),
  	name                 varchar(255),
  	url                  varchar(255),
  	position_id          bigint,
	rowversion			 TIMESTAMP 	NOT NULL,
	constraint PK_FunctionalManualCode primary key (id) 
)
print 'Functional Manual Table has been created';
END
ELSE
	BEGIN
		PRINT 'Table FunctionalManual already exist into the database'
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla SegurityManual
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreia   Initial version
*******************************************************************************/
PRINT 'Creating the SegurityManual table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[SegurityManual]') 
		       AND type in (N'U'))
 BEGIN
		CREATE TABLE [dbo].[SegurityManual](Id int Identity(1,1)		  NOT NULL
										   ,Name nvarchar(100)            NOT NULL
								           ,Descriptionn nvarchar(100)    NULL
										   ,Code varchar(50)			  NOT NULL DEFAULT('SEGM')
							               ,Observations varchar(255)     NULL
		 							       ,[rowversion] timestamp		  NOT NULL 
							               ,ModifiedDate datetime		  NOT NULL DEFAULT (getDate())
										   ,Deleted bit				      NOT NULL DEFAULT (0)
	,CONSTRAINT PK_SegurityManual PRIMARY KEY(Id ASC)
	);

		PRINT 'Table SegurityManual created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table SegurityManual already exists into the database';
	END
GO

/******************************************************************************
**  Name: Creacion del modelo de la tabla Area
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreia   Initial version
*******************************************************************************/
PRINT 'Creating the Area table...';

IF NOT EXISTS (SELECT * FROM sys.objects 
			   WHERE object_id = OBJECT_ID(N'[dbo].[Area]') 
		       AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[Area](Id int Identity(1,1)				NOT NULL
								,Name  nvarchar(100)			NOT NULL
								,Descriptionn nvarchar(100)	    NULL
								,TypeA     nvarchar(100)		NOT NULL
								,Code varchar(50)				NOT NULL DEFAULT('AR')
								,SegurityManualID    int		NULL
								,OcupationalSafetyID int		NULL
								,rowversion timestamp			NOT NULL 
							    ,ModifiedDate datetime			NOT NULL DEFAULT (getDate())
								,Deleted bit					NOT NULL DEFAULT (0)
								
	,CONSTRAINT PK_Area PRIMARY KEY(Id ASC)
	);

		PRINT 'Table Area created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Area already exists into the database';
	END
GO
/******************************************************************************
**  Name: Creacion del modelo de la tabla OcupationalSafety
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreia   Initial version
*******************************************************************************/
PRINT 'Creating the OcupationalSafety table...';

IF NOT EXISTS (SELECT * FROM sys.objects 
			   WHERE object_id = OBJECT_ID(N'[dbo].[OcupationalSafety]') 
		       AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[OcupationalSafety](Id int Identity(1,1)              NOT NULL
											,activities		nvarchar(100)         NULL
											,responsable	nvarchar(100)         NULL
											,objective		nvarchar(100)         NULL
											,resources		nvarchar(100)         NULL
											,cost			int                   NULL
											,weeks			nvarchar(100)         NULL
											,Code           varchar(50)		   NOT NULL DEFAULT ('OSF')
											,rowversion     timestamp		   NOT NULL 
											,ModifiedDate   datetime		   NOT NULL DEFAULT (getDate())
											,Deleted        bit				   NOT NULL DEFAULT (0)
											 
	,CONSTRAINT PK_OcupationalSafety PRIMARY KEY(Id ASC)
	);

		PRINT 'Table OcupationalSafety created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table OcupationalSafety already exists into the database';
	END
GO
	
/******************************************************************************
**  Name: Creacion las Relaciones Entre las tablas (Employee, Asignation_project,
**		  Project, Incident, Affliction, Incident_catalog, Affliction_catalog)
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
--Define the relationship between Affliction and Affiction_Catalog
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Affliction_Catalog')
				AND parent_object_id = OBJECT_ID(N'Affliction'))
ALTER TABLE affliction WITH CHECK ADD
		CONSTRAINT FK_Affliction_Catalog FOREIGN KEY(Affliction_Catalog_id)
REFERENCES Affliction_Catalog(Id)
GO
ALTER TABLE affliction CHECK CONSTRAINT FK_Affliction_Catalog
GO
--Define the relationship between Affliction and Employee
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Affliction_Employee')
				AND parent_object_id = OBJECT_ID(N'Affliction'))
ALTER TABLE affliction WITH CHECK ADD
		CONSTRAINT FK_Affliction_Employee FOREIGN KEY(Employee_Id)
REFERENCES Employee(Id)
GO
ALTER TABLE affliction CHECK CONSTRAINT FK_Affliction_Employee
GO
--Define the relationship between Indicent and Incident_Catalog
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Incident_Catalog')
				AND parent_object_id = OBJECT_ID(N'Incident'))
ALTER TABLE Incident WITH CHECK ADD
		CONSTRAINT FK_Incident_Catalog FOREIGN KEY(Incident_Catalog_id)
REFERENCES Incident_Catalog(Id)
GO
ALTER TABLE Incident CHECK CONSTRAINT FK_Incident_Catalog
GO
--Define the relationship between Indicent and Employee
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Incident_Employee')
				AND parent_object_id = OBJECT_ID(N'Incident'))
ALTER TABLE Incident WITH CHECK ADD
		CONSTRAINT FK_Incident_Employee FOREIGN KEY(Employee_id)
REFERENCES Employee(Id)
GO
ALTER TABLE Incident CHECK CONSTRAINT FK_Incident_Employee
GO
--Define the relationship between Asignation_Project and Employee
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Asignation_Project_Employee')
				AND parent_object_id = OBJECT_ID(N'Asignation_Project'))
ALTER TABLE Asignation_Project WITH CHECK ADD
		CONSTRAINT FK_Asignation_Project_Employee FOREIGN KEY(Employee_id)
REFERENCES Employee(Id)
GO
ALTER TABLE Asignation_Project CHECK CONSTRAINT FK_Asignation_Project_Employee
GO
--Define the relationship between Asignation_Project and Project
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Asignation_Project_Project')
				AND parent_object_id = OBJECT_ID(N'Asignation_Project'))
ALTER TABLE Asignation_Project WITH CHECK ADD
		CONSTRAINT FK_Asignation_Project_Project FOREIGN KEY(Project_id)
REFERENCES Project(Id)
GO
ALTER TABLE Asignation_Project CHECK CONSTRAINT FK_Asignation_Project_Project
GO
/******************************************************************************
**  Name: Creacion las Relaciones Entre las tablas (Employee, Area)
**  
**  Author: Luis Aviles
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Luis Aviles     Adding new relationship between Employee and Area
*******************************************************************************/
--Define the relationship between Employee and Area
/*IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Employee_Area')
				AND parent_object_id = OBJECT_ID(N'Employee'))
ALTER TABLE Employee WITH CHECK ADD
		CONSTRAINT FK_Employee_Area FOREIGN KEY(AreaID)
REFERENCES Area(Id)
GO
ALTER TABLE Employee CHECK CONSTRAINT FK_Employee_Area
GO*/
/******************************************************************************
**  Name: Creacion las Relaciones Entre las tablas (Employee,CatalogFi,CatalogNi
**		  CatalogTd, CatalogUa, CatalogUc, Accident,AccidentRegistry)
**  Desc: Creacion de la tabla para el Sistema de Seguridad Industrial
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        			   ------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez   Initial version
*******************************************************************************/

PRINT 'Creating realization between catalogFi and accident';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asig_CatFi_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident]'))
alter table Accident
   add constraint FK_Asig_CatFi_Accident foreign key (CatalogFi_id)
      references CatalogFi(id)
GO
ALTER TABLE [dbo].[Accident] CHECK 
       CONSTRAINT [FK_Asig_CatFi_Accident]
GO
PRINT 'realization between catalogFi and accident created!';

PRINT 'Creating realization between catalogNi and accident';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asig_CatNi_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident]'))
alter table Accident
   add constraint FK_Asig_CatNi_Accident foreign key (CatalogNi_id)
      references CatalogNi (id)
GO
ALTER TABLE [dbo].[Accident] CHECK 
       CONSTRAINT [FK_Asig_CatNi_Accident]
GO
PRINT 'realization between catalogNi and accident created!';

PRINT 'Creating realization between catalogTd and accident';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asig_CatTd_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident]'))
alter table Accident
   add constraint FK_Asig_CatTd_Accident foreign key (CatalogTd_id)
      references CatalogTd(id)
GO
ALTER TABLE [dbo].[Accident] CHECK 
       CONSTRAINT [FK_Asig_CatTd_Accident]
GO
PRINT 'realization between catalogTd and accident created!';

PRINT 'Creating realization between catalogUa and accident';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asig_CatUa_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident]'))
alter table Accident
   add constraint FK_Asig_CatUa_Accident foreign key (CatalogUa_id)
      references CatalogUa(id)
GO
ALTER TABLE [dbo].[Accident] CHECK 
       CONSTRAINT [FK_Asig_CatUa_Accident]
GO
PRINT 'realization between catalogUa and accident created!';

PRINT 'Creating realization between catalogUc and accident';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Asig_CatUc_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident]'))
alter table Accident
   add constraint FK_Asig_CatUc_Accident foreign key (CatalogUc_id)
      references CatalogUc(id)
GO
ALTER TABLE [dbo].[Accident] CHECK 
       CONSTRAINT [FK_Asig_CatUc_Accident]
GO
PRINT 'realization between catalogUc and accident created!';

PRINT 'Creating realization between Accident and accidentRegistry';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reg_Accident]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Accident_registry]'))
alter table Accident_registry
   add constraint FK_Reg_Accident foreign key (Accident_id)
      references Accident(id)
GO
ALTER TABLE [dbo].[Accident_registry] CHECK 
       CONSTRAINT [FK_Reg_Accident]
GO
PRINT 'realization between Accident and accidentRegistry created!';   
 
PRINT 'Creating realization between Employee and accidentRegistry';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reg_Accident_Employee]')
				AND parent_object_id = OBJECT_ID(N'Accident_registry'))
alter table Accident_registry
	add constraint FK_Reg_Accident_Employee foreign key(Employee_id)
		references Employee(Id)
GO
ALTER TABLE Accident_registry CHECK 
		CONSTRAINT  FK_Reg_Accident_Employee
GO
/******************************************************************************
**  Name: Creacion de Relaciones entre las tablas (Category, Subcategory, Item,
**		  ItemAsignation)
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
--FOREIGN KEY Subcategory
--Define la relacion entre Subcategory y Category
PRINT 'Creacion de la llave foranea categoryId de Subcategory....';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[FK_Category]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Sub_category]'))
	   BEGIN
ALTER TABLE Sub_category ADD CONSTRAINT FK_Category FOREIGN KEY (category_id) REFERENCES Category(id)
PRINT 'Llave foranea categoryId de la tabla Subcategory creada!';
 END
 ELSE 
	BEGIN
		PRINT 'Llave foranea categoryId de la tabla Subcategory ya existe dentro la base de datos';
	END
GO
--FOREIGN KEY Item
--Define la relacion entre Item y Subcategory
PRINT 'Creacion de la llave foranea subCategoryId de Item....';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[FK_Subcategory]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
	   BEGIN
ALTER TABLE Item ADD CONSTRAINT FK_Subcategory FOREIGN KEY (sub_category_id) REFERENCES Sub_category(id)
PRINT 'Llave foranea subCategoryId de la tabla Item creada!';
 END
 ELSE 
	BEGIN
		PRINT 'Llave foranea subCategoryId de la tabla Item ya existe dentro la base de datos';
	END
GO
--FOREIGNS KEYS ItemAsignation 
--Define la relacion entre ItemAsignation e Item
PRINT 'Creacion de la llave foranea itemId de ItemAsignation....';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[FK_Item]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item_Asignation]'))
	   BEGIN
ALTER TABLE Item_Asignation ADD CONSTRAINT FK_Item FOREIGN KEY (item_Id) REFERENCES Item(id)
PRINT 'Llave foranea itemId de la tabla ItemAsignation creada!';
 END
 ELSE 
	BEGIN
		PRINT 'Llave foranea itemId de la tabla ItemAsignation ya existe dentro la base de datos';
	END
GO
--Define la relacion entre ItemAsignation y Employee
PRINT 'Creacion de la llave foranea Id de ItemAsignation....';
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[FK_ItemAsigEmployee]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item_Asignation]'))
	   BEGIN
ALTER TABLE Item_Asignation ADD CONSTRAINT FK_ItemAsigEmployee FOREIGN KEY (Employee_id) REFERENCES Employee(Id)
PRINT 'Llave foranea Id de la tabla ItemAsignation creada!';
 END
 ELSE 
	BEGIN
		PRINT 'Llave foranea Id de la tabla ItemAsignation ya existe dentro la base de datos';
	END
GO
GO
/******************************************************************************
**  Name: Relaciones de tablas 
**  Desc: Relaciones de tablas de Maintenance anda machinery,Machinery and Machinery_catalog.
**  Machinery_Assignation and Machinery,Machinery_Assignation and Machinery.
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

-- Define the relationship between Maintenance and Machinery.

IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_Mainten_Machinery')
				AND parent_object_id = OBJECT_ID(N'Maintenance'))
ALTER TABLE Maintenance WITH CHECK ADD
		CONSTRAINT FK_Mainten_Machinery	FOREIGN KEY(Machinery_id)
		REFERENCES Machinery(Id)
GO
ALTER TABLE Maintenance CHECK CONSTRAINT FK_Mainten_Machinery
GO

-- Define the relationship between Machinery and Machinery_catalog.
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'FK_Machinery_Catalog')
       AND parent_object_id = OBJECT_ID(N'Machinery'))
ALTER TABLE Machinery WITH CHECK ADD
	CONSTRAINT FK_Machinery_Catalog FOREIGN KEY (Machinery_Catalog_id)
	REFERENCES Machinery_Catalog(Id);
	
	GO
ALTER TABLE Machinery CHECK CONSTRAINT FK_Machinery_Catalog
GO


-- Define the relationship between Machinery_Assignation and Machinery.
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'FK_MachineryAssig_Machinery')
       AND parent_object_id = OBJECT_ID(N'Machinery_Assignation'))
ALTER TABLE Machinery_Assignation WITH CHECK ADD
	CONSTRAINT FK_MachineryAssig_Machinery FOREIGN KEY (Machinery_id)
	REFERENCES Machinery(Id);
	
	GO
ALTER TABLE Machinery_Assignation CHECK CONSTRAINT FK_MachineryAssig_Machinery
GO

-- Define the relationship between  Machinery_Assignation and Employee.
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'FK_Asignation_Employee')
       AND parent_object_id = OBJECT_ID(N'Machinery_Assignation'))
ALTER TABLE Machinery_Assignation WITH CHECK ADD
	CONSTRAINT FK_Asignation_Employee FOREIGN KEY (Employee_id)
	REFERENCES Employee(Id);
	
	GO
ALTER TABLE Machinery_Assignation CHECK CONSTRAINT FK_Asignation_Employee
GO
/******************************************************************************
**  Name: Creacion las Relaciones Entre las tablas (Employee, Contract,
**		  Position y Functional Manual
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
--Define the relationship between Position and Contract

IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_CONTRACT_CONTRACTPOSITION_POSITION')
				AND parent_object_id = OBJECT_ID(N'contract'))
alter table Contract WITH CHECK ADD
    constraint FK_CONTRACT_CONTRACTPOSITION_POSITION foreign key (Position_Id)
      references Position (id)
go
ALTER TABLE [Contract] CHECK CONSTRAINT FK_CONTRACT_CONTRACTPOSITION_POSITION
go

--Define the relationship between Employee and Contract

IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_CONTRACT_CONTRACTPOSITION_EMPLOYEE')
				AND parent_object_id = OBJECT_ID(N'contract'))
alter table Contract WITH CHECK ADD
    constraint FK_CONTRACT_CONTRACTPOSITION_EMPLOYEE foreign key (employee_Id)
      references Employee(id)
go
ALTER TABLE Contract CHECK CONSTRAINT FK_CONTRACT_CONTRACTPOSITION_EMPLOYEE
go

--Define the relationship between Position and Functional Manual

IF NOT EXISTS (SELECT * FROM sys.foreign_keys
				WHERE object_id = OBJECT_ID(N'dbo.FK_POSITION_POSITIONFUNCTIONALMANUAL_FUNCTIONALMANUAL')
				AND parent_object_id = OBJECT_ID(N'Funtional_Manual'))
alter table Funtional_Manual WITH CHECK ADD
    constraint FK_POSITION_POSITIONFUNCTIONALMANUAL_FUNCTIONALMANUAL foreign key (Position_Id)
      references Position (id)
go
ALTER TABLE Funtional_Manual CHECK CONSTRAINT FK_POSITION_POSITIONFUNCTIONALMANUAL_FUNCTIONALMANUAL
go
/******************************************************************************
**  Name: Creacion las Relaciones Entre las tablas (Area,Manual segurity,OcupationalSafety
**		  Project, Incident, Affliction, Incident_catalog, Affliction_catalog)
**	
**  Author: Eduardo Moreira Tellez
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreira Tellez   Initial version
*******************************************************************************/
-- Define the relationship between Area and SegurityManual
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
               WHERE object_id = OBJECT_ID(N'[dbo].[FK_Area_SegurityManual]')
               AND parent_object_id = OBJECT_ID(N'Area'))
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  
       CONSTRAINT [FK_Area_SegurityManual] FOREIGN KEY([SegurityManualID])
REFERENCES SegurityManual(Id)
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_SegurityManual]
GO


-- Define the relationship between Area and OcupationalSafety.
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
               WHERE object_id = OBJECT_ID(N'[dbo].[FK_Area_OcupationalSafety]')
               AND parent_object_id = OBJECT_ID(N'Area'))
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  
       CONSTRAINT [FK_Area_OcupationalSafety] FOREIGN KEY([OcupationalSafetyID])
REFERENCES OcupationalSafety(Id)
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_OcupationalSafety]
GO
PRINT 'End of Script Execution....';
GO
