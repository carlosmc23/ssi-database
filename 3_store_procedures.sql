USE SSICODE
GO
-----------------------------------------Store Procedures and Functions------------------------------------------------
-------------------------------------------Insert All Tables-----------------------------------------------------------
-- Create RegisterProject stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[register_project]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[register_project]
END
GO
/******************************************************************************
**  Name: RegisterProject
**  Desc: Registrar un nuevo Proyecto al SSI
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
CREATE PROCEDURE [dbo].[register_project]
	(
	@name varchar(255),
	@location varchar(255),
	@description varchar(255),
	@init_date date,
	@end_date date 

)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[project]
		(name,
		location,
		description,
		init_date,
		end_date
		)
	VALUES
		( @name,
			@location,
			@description,
			@init_date,
			@end_date
			);

	SELECT id
			, code
			, name
			, location
			, description
			, activate
			, init_date
			, end_date
	FROM project
	where id = @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[Register_Project] created';
GO

-- Create Asig_Employee_Project stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Asig_Employee_Project]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Asig_Employee_Project]
END
GO
/******************************************************************************
**  Name: Asig_Employee_Project
**  Desc: Asignar un Empleado a un Proyecto del SSI
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
CREATE PROCEDURE [dbo].[Asig_Employee_Project]
	(
	@Employee_id int,
	@Project_id int,
	@Init_date date,
	@End_date date
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[asignation_project]
		( employee_id,
		project_id,
		asignation_init_date,
		asingation_End_date)
	VALUES
		( @Employee_id,
			@Project_id,
			@Init_date,
			@End_date);

	SELECT EMP.Id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.Ci AS Empl_CI
			, PR.Id AS Proj_id
			, PR.Name AS Proj_Name
			, PR.Location
			, PR.description
			, AP.asignation_init_date
			, AP.asingation_end_date
	FROM asignation_project AP
		INNER JOIN employee EMP
		ON(AP.employee_id = EMP.Id)
		INNER JOIN Project PR
		ON(AP.project_id = PR.Id)
	WHERE	AP.employee_id= @Employee_id
		AND AP.project_id = @Project_id

END
GO
PRINT 'Procedure [dbo].[Asig_Employee_Project] created';
GO
-- Create RegisterAffliction stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Affliction]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Affliction]
END
GO
/******************************************************************************
**  Name: RegisterAffliction
**  Desc: Registrar la Afliccion de un empleado al SSI
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
CREATE PROCEDURE [dbo].[Register_Affliction]
	(
	@Name varchar(255),
	@Description varchar(255),
	@Observation varchar(255),
	@Reg_date date,
	@Employee_id int,
	@Aff_catalog_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[affliction]
		( name,
		description,
		observation,
		registration_date,
		employee_id,
		affliction_catalog_id)
	VALUES
		( @Name,
			@Description,
			@Observation,
			@Reg_date,
			@Employee_id,
			@Aff_catalog_id);

	SELECT AFF.id AS Aff_id
			, AFF.Code AS Aff_Code
			, AFF.Name AS Aff_Name
			, AFF.description AS Aff_Description
			, AFF.observation AS Aff_Observations
			, EMP.Id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.Ci AS Empl_CI
			, AFCAT.Id AS Afflic_cat_id
			, AFCAT.Name AS Afflic_cat_Name
			, AFF.Registration_date
	FROM affliction AFF
		INNER JOIN employee EMP
		ON(AFF.employee_id = EMP.id)
		INNER JOIN affliction_catalog AFCAT
		ON(AFF.affliction_catalog_id = AFCAT.id)
	where AFF.id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[Register_Affliction] created';
GO

-- Create RegisterIncident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Incident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Incident]
END
GO
/******************************************************************************
**  Name: RegisterIncident
**  Desc: Registrar un incidente en el SSI
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
CREATE PROCEDURE [dbo].[Register_Incident]
	(
	@Description varchar(255),
	@Observation varchar(255),
	@Place varchar(255),
	@Reg_date date,
	@Whitness varchar(255),
	@Employee_id int,
	@Incid_catalog_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[incident]
		( description,
		observations,
		place,
		registration_date,
		witness,
		employee_id,
		incident_catalog_id)
	VALUES
		( @Description,
			@Observation,
			@Place,
			@Reg_date,
			@Whitness,
			@Employee_id,
			@Incid_catalog_id);

	SELECT INC.id AS Incid_id
			, INC.Code AS Incid_Code
			, INC.description AS Incid_Description
			, INC.observations AS Incid_Observations
			, INC.place AS Incid_Place
			, INC.witness AS Incid_Whitness
			, EMP.Id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.Ci AS Empl_CI
			, INCAT.Id AS Incid_cat_id
			, INCAT.Name AS Incid_cat_Name
			, INC.Registration_date
	FROM incident INC
		INNER JOIN employee EMP
		ON(INC.employee_id = EMP.Id)
		INNER JOIN incident_catalog INCAT
		ON(INC.incident_catalog_id = INCAT.Id)
	where INC.id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterIncident] created';
GO

-- Create RegisterAfflictionCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_AfflictionCatalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_AfflictionCatalog]
END
GO
/******************************************************************************
**  Name: RegisterAfflictionCatalog
**  Desc: Registrar un Catalog de Aflicciones en el SSI
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
CREATE PROCEDURE [dbo].[Register_AfflictionCatalog]
	(
	@Name varchar(255),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[affliction_catalog]
		( name,
		description)
	VALUES
		( @Name,
			@Description);

	SELECT id as Afflicion_id
			, code as Affliction_code
			, name as Affliction_name
			, description as Afflicion_description
	FROM affliction_catalog
	where id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterAfflictionCatalog] created';
GO
-- Create RegisterIncidentCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Incident_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Incident_Catalog]
END
GO
/******************************************************************************
**  Name: RegisterIncidentCatalog
**  Desc: Registrar un Catalog de Incidentes en el SSI
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
CREATE PROCEDURE [dbo].[Register_Incident_Catalog]
	(
	@Name varchar(255),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[incident_catalog]
		( name,
		description)
	VALUES
		( @Name,
			@Description);

	SELECT id as Incident_id
			, code as Incident_code
			, name as Incident_name
			, description as Incident_Description
	FROM incident_catalog
	where id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterIncidentCatalog] created';
GO

-----------------------------------------Update all Tables--------------------------------------------------------
-- Create UpdateProject stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Project]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Project]
END
GO
/******************************************************************************
**  Name: UpdateProject
**  Desc: Actualizar la informacion del Proyecto
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
CREATE PROCEDURE [dbo].[Update_Project]
	(
	@Id int,
	@Name varchar(255),
	@location varchar(255),
	@Description varchar(255),
	@Init_date date,
	@End_date date,
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE project
	SET  name			= @Name
		,location		= @location
		,description	= @Description
		,init_date		= @Init_date
		,end_date		= @End_date
		,activate		= @Activate
	WHERE id = @id
END
BEGIN
	SELECT id as Project_id
			, code as Project_Code
			, name as Project_Name
			, location
			, description
			, init_date
			, end_date
			, deleted
	FROM Project
	WHERE id = @Id
END
GO
PRINT 'Procedure [dbo].[UpdateProject] created';
GO
-- Create UpdateIncident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Incident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Incident]
END
GO
/******************************************************************************
**  Name: UpdateIncident
**  Desc: Actualizar un incidente en el SSI
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
CREATE PROCEDURE [dbo].[Update_Incident]
	(
	@id int,
	@Description varchar(255),
	@Observation varchar(255),
	@Place varchar(255),
	@Reg_date date,
	@Whitness varchar(255),
	@Employee_id int,
	@Incid_catalog_id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE incident
		SET description			= @Description
			,observations		= @Observation
			,place				= @Place
			,registration_date	= @Reg_date
			,witness			= @Whitness
			,employee_id		= @Employee_id
			,incident_catalog_id= @Incid_catalog_id
	WHERE  Id = @id
END
BEGIN
	SELECT INC.id AS Incid_id
			, INC.code AS Incid_Code
			, INC.description AS Incid_Description
			, INC.observations AS Incid_Observations
			, INC.place AS Incid_Place
			, INC.witness AS Incid_Whitness
			, EMP.id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.Ci AS Empl_CI
			, INCAT.Id AS Incid_cat_id
			, INCAT.Name AS Incid_cat_Name
			, INC.Registration_date
	FROM incident INC
		INNER JOIN employee EMP
		ON(INC.Employee_id = EMP.Id)
		INNER JOIN incident_catalog INCAT
		ON(INC.incident_catalog_id = INCAT.Id)
	where INC.id= @id
END
GO
PRINT 'Procedure [dbo].[UpdateIncident] created';
GO
-- Create UpdateAffliction stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Affliction]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Affliction]
END
GO
/******************************************************************************
**  Name: UpdateAffliction
**  Desc: Actualizar la afflicion de un empleado en el SSI
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
CREATE PROCEDURE [dbo].[Update_Affliction]
	(
	@id int,
	@Name varchar(255),
	@Description varchar(255),
	@Observation varchar(255),
	@Reg_date date,
	@Employee_id int,
	@Aff_catalog_id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	affliction
		SET	Name				= @Name
			,description		= @Description
			,observation		= @Observation
			,registration_date	= @Reg_date
			,employee_id		= @Employee_id
			,affliction_catalog_id= @Aff_catalog_id
	WHERE  Id = @id
END
BEGIN
	SELECT AFF.id AS Aff_id
			, AFF.code AS Aff_Code
			, AFF.name AS Aff_Name
			, AFF.description AS Aff_Description
			, AFF.observation AS Aff_Observations
			, EMP.id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.ci AS Empl_CI
			, AFCAT.id AS Afflic_cat_id
			, AFCAT.name AS Afflic_cat_Name
			, AFF.registration_date
	FROM affliction AFF
		INNER JOIN employee EMP
		ON(AFF.employee_id = EMP.Id)
		INNER JOIN affliction_catalog AFCAT
		ON(AFF.affliction_catalog_id = AFCAT.Id)
	where AFF.Id = @id
END
GO
PRINT 'Procedure [dbo].[UpdateAffliction] created';
GO
-- Create UpdateAfflictionCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Affliction_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Affliction_Catalog]
END
GO
/******************************************************************************
**  Name: UpdateAfflictionCatalog
**  Desc: Actualizar el catalog de affliciones en el SSI
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
CREATE PROCEDURE [dbo].[Update_Affliction_Catalog]
	(
	@id int,
	@Name varchar(255),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	affliction_catalog
		SET	name				= @Name
			,description		= @Description
	WHERE  Id = @id
END
BEGIN
	SELECT id as Afflicion_id
			, code as Affliction_code
			, name as Affliction_name
			, description as Afflicion_description
	FROM affliction_catalog
	where id= @id
END
GO
PRINT 'Procedure [dbo].[UpdateAfflictionCatalog] created';
GO
-- Create UpdateIncidentCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Incident_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Incident_Catalog]
END
GO
/******************************************************************************
**  Name: UpdateIncidentCatalog
**  Desc: Actualizar el catalogo de incidentes en el SSI
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
CREATE PROCEDURE [dbo].[Update_Incident_Catalog]
	(
	@id int,
	@Name varchar(255),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	incident_catalog
		SET	name				= @Name
			,description		= @Description
	WHERE  id = @id
END
BEGIN
	SELECT id as Incident_id
			, code as Incident_code
			, name as Incident_name
			, description as Incident_Description
	FROM incident_catalog
	where id= @id
END
GO
PRINT 'Procedure [dbo].[UpdateIncidentCatalog] created';
GO
-----------------------------------------Delete all Tables--------------------------------------------------------
-- Create DeleteProject stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Project]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Project]
END
GO
/******************************************************************************
**  Name: DeleteProject
**  Desc: Cambiar el atributo deleted a true de la tabla Proyecto
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
CREATE PROCEDURE [dbo].[Delete_Project]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE project
	SET deleted = 1
	WHERE id = @id
END
BEGIN
	SELECT id as Project_id
			, deleted 
			, code as Project_Code
			, name as Project_Name
			, location
			, description
			, init_date
			, end_date
			
	FROM project
	WHERE id = @Id
END
GO
PRINT 'Procedure [dbo].[DeleteProject] created';
GO
-- Create DeleteIncident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Incident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Incident]
END
GO
/******************************************************************************
**  Name: DeleteIncident
**  Desc: Cambiar el atributo deleted a true de la tabla Incident
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
CREATE PROCEDURE [dbo].[Delete_Incident]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE incident
		SET deleted = 1
	WHERE  Id = @id
END
BEGIN
	SELECT INC.id AS Incid_id
			, INC.deleted
			, INC.code AS Incid_Code
			, INC.description AS Incid_Description
			, INC.observations AS Incid_Observations
			, INC.place AS Incid_Place
			, INC.witness AS Incid_Whitness
			, EMP.id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.ci AS Empl_CI
			, INCAT.id AS Incid_cat_id
			, INCAT.name AS Incid_cat_Name
			, INC.registration_date
	FROM incident INC
		INNER JOIN employee EMP
		ON(INC.Employee_id = EMP.Id)
		INNER JOIN incident_catalog INCAT
		ON(INC.incident_catalog_id = INCAT.Id)
	where INC.id= @id
END
GO
PRINT 'Procedure [dbo].[DeleteIncident] created';
GO
-- Create DeleteAffliction stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Affliction]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Affliction]
END
GO
/******************************************************************************
**  Name: DeleteAffliction
**  Desc: Cambiar el atributo deleted a true de la tabla Affliction
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
CREATE PROCEDURE [dbo].[Delete_Affliction]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	affliction
		SET	deleted = 1
	WHERE  id = @id
END
BEGIN
	SELECT AFF.id AS Aff_id
			, AFF.deleted
			, AFF.code AS Aff_Code
			, AFF.name AS Aff_Name
			, AFF.description AS Aff_Description
			, AFF.observation AS Aff_Observations
			, EMP.Id AS Empl_id
			, Empl_Name = EMP.first_name +' '+ EMP.last_Name
			, EMP.Ci AS Empl_CI
			, AFCAT.Id AS Afflic_cat_id
			, AFCAT.Name AS Afflic_cat_Name
			, AFF.registration_date
	FROM affliction AFF
		INNER JOIN employee EMP
		ON(AFF.employee_id = EMP.Id)
		INNER JOIN affliction_catalog AFCAT
		ON(AFF.affliction_catalog_id = AFCAT.Id)
	where AFF.Id = @id
END
GO
PRINT 'Procedure [dbo].[DeleteAffliction] created';
GO
-- Create DeleteAfflictionCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Affliction_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Affliction_Catalog]
END
GO
/******************************************************************************
**  Name: DeleteAfflictionCatalog
**  Desc: Cambiar el atributo deleted a true de la tabla Affliction_Catalog
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
CREATE PROCEDURE [dbo].[Delete_Affliction_Catalog]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	affliction_catalog
		SET	deleted = 1
	WHERE  Id = @id
END
BEGIN
	SELECT id as Afflicion_id
			, deleted
			, code as Affliction_code
			, name as Affliction_name
			, description as Afflicion_description
	FROM affliction_catalog
	where id= @id
END
GO
PRINT 'Procedure [dbo].[DeleteAfflictionCatalog] created';
GO
-- Create DeleteIncidentCatalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Incident_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Incident_Catalog]
END
GO
/******************************************************************************
**  Name: DeleteIncidentCatalog
**  Desc: Cambiar el atributo deleted a true de la tabla Incident_Catalog
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
CREATE PROCEDURE [dbo].[Delete_Incident_Catalog]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	incident_catalog
		SET deleted = 1
	WHERE  id = @id
END
BEGIN
	SELECT id as Incident_id
			, deleted
			, code as Incident_code
			, name as Incident_name
			, description as Incident_Description
	FROM incident_catalog
	where id= @id
END
GO
PRINT 'Procedure [dbo].[DeleteIncidentCatalog] created';
GO
-- Create Delete_Asig_Employee_Project stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Asig_Employee_Project]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Asig_Employee_Project]
END
GO
/******************************************************************************
**  Name: Delete_Asig_Employee_Project
**  Desc: Borrar la Asignacion de un Empleado a un Proyecto del SSI
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
CREATE PROCEDURE [dbo].[Delete_Asig_Employee_Project]
	(
	@Employee_id int,
	@Project_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	DELETE FROM asignation_project
	WHERE Employee_id = @Employee_id
		AND Project_id = @Project_id

END
GO
PRINT 'Procedure [dbo].[Delete_Asig_Employee_Project] created';
GO
-------------------------------------------Insert All Tables-----------------------------------------------------------

/******************************************************************************
**  Name: Register CatalogFi
**  Desc: Registrar un Catalog Injury Factor al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterCatalogFi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_CatalogFi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_CatalogFi]
END
GO
CREATE PROCEDURE [dbo].[Register_CatalogFi]
	(
	@Name varchar(255),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[catalogfi]
		(catalogfiname,catalogfidescription)
	VALUES
		(@Name, @Description);
	PRINT 'The Catalog Injury Factor with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[RegisterCatalogFi] created';
GO
/******************************************************************************
**  Name: Register CatalogNi
**  Desc: Registrar un Catalog Nature of Injury al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterCatalogNi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_CatalogNi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_CatalogNi]
END
GO
CREATE PROCEDURE [dbo].[Register_CatalogNi]
	(
	@Name varchar(50),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[catalogni]
		(catalogniname,catalognidescription)
	VALUES
		(@Name, @Description);
	PRINT 'The Catalog Nature of Injury with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[RegisterCatalogNi] created';
GO
/******************************************************************************
**  Name: Register CatalogTd
**  Desc: Registrar un Catalog Type of Disability al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterCatalogTd stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_CatalogTd]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_CatalogTd]
END
GO
CREATE PROCEDURE [dbo].[Register_CatalogTd]
	(
	@Name varchar(50),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[catalogtd]
		(catalotdname,catalogtddescription)
	VALUES
		(@Name, @Description);
	PRINT 'The Catalog Type of Disability with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[RegisterCatalogTd] created';
GO
/******************************************************************************
**  Name: Register CatalogUa
**  Desc: Registrar un Catalog Insecure Act al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterCatalogUa stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_CatalogUa]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_CatalogUa]
END
GO
CREATE PROCEDURE [dbo].[Register_CatalogUa]
	(
	@Name varchar(50),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[catalogua]
		(catalouaname,cataloguadescription)
	VALUES
		(@Name, @Description);
	PRINT 'The Catalog Insecure Act with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[RegisterCatalogUa] created';
GO
/******************************************************************************
**  Name: Register CatalogUc
**  Desc: Registrar un Catalog Insecure Condition al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterCatalogUc stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_CatalogUc]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_CatalogUc]
END
GO
CREATE PROCEDURE [dbo].[Register_CatalogUc]
	(
	@Name varchar(50),
	@Description varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[catalogua]
		(catalouaname,cataloguadescription)
	VALUES
		(@Name, @Description);
	PRINT 'The Catalog Insecure Condition with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[RegisterCatalogUc] created';
GO
/******************************************************************************
**  Name: Register Accident
**  Desc: Registrar un Accident al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterAccident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Accident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Accident]
END
GO
CREATE PROCEDURE [dbo].[Register_Accident]
	(
	@Description varchar(255),
	@Disability_Day bigint,
	@MedicalCenter varchar(255),
	@Place         varchar(255),
	@Supervisor      varchar(255),
	@Witness	     varchar(255),
	@Id_Fi bigInt,
	@Id_Ni bigInt,
	@Id_Td bigInt,
	@Id_Ua bigInt,
	@Id_Uc bigInt
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[accident]
		(accident_description,accident_disability_day,accident_medical_center,accident_place,accident_registration_code,
		accident_supervisor,accident_witness,catalogfi_id,catalogni_id,catalogtd_id,catalogua_id,cataloguc_id)
	VALUES
		(@Description, @Disability_Day, @MedicalCenter, @Place, 'Acc-',
			@Supervisor, @Witness, @Id_Fi, @Id_Ni, @Id_Td, @Id_Ua, @Id_Uc);
	PRINT 'The Accident with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[[RegisterAccident] created';
GO
/******************************************************************************
**  Name: Register AccidentRegistry
**  Desc: Registrar un Accident Registry al SSI
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create RegisterAccidentR stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_AccidentR]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_AccidentR]
END
GO
CREATE PROCEDURE [dbo].[Register_AccidentR]
	(
	@Id_Acc bigInt,
	@Id_Emp bigInt,
	@Registry_Date Date,
	@Registry_Hour Time

)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	INSERT INTO [dbo].[accident_registry]
		(accident_id,employee_id,accident_registry_date,accident_registry_hour)
	VALUES
		(@Id_Acc, @Id_Emp, @Registry_Date, @Registry_Hour);
	PRINT 'The Accident Registry with Id ->'+ convert(varchar(150),@@IDENTITY)+'--> Is Inserted correctly';

END
GO
PRINT 'Procedure [dbo].[[RegisterAccidentR] created';
GO

-----------------------------------------Update all Tables--------------------------------------------------------

/******************************************************************************
**  Name: UpdateCatalogFi
**  Desc: Actualizar la informacion de Catalog Injury Factor
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateCatalogFi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_CatalogFi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_CatalogFi]
END
GO
CREATE PROCEDURE [dbo].[Update_CatalogFi]
	(
	@Id int,
	@Name varchar(255),
	@Description varchar(255),
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdFi int;
	set	@IdFi=convert(int,(select id
	from catalogfi
	where id=@Id));
	IF (@IdFi IS NOT NULL)
	BEGIN
		UPDATE catalogfi SET catalogfiname= @Name,catalogfidescription=@Description,deleted=@Activate where id=@Id;
		PRINT 'The Catalog Injury Factor with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The Catalog Injury Factor not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateCatalogFi] created';
GO
/******************************************************************************
**  Name: UpdateCatalogNi
**  Desc: Actualizar la informacion de Catalog Nature of Injury
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateCatalogNi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_CatalogNi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_CatalogNi]
END
GO
CREATE PROCEDURE [dbo].[Update_CatalogNi]
	(
	@Id int,
	@Name varchar(50),
	@Description varchar(255),
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdNi int;
	set	@IdNi=convert(int,(select id
	from catalogni
	where id=@Id));
	IF (@IdNi IS NOT NULL)
	BEGIN
		UPDATE catalogni SET catalogniname= @Name,catalognidescription=@Description,deleted=@Activate where id=@Id;
		PRINT 'The Catalog Nature of Injury with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The Catalog Nature of Injury not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateCatalogNi] created';
GO
/******************************************************************************
**  Name: UpdateCatalogTd
**  Desc: Actualizar la informacion de Catalog Type of Disability
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateCatalogTd stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_CatalogTd]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_CatalogTd]
END
GO
CREATE PROCEDURE [dbo].[Update_CatalogTd]
	(
	@Id int,
	@Name varchar(50),
	@Description varchar(255),
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdTd int;
	set	@IdTd=convert(int,(select id
	from catalogtd
	where id=@Id));
	IF (@IdTd IS NOT NULL)
	BEGIN
		UPDATE catalogtd SET catalotdname= @Name,catalogtddescription=@Description,deleted=@Activate where id=@Id;
		PRINT 'The Catalog Type of Disability with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The Catalog Type of Disability not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateCatalogTd] created';
GO
/******************************************************************************
**  Name: UpdateCatalogUa
**  Desc: Actualizar la informacion de Catalog Insecure Act
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateCatalogUa stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_CatalogUa]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_CatalogUa]
END
GO
CREATE PROCEDURE [dbo].[Update_CatalogUa]
	(
	@Id int,
	@Name varchar(50),
	@Description varchar(255),
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdUa int;
	set	@IdUa=convert(int,(select id
	from catalogua
	where id=@Id));
	IF (@IdUa IS NOT NULL)
	BEGIN
		UPDATE catalogua SET catalouaname= @Name,cataloguadescription=@Description,deleted=@Activate where id=@Id;
		PRINT 'The Catalog Insecure Act with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The Catalog Insecure Act not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateCatalogUa] created';
GO
/******************************************************************************
**  Name: UpdateCatalogUc
**  Desc: Actualizar la informacion de Catalog Insecure Condition
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateCatalogUc stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_CatalogUc]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_CatalogUc]
END
GO
CREATE PROCEDURE [dbo].[Update_CatalogUc]
	(
	@Id int,
	@Name varchar(255),
	@Description varchar(255),
	@Activate bit
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdUc int;
	set	@IdUc=convert(int,(select id
	from cataloguc
	where id=@Id));
	IF (@IdUc IS NOT NULL)
	BEGIN
		UPDATE cataloguc SET cataloucname= @Name,catalogucdescription=@Description,deleted=@Activate where id=@Id;
		PRINT 'The Catalog Insecure Condition with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The Catalog Insecure Condition not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateCatalogUc] created';
GO
/******************************************************************************
**  Name: UpdateAccident
**  Desc: Actualizar la informacion de Accident
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateAccident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Accident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Accident]
END
GO
CREATE PROCEDURE [dbo].[Update_Accident]
	(
	@Id int,
	@Description varchar(255),
	@Disability_Day bigint,
	@MedicalCenter   varchar(150),
	@Place           varchar(255),
	@Supervisor      varchar(150),
	@Witness	     varchar(255),
	@Activate		 int,
	@Id_Fi bigInt,
	@Id_Ni bigInt,
	@Id_Td bigInt,
	@Id_Ua bigInt,
	@Id_Uc bigInt
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdA int;
	set	@IdA=convert(int,(select id
	from accident
	where id=@Id));
	IF (@IdA IS NOT NULL)
	BEGIN
		UPDATE accident SET accident_description= @Description,accident_disability_day=@Disability_Day,accident_medical_center=@MedicalCenter,
		accident_place=@Place,accident_supervisor=@Supervisor,accident_witness=@Witness,deleted=@Activate,catalogfi_id=@Id_Fi,catalogni_id=@Id_Ni,catalogtd_id=@Id_Td,
		catalogua_id=@Id_Ua,cataloguc_id=@Id_Uc where id=@Id;
		PRINT 'Th Accident with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The accident does not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateAccident] created';
GO
/******************************************************************************
**  Name: UpdateAccidentR
**  Desc: Actualizar la informacion de Accident Registry
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create UpdateAccidentR stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_AccidentR]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_AccidentR]
END
GO
CREATE PROCEDURE [dbo].[Update_AccidentR]
	(
	@Id bigInt,
	@Id_Acc bigInt,
	@Id_Emp bigInt,
	@Registry_Date Date,
	@Registry_Hour Time
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdR int;
	set	@IdR=convert(int,(select id
	from accident_registry
	where id=@Id));
	IF (@IdR IS NOT NULL)
	BEGIN
		UPDATE accident_registry SET 
		employee_id=@Id_Emp,accident_registry_date=@Registry_Date,accident_registry_hour=@Registry_Hour
		where id=@Id;
		PRINT 'Th Accident Registry with Id ->'+ convert(varchar(150),@Id)+'--> it was updated correctly';

	END
	ELSE
	BEGIN
		PRINT 'The accident Registry does not exist';
	END
END
GO
PRINT 'Procedure [dbo].[UpdateAccidentR] created';
GO

-----------------------------------------Delete all Tables--------------------------------------------------------

/******************************************************************************
**  Name: Delete CatalogFi
**  Desc: Cambiar el atributo deleted a true de la tabla CatalogFi
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteCatalogFi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_CatalogFi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_CatalogFi]
END
GO
CREATE PROCEDURE [dbo].[Delete_CatalogFi]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdFi int;
	set	@IdFi=convert(int,(select id
	from catalogfi
	where id=@Id));
	IF (@IdFi IS NOT NULL)
	BEGIN
		UPDATE catalogfi SET deleted = 1 WHERE id = @Id;
		PRINT 'The Catalog Injury Factor with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Catalog Injury Factor not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteCatalogFi] created';
GO

/******************************************************************************
**  Name: Delete CatalogNi
**  Desc: Cambiar el atributo deleted a true de la tabla CatalogNi
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteCatalogNi stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_CatalogNi]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_CatalogNi]
END
GO
CREATE PROCEDURE [dbo].[Delete_CatalogNi]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdNi int;
	set	@IdNi=convert(int,(select id
	from catalogni
	where id=@Id));
	IF (@IdNi IS NOT NULL)
	BEGIN
		UPDATE catalogni SET deleted = 1 WHERE id = @Id;
		PRINT 'The Catalog Nature of Injury with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Catalog Nature of Injury not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteCatalogNi] created';
GO
/******************************************************************************
**  Name: Delete CatalogTd
**  Desc: Cambiar el atributo deleted a true de la tabla CatalogTd
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteCatalogTd stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_CatalogTd]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_CatalogTd]
END
GO
CREATE PROCEDURE [dbo].[Delete_CatalogTd]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdTd int;
	set	@IdTd=convert(int,(select id
	from catalogtd
	where id=@Id));
	IF (@IdTd IS NOT NULL)
	BEGIN
		UPDATE catalogtd SET deleted = 1 WHERE id = @Id;
		PRINT 'The Catalog Type of Disability with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Catalog Type of Disability not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteCatalogTd] created';
GO
/******************************************************************************
**  Name: Delete CatalogUa
**  Desc: Cambiar el atributo deleted a true de la tabla CatalogUa
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteCatalogUa stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_CatalogUa]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_CatalogUa]
END
GO
CREATE PROCEDURE [dbo].[Delete_CatalogUa]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdUa int;
	set	@IdUa=convert(int,(select id
	from catalogua
	where id=@Id));
	IF (@IdUa IS NOT NULL)
	BEGIN
		UPDATE catalogua SET deleted = 1 WHERE id = @Id;
		PRINT 'The Catalog Insecure Act with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Catalog Insecure Act not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteCatalogUa] created';
GO
/******************************************************************************
**  Name: Delete CatalogUc
**  Desc: Cambiar el atributo deleted a true de la tabla CatalogUc
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteCatalogUc stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_CatalogUc]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_CatalogUc]
END
GO
CREATE PROCEDURE [dbo].[Delete_CatalogUc]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdUc int;
	set	@IdUc=convert(int,(select id
	from cataloguc
	where id=@Id));
	IF (@IdUc IS NOT NULL)
	BEGIN
		UPDATE cataloguc SET deleted = 1 WHERE id = @Id;
		PRINT 'The Catalog Insecure Condition with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Catalog Insecure Condition not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteCatalogUc] created';
GO
/******************************************************************************
**  Name: Delete Accident
**  Desc: Cambiar el atributo deleted a true de la tabla Accident
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteAccident stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Accident]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Accident]
END
GO
CREATE PROCEDURE [dbo].[Delete_Accident]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdA int;
	set	@IdA=convert(int,(select id
	from accident
	where id=@Id));
	IF (@IdA IS NOT NULL)
	BEGIN
		UPDATE accident SET deleted = 1 WHERE id = @Id;
		PRINT 'The Accident with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Accident not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteAccident] created';
GO
/******************************************************************************
**  Name: Delete AccidentRegistry
**  Desc: Cambiar el atributo deleted a true de la tabla Accident Registry
** 
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Rudy Salvatierra Rodriguez  Initial version
*******************************************************************************/
-- Create DeleteAccidentR stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_AccidentR]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_AccidentR]
END
GO
CREATE PROCEDURE [dbo].[Delete_AccidentR]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	Declare @IdR int;
	set	@IdR=convert(int,(select id
	from accident_registry
	where id=@Id));
	IF (@IdR IS NOT NULL)
	BEGIN
		UPDATE accident_registry SET deleted = 1 WHERE id = @Id;
		PRINT 'The Accident Registry with Id ->'+ convert(varchar(150),@Id)+'--> It was eliminated correctly';
	END
	ELSE
	BEGIN
		PRINT 'The Accident Registry not exist';
	END
END
GO
PRINT 'Procedure [dbo].[DeleteAccidentR] created';
GO

-- Create InsertCategory stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Insert_Category]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Insert_Category];
END
 GO
/******************************************************************************
**  Name: InsertCategory
**  Desc: Store Procedure para Registrar una nueva category
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
CREATE PROCEDURE [dbo].[Insert_Category]
	(
	--Variable de mi tabla category a insertar 
	@nameCat VARCHAR(50)
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	DECLARE @CodeCat VARCHAR(50);
	DECLARE @NUMBER INT;
	SET @NUMBER = (SELECT (MAX(id)+1)
	FROM [dbo].[category]);
	SET @CodeCat = 'CAT-'+ CAST(@NUMBER as varchar);
	--insertando la category a su tabla respectiva
	INSERT INTO [dbo].[category]
		(code, name)
	VALUES
		(@CodeCat, @nameCat);
END
	GO
PRINT 'Strore Procedure InsertCategory creada!';
	GO

-- Create UpdateCategory stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Category]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Update_Category];
END
 GO
/******************************************************************************
**  Name: UpdateCategory
**  Desc: Store Procedure para Actualizar una category
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
CREATE PROCEDURE [dbo].[Update_Category]
	(
	@IDCategory bigINT,
	--Variable a actualizar de mi tabla category 
	@nameCat VARCHAR(50)
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	--actualizando la categoria especifica
	UPDATE [dbo].[category]
		SET name = @nameCat
		WHERE id = @IDCategory;
END
	GO
PRINT 'Strore Procedure UpdateCategory creada!';
	GO

-- Create DeleteCategory stored procedure.
IF EXISTS (SELECT * FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[DeleteCategory]') 
		       AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[DeleteCategory];
 END
 GO
/******************************************************************************
**  Name: DeleteCategory
**  Desc: Store Procedure para Eliminar una category
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
	CREATE PROCEDURE [dbo].[DeleteCategory]
	(
		--id de la category a eliminar
		@IDCategory bigINT
	)
	AS
		--para cualquier error esta el transaction abort
		SET XACT_ABORT ON;
		SET NOCOUNT ON;
	BEGIN
		UPDATE [dbo].[Category]
		SET deleted = 1 
		WHERE id = @IDCategory;
		--eliminando la category especifica
		--DELETE FROM [dbo].[Category]
		--WHERE categoryId = @IDCategory;
	END
	GO
	PRINT 'Strore Procedure DeleteCategory creada!';
	GO

-- Create InsertSubcategory stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Insert_Subcategory]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Insert_Subcategory];
END
 GO
/******************************************************************************
**  Name: InsertSubcategory
**  Desc: Store Procedure para Registrar una nueva Subcategory
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
CREATE PROCEDURE [dbo].[Insert_Subcategory]
	(
	--Variables de mi tabla Subcategory a insertar 
	@nameSubcat VARCHAR(50),
	@idCategory bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	DECLARE @CodeSub VARCHAR(50);
	DECLARE @NUMBER INT;
	SET @NUMBER = (SELECT (MAX(id)+1)
	FROM [dbo].[sub_category]);
	SET @CodeSub = 'SUB-'+ CAST(@NUMBER as varchar);
	--insertando la Subcategory a su tabla respectiva
	INSERT INTO [dbo].[sub_category]
		(code,name,
		category_id
		)
	VALUES
		(@CodeSub,@nameSubcat,			
			@idCategory
		);
END
	GO
PRINT 'Strore Procedure InsertSubcategory creada!';
	GO

-- Create UpdateSubcategory stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Subcategory]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Update_Subcategory];
END
 GO
/******************************************************************************
**  Name: UpdateSubcategory
**  Desc: Store Procedure para Actualizar una Subcategory
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
CREATE PROCEDURE [dbo].[Update_Subcategory]
	(
	@IDSubcategry bigINT,
	--Variables a actualizar de mi tabla Subcategory 
	@nameSubcat VARCHAR(50),
	@IdCateg bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	--actualizando la Subcategory especifica
	UPDATE [dbo].[sub_category]
		SET name		 = @nameSubcat,
		    category_id	 = @IdCateg
		WHERE id = @IDSubcategry;
END
	GO
PRINT 'Strore Procedure UpdateSubcategory creada!';
	GO

-- Create DeleteSubcategory stored procedure.
IF EXISTS (SELECT * FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[DeleteSubcategory]') 
		       AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[DeleteSubcategory];
 END
 GO
/******************************************************************************
**  Name: DeleteSubcategory
**  Desc: Store Procedure para Eliminar una Subcategory
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
	CREATE PROCEDURE [dbo].[DeleteSubcategory]
	(
		--id de la Subcategory a eliminar
		@IDSubcategory bigINT
	)
	AS
		--para cualquier error esta el transaction abort
		SET XACT_ABORT ON;
		SET NOCOUNT ON;
	BEGIN
		UPDATE [dbo].[sub_category]
		SET deleted = 1
		WHERE id = @IDSubcategory;
		--eliminando la Subcategory especifica
		--DELETE FROM [dbo].[Subcategory]
		--WHERE subCategoryId = @IDSubcategory;
	END
	GO
	PRINT 'Strore Procedure DeleteSubcategory creada!';
	GO


-- Create InsertItem stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Insert_Item]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Insert_Item];
END
 GO
/******************************************************************************
**  Name: InsertItem
**  Desc: Store Procedure para Registrar un nuevo Item
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
CREATE PROCEDURE [dbo].[Insert_Item]
	(
	--Variables de mi tabla Item a insertar 
	@nameItem VARCHAR(50),
	@descripItem VARCHAR(100),
	@priceItem VARCHAR(50),
	@stateItem VARCHAR(50),
	@SubcategoryIdItem bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	DECLARE @CodeItem VARCHAR(50);
	DECLARE @NUMBER INT;
	SET @NUMBER = (SELECT (MAX(id)+1)
	FROM [dbo].[item]);
	SET @CodeItem = 'ITM-'+ CAST(@NUMBER as varchar);
	--insertando el item a su tabla respectiva
	INSERT INTO [dbo].[item]
		(code,description,name,price,state,sub_category_id)
	VALUES
		(@CodeItem,
			@descripItem,
			@nameItem,
			@priceItem,
			@stateItem,
			@SubcategoryIdItem
			);
END
	GO
PRINT 'Strore Procedure InsertItem creada!';
	GO

-- Create UpdateItem stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Item]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Update_Item];
END
 GO
/******************************************************************************
**  Name: UpdateItem
**  Desc: Store Procedure para Actualizar un Item
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
CREATE PROCEDURE [dbo].[Update_Item]
	(
	@IDItem bigINT,
	--Variables a actualizar de mi tabla Item 
	@nameItem VARCHAR(50),
	@descripItem VARCHAR(100),
	@imageItem varbinary(max),
	@priceItem VARCHAR(50),
	@stateItem VARCHAR(50),
	@IDSubcategory bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	--actualizando el item especifico
	UPDATE [dbo].[item]
		SET name		  = @nameItem,
		    description   = @descripItem, 
			image		  = @imageItem,
			price		  = @priceItem, 
			state		  = @stateItem, 
			sub_category_id = @IDSubcategory
		WHERE id	  = @IDItem;
END
	GO
PRINT 'Strore Procedure UpdateItem creada!';
	GO

-- Create DeleteItem stored procedure.
IF EXISTS (SELECT * FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[DeleteItem]') 
		       AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[DeleteItem];
 END
 GO
/******************************************************************************
**  Name: DeleteItem
**  Desc: Store Procedure para Eliminar un Item
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
	CREATE PROCEDURE [dbo].[DeleteItem]
	(
		--id del Item a eliminar
		@IDItem bigINT
	)
	AS
		--para cualquier error esta el transaction abort
		SET XACT_ABORT ON;
		SET NOCOUNT ON;
	BEGIN
		UPDATE [dbo].[Item]
		SET deleted = 1
		WHERE id = @IDItem;
		--eliminando el Item especifico
		--DELETE FROM [dbo].[Item]
		--WHERE itemId = @IDItem;
	END
	GO
	PRINT 'Strore Procedure DeleteItem creada!';
	GO

-- Create InsertItemAsignation stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Insert_Item_Asignation]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Insert_Item_Asignation];
END
 GO
/******************************************************************************
**  Name: InsertItemAsignation
**  Desc: Store Procedure para Registrar un nuevo ItemAsignation
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
CREATE PROCEDURE [dbo].[Insert_Item_Asignation]
	(
	--Variables de mi tabla ItemAsignation a insertar 
	@descripItemAsig VARCHAR(50),
	@stateActualItemAsig VARCHAR(50),
	@initDateItemAsig DATETIME,
	@endDateItemAsig DATETIME,
	@idItem bigINT,
	@IdEmployee bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	DECLARE @CodeItemAsig VARCHAR(20);
	DECLARE @NUMBER INT;
	SET @NUMBER = (SELECT (MAX(id)+1)
	FROM [dbo].[item_asignation]);
	SET @CodeItemAsig = 'ITMASIG-'+ CAST(@NUMBER as varchar);
	--insertando el itemAsignation a su tabla respectiva
	INSERT INTO [dbo].[item_asignation]
		(description,
		end_dateia,
		init_dateia,
		state_actual_item,
		employee_id,
		item_id
		)
	VALUES
		(@descripItemAsig,
		@endDateItemAsig,
		@initDateItemAsig,
		@stateActualItemAsig,
		@IdEmployee,	
		@idItem
			);
END
	GO
PRINT 'Strore Procedure InsertItemAsignation creada!';
	GO

-- Create UpdateItemAsignation stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Item_Asignation]')
	AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[Update_Item_Asignation];
END
 GO
/******************************************************************************
**  Name: UpdateItemAsignation
**  Desc: Store Procedure para Actualizar un ItemAsignation
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
CREATE PROCEDURE [dbo].[Update_Item_Asignation]
	(
	@IDItemAsig bigINT,
	--Variables a actualizar de mi tabla ItemAsignation 
	@descripItemAsig VARCHAR(50),
	@stateActualItemAsig VARCHAR(50),
	@initDateItemA DATETIME,
	@endDateItemA DATETIME,
	@IDItem bigINT,
	@IDEmployee bigINT
)
AS
--para cualquier error esta el transaction abort
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	--actualizando el itemAsignation especifico
	UPDATE [dbo].[item_asignation] 
		SET description		= @descripItemAsig, 
			state_actual_item = @stateActualItemAsig, 
			init_dateia		= @initDateItemA, 
			end_dateia		= @endDateItemA, 
			item_id			= @IDItem, 
			employee_id		= @IDEmployee
		WHERE id = @IDItemAsig;
END
	GO
PRINT 'Strore Procedure UpdateItemAsignation creada!';
	GO
-- Create DeleteItemAsignation stored procedure.
IF EXISTS (SELECT * FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[DeleteItemAsignation]') 
		       AND type in (N'P', N'PC'))
 BEGIN
	DROP PROCEDURE [dbo].[DeleteItemAsignation];
 END
 GO
/******************************************************************************
**  Name: DeleteItemAsignation
**  Desc: Store Procedure para Eliminar un ItemAsignation
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
	CREATE PROCEDURE [dbo].[DeleteItemAsignation]
	(
		--id del ItemAsignation a eliminar
		@IDItemAsignation bigINT
	)
	AS
		--para cualquier error esta el transaction abort
		SET XACT_ABORT ON;
		SET NOCOUNT ON;
	BEGIN
		--UPDATE [dbo].[ItemAsignation]
		--SET deleted = 1
		--WHERE itemasigId = @IDItemAsignation;
		--eliminando el ItemAsignation especifico
		DELETE FROM [dbo].[item_asignation]
		WHERE id = @IDItemAsignation;
	END
	GO
	PRINT 'Strore Procedure DeleteItemAsignation creada!';
	GO


-----------------------------------------Store Procedures and Functions------------------------------------------------
-------------------------------------------Insert All Tables-----------------------------------------------------------
-- create RegisterMachinery stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Machinery]')
	AND type in (N'P',N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Machinery]
END 
GO
/******************************************************************************
**  Name: RegisterMachinery
**  Desc: registrando una maquinaria nueva
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

CREATE PROCEDURE [dbo].[Register_Machinery]
	(
	@Name varchar(255),
	@Brand varchar(255),
	@Date_buy date,
	@Price money,
	@Machinery_Catalog_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

	INSERT INTO [dbo].[machinery]
		( Name
		,brand
		,date_buy
		,price
		,machinery_catalog_id
		)
	VALUES
		( @Name
			, @Brand   
			, @Date_buy
			, @Price
			, @Machinery_Catalog_id
			);

	SELECT MA.Id				AS Machinery_ID
			, MA.code			AS Machinery_Code
			, MA.name			AS Machinery_Name			
			, MA.brand			AS Machinery_Brand
			, MA.date_buy			AS Machinery_Date_buy
			, MA.price				AS Mchinery_Price
			, MC.Id					AS Machinery_Catalog_ID
			, MC.name				AS Machinery_Catalog_Name
	from machinery MA
		inner join machinery_catalog MC
		on(MA.machinery_catalog_id=MC.Id)
	where MA.id=@@IDENTITY
END
GO
PRINT 'Procedure RegisterMachinery created';
GO

-- create RegisterMachinery_Catalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Machinery_Catalog]')
	AND type in (N'P',N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Machinery_Catalog]
END 
GO


/******************************************************************************
**  Name: RegisterMachinery_Catalog
**  Desc: registrando un nuevo catalgo de maquinaria
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

CREATE PROCEDURE [dbo].[Register_Machinery_Catalog]
	(
	@Name varchar (100),
	@Descriptionn varchar (300)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

	INSERT INTO [dbo].[machinery_catalog]
		( name
		,description

		)
	VALUES
		( @Name
			, @Descriptionn
			);

	SELECT id
			, name
			, description
	from machinery_catalog
	where id=@@IDENTITY
END
GO
PRINT 'Procedure RegisterMachinery_Catalog created';
GO



-- create RegisterMaintenance  stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Maintenance]')
	AND type in (N'P',N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Maintenance]
END 
GO


/******************************************************************************
**  Name: RegisterMaintenance
**  Desc: registrando un nuevo mantemiento de maquinaria 
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

CREATE PROCEDURE [dbo].[Register_Maintenance]
	(
	@Descriptionn varchar (300),
	@Observation varchar(200),
	@Price money,
	@Timelineinitdate date,
	@Timelineenddate date,
	@Machinery_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

	INSERT INTO [dbo].[maintenance]
		(description
		,observation
		,price
		,timelineinitdate
		,timelineenddate
		,machinery_id
		)
	VALUES
		( 
			 @Descriptionn
			, @Observation
			, @Price
			, @Timelineinitdate
			, @Timelineenddate
			, @Machinery_id
			);

	SELECT MA.Id					AS Maintenance_ID
			, MA.description		AS Maint_Description
			, MA.observation		AS Maint_Observation
			, MA.price				AS Maint_Preci
			, MA.timelineinitdate	AS Maint_init_date
			, MA.timelineenddate		AS Maint_end_date
			, MAC.id					AS Machinery_ID
			, MAC.name				AS Machinery_Name
		
	from maintenance MA
		inner join machinery MAC
		on(MA.machinery_id= MAC.Id)
	where MA.id=@@IDENTITY
END
GO
PRINT 'Procedure RegisterMaintenance created';
GO

-- create RegisterMachinery stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Register_Machinery_Assignation]')
	AND type in (N'P',N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Register_Machinery_Assignation]
END 
GO
/******************************************************************************
**  Name: RegisterMachinery_Assignation
**  Desc: registrando de asiganacion de maquinaria
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

CREATE PROCEDURE [dbo].[Register_Machinery_Assignation]
	(
	@Employee_id int ,
	@Machinery_id int ,
	@Init_date date,
	@End_date date
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

	INSERT INTO [dbo].[machinery_assignation]
		( employee_id
		,machinery_id
		)
	VALUES
		( @Employee_id
			, @Machinery_id
			);

	SELECT MA.id				AS Machinery_ID
			, MA.name			AS Machinery_Name
			, MA.code			AS Machinery_Code
			, EM.id				AS Employee_ID
			, Fullname = EM.first_name+ ' ' + EM.last_Name
		
	from machinery_assignation MAS
		inner join machinery MA
		on(MAS.Machinery_id=MA.Id)
		inner join employee EM
		on(MAS.Employee_id=EM.Id)
	where  MAS.Machinery_id=@Machinery_id
		and MAS.Employee_id=@Employee_id
END
GO
PRINT 'Procedure Machinery_Assignation created';
GO
/*==============================================	UPDATE	=================================================================*/

-- Create the UpdateMachinery_Catalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Machinery_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Machinery_Catalog];
END
GO
/******************************************************************************
**  Name: UpdateMachinery_Catalog
**  Desc: actualizacion los datos de machinery_catalago
** 
**
**  Author: Jorge Beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 05/17/2018 Jorge Beltran					   Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[Update_Machinery_Catalog]
	(
	@Id int ,
	@Name varchar (255),
	@Descriptionn varchar (255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE machinery_catalog 
	SET		 name =@Name
			,description=@Descriptionn
	WHERE id = @Id;
END
GO

PRINT 'Procedure UpdateMachinery_Catalog created';
GO



-- Create the UpdateMaintenance stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Maintenance]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Maintenance]
END
GO
/******************************************************************************
**  Name: UpdateMaintenance
**  Desc: actualizacion los datos de maintenance
** 
**  
**  Author: Jorge  Beltran Aguilar 
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge Beltran					 Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[Update_Maintenance]
	(
	@Id int ,
	@Descriptionn varchar (300),
	@Observation varchar(200),
	@Price float,
	@Timelineinitdate date,
	@Timelineenddate date,
	@Machinery_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE maintenance 
	SET		description=@Descriptionn
			,observation=@Observation
			,price =@Price
			,timelineinitdate=@Timelineinitdate
			,timelineenddate=@Timelineenddate
			,machinery_id=@Machinery_id
	WHERE Id = @Id;
	BEGIN
		SELECT MA.id					AS Maintenance_ID
			, MA.description		AS Maint_Description
			, MA.Observation			AS Maint_Observation
			, MA.Price				AS Maint_Preci
			, MA.Timelineinitdate	AS Maint_init_date
			, MA.Timelineenddate		AS Maint_end_date
			, MAC.Id					AS Machinery_ID
			, MAC.Name				AS Machinery_Name
		from maintenance MA
			inner join machinery MAC
			on(MA.machinery_id= MAC.Id)
		where MA.id=@Id
	END

END
GO

PRINT 'Procedure UpdateMaintenance created';
GO


-- Create the UpdateMachinery stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Update_Machinery]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Update_Machinery];
END
GO
/******************************************************************************
**  Name: UpdateMachinery
**  Desc: actualizacion de los datos de machinery
**
**
**  Author: Jorge  Beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge Beltran				   Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[Update_Machinery]
	(
	@Id int ,
	@Name varchar(255),
	@Brand varchar(255),
	@Date_buy date,
	@Price money,
	@Machinery_Catalog_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE machinery 
	SET		 name=@Name
			,brand=@Brand
			,date_buy=@Date_buy
			,price=@Price
			,machinery_catalog_id=@Machinery_Catalog_id
	WHERE Id = @Id;
	BEGIN

		SELECT MA.id				AS Machinery_ID
			, MA.code			AS Machinery_Code
			, MA.name			AS Machinery_Name			
			, MA.brand			AS Machinery_Brand
			, MA.date_buy			AS Machinery_Date_buy
			, MA.price				AS Mchinery_Price
			, MC.id					AS Machinery_Catalog_ID
			, MC.name				AS Machinery_Catalog_Name
		from machinery MA
			inner join machinery_catalog MC
			on(MA.machinery_catalog_id=MC.id)
		where MA.id=@Id

	END

END
GO

PRINT 'Procedure UpdateMachinery created';
GO

/*=============================================		DELETE     ====================================================*/


-- Create the deleteMachinery_Catalog stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[delete_Machinery_Catalog]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[delete_Machinery_Catalog];
END
GO
/******************************************************************************
**  Name: deleteMachinery_Catalog
**  Desc: eliminacion los datos de machinery_catalago
** 
**
**  Author: Jorge Beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 05/17/2018 Jorge Beltran					   Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[delete_Machinery_Catalog]
	(
	@Id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE machinery_catalog 
	SET		 deleted=1
	WHERE id = @Id;
END
GO

PRINT 'Procedure deleteMachinery_Catalog created';
GO



-- Create the deleteMaintenance stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Maintenance]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Maintenance];
END
GO
/******************************************************************************
**  Name: DeleteMaintenance
**  Desc: eliminando los datos de maintenance
** 
**  
**  Author: Jorge  Beltran Aguilar 
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge Beltran					 Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[Delete_Maintenance]
	(
	@Id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE maintenance 
	SET		deleted=1

	WHERE id = @Id;
	BEGIN
		SELECT MA.id					AS Maintenance_ID
			, MA.deleted				AS deleted
			, MA.description		AS Maint_Description
			, MA.observation			AS Maint_Observation
			, MA.price				AS Maint_Preci
			, MA.timelineinitdate	AS Maint_init_date
			, MA.timelineenddate		AS Maint_end_date
			, MAC.id					AS Machinery_ID
			, MAC.name				AS Machinery_Name
		from maintenance MA
			inner join machinery MAC
			on(MA.machinery_id= MAC.id)
		where MA.id=@Id
	END

END
GO

PRINT 'Procedure DeleteMaintenance created';
GO


-- Create the deleteMachinery stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Machinery]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Machinery];
END
GO
/******************************************************************************
**  Name: DeleteMachinery
**  Desc: eliminamos los datos de machinery
**
**
**  Author: Jorge  Beltran Aguilar
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Jorge Beltran				   Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[Delete_Machinery]
	(
	@Id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	UPDATE machinery 
	SET		deleted=1
	WHERE id = @Id;
	BEGIN

		SELECT MA.id				AS Machinery_ID
			, MA.deleted			AS delete_Machinery
			, MA.code			AS Machinery_Code
			, MA.name			AS Machinery_Name			
			, MA.brand			AS Machinery_Brand
			, MA.date_buy			AS Machinery_Date_buy
			, MA.price				AS Mchinery_Price
			, MC.id					AS Machinery_Catalog_ID
			, MC.name				AS Machinery_Catalog_Name
		from machinery MA
			inner join machinery_catalog MC
			on(MA.machinery_catalog_id=MC.id)
		where MA.id=@Id

	END

END
GO

PRINT 'Procedure DeleteMachinery created';
GO


-- create DeleteMachinery_Assignation stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[Delete_Machinery_Assignation]')
	AND type in (N'P',N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[Delete_Machinery_Assignation]
END 
GO
/******************************************************************************
**  Name: DeleteMachinery_Assignation
**  Desc: eliminamos la asiganacion de maquinaria
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

CREATE PROCEDURE [dbo].[Delete_Machinery_Assignation]
	(
	@Employee_id int ,
	@Machinery_id int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN
	DELETE FROM machinery_assignation 
	WHERE employee_id=@Employee_id
		and machinery_id=@Machinery_id
END
GO

PRINT 'Procedure DeleteMachinery_Assignation created';
GO
-------------------------------------------Insert All Tables-----------------------------------------------------------
--  Create Position insert stored procedure.
IF OBJECT_ID ( 'dbo.insert_Position', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.insert_Position;
END
GO
/******************************************************************************
**  Name: Create Position
**  Desc: it is going to create a new Position
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

CREATE PROCEDURE [dbo].[insert_Position]
	(
	@PositionName varchar(50),
	@PositionType varchar(50),
	@PositionDescription varchar(max),
	@PositionCode varchar(50)
)

AS

SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO dbo.position
		(
		name,position_code, position_type, position_description
		)
	VALUES
		(
			@PositionName, @PositionType, @PositionDescription, @PositionCode 
)

	select name ,position_code, position_type, position_description
	from dbo.position
	where id = @@IDENTITY

END
GO

PRINT 'Procedure [dbo].[insertPosition] created';
GO


-- Create RegisterFunctionalManual stored procedure.
IF OBJECT_ID ( 'dbo.insert_Functional_Manual', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.insert_Functional_Manual
END
GO
/******************************************************************************
**  Name: Create Functional Manual
**  Desc: it is going to create a new Functional Manual
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

CREATE PROCEDURE [dbo].[insert_Functional_Manual]
	(
	@PositionID								bigint,
	@FunctionalManualName					varchar(50),
	@FunctionalManualDate					date,
	@FunctionalManualURL					varchar(50),
	@FunctionalManualOrganitationalLevel	varchar(50),
	@FunctionalManualEducationLevel			varchar(50)
)

AS

SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO dbo.funtional_manual	
		(
		position_id,
		name,
		education_level,
		organitational_level,
		date,
		url
		)
	VALUES
		(
			@PositionID,
			@FunctionalManualName,
			@FunctionalManualDate,
			@FunctionalManualURL,
			@FunctionalManualOrganitationalLevel,
			@FunctionalManualEducationLevel			
)

	select fm.id as FMID, fm.name as FMNAME, fm.description as FMDESC,
		fm.url as FMURL, fm.education_level as FMEL,
		fm.organitational_level as FMOL, p.name as PositionName, p.position_description as position_code
	from dbo.funtional_manual as fm inner join dbo.position as p on fm.position_id = p.id
	where fm.id = @@IDENTITY

END
GO

PRINT 'Procedure [dbo].[insertFunctionalManual] created';
GO


-- Create InsertContract stored procedure.
IF OBJECT_ID ( 'dbo.insert_Contract', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.insert_Contract;
END
GO
/******************************************************************************
**  Name: Create Contract
**  Desc: it is going to create a new contract
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

CREATE PROCEDURE [dbo].[insert_Contract]
	(
	@PositionId				int,
	@EmployeeId				int,
	@ContractDescription	varchar(255)
)

AS

SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[contract]
		(
			position_id, employee_id, contract_description
					)
	VALUES
		(
			@PositionId, @EmployeeId, @ContractDescription
)

	SELECT c.id as ContractID, EmpName = em.first_name + em.last_Name, p.name
	FROM dbo.contract as c inner join dbo.employee as em on c.employee_id = em.id inner join dbo.position as p on c.position_id = p.id
	WHERE c.id = @@IDENTITY

END
GO

PRINT 'Procedure [dbo].[insertContract] created';
GO

-----------------------------------------Update all Tables--------------------------------------------------------
-- Create UpdatePosition stored procedure.
IF OBJECT_ID ( 'dbo.Update_Position', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.Update_Position
END
GO
/******************************************************************************
**  Name: UpdatePosition
**  Desc: update position on SSI
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
CREATE PROCEDURE [dbo].Update_Position
	(
	@id int,
	@PositionName varchar(255),
	@PositionType varchar(255),
	@PositionDescription varchar(255),
	@PositionCode varchar(255)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE position
	SET  name					= @PositionName
		,position_type			= @PositionType
		,position_description	= @PositionDescription
		,position_code			= @PositionCode
	WHERE id = @id
END
BEGIN
	select name , position_type , position_description , position_code
	from dbo.position
	where id = @id
END
GO
PRINT 'Procedure [dbo].[UpdatePosition] created';
GO


-- Create UpdateFunctionalManual stored procedure.
IF OBJECT_ID ( 'dbo.Update_Functional_Manual', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.Update_Functional_Manual
END
GO
/******************************************************************************
**  Name: UpdateFunctionalManual
**  Desc: update Functional Manual on SSI
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
CREATE PROCEDURE [dbo].Update_Functional_Manual
	(
	@id										int,
	@PositionID								int,
	@FunctionalManualName					varchar(50),
	@FunctionalManualDescription			varchar(255),
	@FunctionalManualDate					date,
	@FunctionalManualURL					varchar(50),
	@FunctionalManualOrganitationalLevel	varchar(50),
	@FunctionalManualEducationLevel			varchar(50)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE funtional_manual
	SET	 position_id			= @PositionID
		,name					= @FunctionalManualName
		,description			= @FunctionalManualDescription
		,date					= @FunctionalManualDate
		,url					= @FunctionalManualURL
		,organitational_level	= @FunctionalManualOrganitationalLevel
		,education_level			= @FunctionalManualEducationLevel
	WHERE id = @id
END
BEGIN
	select 	fm.name as FMNAME, fm.description as FMDESC,
			fm.url as FMURL, fm.Education_Level as FMEL,
			fm.Organitational_Level as FMOL, p.name as PositionName, p.position_description as PositionCode
	from funtional_manual as fm inner join dbo.Position as p on fm.position_id = p.id
	where fm.id = @id
END
GO
PRINT 'Procedure [dbo].[UpdateFunctionalManual] created';
GO


-- Create UpdatePosition stored procedure.
IF OBJECT_ID ( 'dbo.UpdateContract', 'P' ) IS NOT NULL  
BEGIN
	DROP PROCEDURE dbo.UpdateContract;
END
GO
/******************************************************************************
**  Name: UpdateContract
**  Desc: update contract on SSI
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
CREATE PROCEDURE [dbo].UpdateContract
	(
	@id int,
	@PositionId				int,
	@EmployeeId				int,
	@ContractDescription	varchar(max)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE Contract
	SET position_id			= @PositionId
		,employee_id			= @EmployeeId
		,contract_description	= @ContractDescription
	WHERE id = @id
END
BEGIN
	SELECT c.id as ContractID, EmpName = em.first_name + em.last_Name, p.name as position
	FROM dbo.Contract as c inner join dbo.Employee as em on c.employee_id = em.Id inner join dbo.Position as p on c.position_id = p.id
	WHERE c.id = @id
END
GO
PRINT 'Procedure [dbo].[UpdateContract] created';
GO

---------------------------------------DELETE POCEDURES---------------------------------------------------------------------


-- Create [DeleteFunctionalManual] stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[DeleteFunctionalManual]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[DeleteFunctionalManual]
END
GO
/******************************************************************************
**  Name: DeleteFunctionalManual
**  Desc: Cambiar el atributo deleted a true de la tabla functional manual
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
CREATE PROCEDURE [dbo].[DeleteFunctionalManual]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE funtional_manual
	SET Deleted = 1
	WHERE id = @id
END
BEGIN
	SELECT code as Functional_CODE,
		name as Functional_Manual_Name,
		description as Functional_Manual_Description,
		education_level as Functional_Manual_Education_Required,
		organitational_level as Functional_Manual_Organizaion,
		url as Functional_Manual_URL
	FROM funtional_manual
	WHERE id = @Id
END
GO
PRINT 'Procedure [dbo].[DeleteFunctionalManual] created';
GO

-- Create [DeleteContract] stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[DeleteContract]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE dbo.DeleteContract
END
GO
/******************************************************************************
**  Name: DeleteContract
**  Desc: Cambiar el atributo deleted a true de la tabla Contract
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
CREATE PROCEDURE dbo.DeleteContract
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE Contract
	SET Deleted = 1
	WHERE id = @id
END
BEGIN
	SELECT id as Contract_ID,
		contract_description as Contract_Description,
		deleted as Contract_Deleted
	FROM contract
	WHERE id = @Id
END
GO
PRINT 'Procedure [dbo].[DeleteContract] created';
GO
/******************************************************************************
**  Name: RegisterEmployee
**  Desc: Registrar un nuevo Empleado al SSI
** 
**  Author: Luis Aviles
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Luis Aviles   	Initial version
*******************************************************************************/
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[RegisterEmployee]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[RegisterEmployee]
END
GO

CREATE PROCEDURE [dbo].[RegisterEmployee]
	(
	@Ci int,
	@FirstName varchar(50),
	@LastName varchar(50),
	@Address varchar(255),
	@Birthdate date,
	@Phone bigint
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[Employee]
		(		Ci,
		first_name,
		last_Name,
		Address,
		birth_date,
		Phone)
	VALUES
		(
			@Ci,
			@FirstName,
			@LastName,
			@Address,
			@Birthdate,
			@Phone);

	SELECT id
			, first_name
			, last_Name
			, Address
			, birth_date
			, Phone
	FROM employee
	where id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterEmployee] created';
GO

/******************************************************************************
**  Name: UpdateEmployee
**  Desc: Actualizar un nuevo Empleado en el SSI
** 
**  Author: Luis Aviles
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 21/06/2018 Luis Aviles   	Initial version
*******************************************************************************/
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[UpdateEmployee]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[UpdateEmployee]
END
GO

CREATE PROCEDURE [dbo].[UpdateEmployee]
	(
		@id int,
	@Ci int,
	@FirstName varchar(50),
	@LastName varchar(50),
	@Address varchar(255),
	@Birthdate date,
	@Phone bigint
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	UPDATE Employee
	SET 
		first_name 	= @FirstName
		,last_Name	= @LastName
		,Address	= @Address
		,birth_date	= @Birthdate
		,Phone		= @Phone
	WHERE Id = @Id
END
BEGIN
	SELECT Id
			, first_name
			, last_Name
			, Address
			, birth_date
			, Phone
	FROM Employee
	WHERE Id= @Id
END
GO
PRINT 'Procedure [dbo].[UpdateEmployee] created';
GO

------------------------------------------Insert All Tables-----------------------------------------------------------
-- Create RegisterArea stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[RegisterArea]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[RegisterArea]
END
GO
/******************************************************************************
**  Name: RegisterArea
**  Desc: Registrar un Area en el SSI
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
CREATE PROCEDURE [dbo].[RegisterArea]
	(
	@Name varchar(100),
	@Descriptionn varchar(100),
	@TypeA varchar(100),
	@SegurityManualID int,
	@OcupationalSafetyID int
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[Area]
		( Name,
		Descriptionn,
		TypeA,
		SegurityManualID,
		OcupationalSafetyID)
	VALUES
		( @Name,
			@Descriptionn,
			@TypeA,
			@SegurityManualID,
			@OcupationalSafetyID);

	SELECT a.id AS area_id
			, a.Name AS area_Name
			, a.Descriptionn AS area_Descriptionn
			, a.TypeA AS area_TypeA
			, SM.Id AS SegManu_Id
			, OS.activities AS OcuSaf_Id

	FROM Area a
		INNER JOIN SegurityManual SM
		ON(a.SegurityManualID = SM.Id)
		INNER JOIN OcupationalSafety OS
		ON(a.OcupationalSafetyID = OS.Id)
	where a.id= @@IDENTITY


END
GO
PRINT 'Procedure [dbo].[RegisterArea] created';
GO
-- Create RegisterOcupationalSafety stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[RegisterOcupationalSafety]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[RegisterOcupationalSafety]
END
GO
/******************************************************************************
**  Name: RegisterOcupationalSafety
**  Desc: Registrar Ocupational Safety en el SSI
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
CREATE PROCEDURE [dbo].[RegisterOcupationalSafety]
	(
	@activities varchar(100),
	@responsable varchar(100),
	@objetive varchar(100),
	@resources varchar(100),
	@cost int,
	@weeks varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[OcupationalSafety]
		( activities,
		responsable,
		objective,
		resources,
		cost,
		weeks)
	VALUES
		( @activities,
			@responsable,
			@objetive,
			@resources,
			@cost,
			@weeks);

	SELECT id as OcuSaf_id
			, activities AS OcuSaf_activities
			, objective  AS OcuSaf_objetive
			, resources  AS OcuSaf_resources
			, cost       AS OcuSaf_cost
			, weeks      AS OcuSaf_weeks
			, Code       AS OcuSaf_code
	FROM OcupationalSafety
	where id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterOcupationalSafety] created';
GO

-- Create RegisterSegurityManual stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[RegisterSegurityManual]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[RegisterSegurityManual]
END
GO
/******************************************************************************
**  Name: RegisterSegurityManual
**  Desc: Registrar un Segurity Manual en el SSI
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
CREATE PROCEDURE [dbo].[RegisterSegurityManual]
	(
	@Name varchar(100),
	@Descriptionn varchar(100),
	@Observations varchar(255)
)
AS
SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN
	INSERT INTO [dbo].[SegurityManual]
		( Name,
		Descriptionn,
		Observations)
	VALUES
		( @Name,
			@Descriptionn,
			@Observations);

	SELECT id            AS SeguManu_id
			, Name          AS SeguManu_name
			, Descriptionn  AS SeguManu_Descriptionn
			, Observations  AS SeguManu_Observations
	FROM SegurityManual
	where id= @@IDENTITY
END
GO
PRINT 'Procedure [dbo].[RegisterSegurityManual] created';
GO


-----------------------------------------Update all Tables--------------------------------------------------------
-- Create UpdateArea stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[UpdateArea]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[UpdateArea]
END
GO
/******************************************************************************
**  Name: UpdateArea
**  Desc: Actualizar la informacion del Area
** 
**  Author: Eduardo Moreira
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
CREATE PROCEDURE [dbo].[UpdateArea]
	(
	@Id int,
	@Name varchar(100),
	@Descriptionn varchar(100),
	@TypeA varchar(100),
	@SegurityManualID int,
	@OcupationalSafetyID int

)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE Area
	SET  Name					= @Name
		,Descriptionn			= @Descriptionn
		,TypeA					= @TypeA
		,SegurityManualID		= @SegurityManualID
		,OcupationalSafetyID	= @OcupationalSafetyID
	WHERE id = @Id
END
BEGIN
	SELECT a.Id as Area_id
			
			, a.Name            AS Area_Name
			, a.Descriptionn    AS Area_Descriptionn
			, a.TypeA           AS Area_TypeA
			, SegManu.Name      AS Segu_Manu_Name
			, OcuSaf.activities AS Ocup_Saf_Activities


	FROM Area a
		INNER JOIN SegurityManual SegManu
		ON(a.SegurityManualID = SegManu.Id)
		INNER JOIN OcupationalSafety OcuSaf
		ON(a.OcupationalSafetyID = OcuSaf.Id)
	WHERE a.id = @Id
END
GO
PRINT 'Procedure [dbo].[UpdateArea] created';
GO

-- Create UpdateOcupationalSafety stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOcupationalSafety]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[UpdateOcupationalSafety]
END
GO
/******************************************************************************
**  Name: UpdateOcupationalSafety
**  Desc: Actualizar una Ocupational Safety en el SSI
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
CREATE PROCEDURE [dbo].[UpdateOcupationalSafety]
	(
	@id int,
	@activities varchar(100),
	@responsable varchar(100),
	@objetive varchar(100),
	@resources varchar(100),
	@cost int,
	@weeks varchar(255)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE OcupationalSafety
		SET  activities		= @activities
			,responsable	= @responsable
			,objective		= @objetive
			,resources		= @resources
			,cost			= @cost
			,weeks			= @weeks
			
	WHERE  Id = @id
END
BEGIN
	SELECT id          AS OcuSaf_id
			, activities  AS OcuSaf_activities
			, responsable AS OcuSaf_responsable
			, objective   AS OcuSAf_objetive
			, resources   AS OcuSaf_resources
			, cost        AS OcuSaf_cost
			, weeks       AS OcuSaf_weeks
	FROM OcupationalSafety
	WHERE Id = @id

END
GO
PRINT 'Procedure [dbo].[UpdateOcupationalSafety] created';
GO

-- Create UpdateSegurityManual stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[UpdateSegurityManual]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[UpdateSegurityManual]
END
GO
/******************************************************************************
**  Name: UpdateSegurityManual
**  Desc: Actualizar Segurity Manual en el SSI
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
CREATE PROCEDURE [dbo].[UpdateSegurityManual]
	(
	@id int,
	@Name varchar(100),
	@Descriptionn varchar(100),
	@Observations varchar(255)
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	SegurityManual
		SET	 Name				= @Name
			,Descriptionn		= @Descriptionn
			,Observations		= @Observations
			
	WHERE  Id = @id
END
BEGIN
	SELECT id AS Aff_id
			
			, Name          AS SegManu_Name
			, Descriptionn  AS SegManu_Descriptionn
			, Observations  AS SegManu_Observations

	FROM SegurityManual
	WHERE Id = @id
END
GO
PRINT 'Procedure [dbo].[UpdateSegurityManual] created';
GO

-----------------------------------------Delete all Tables--------------------------------------------------------
-- Create DeleteArea stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[DeleteArea]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[DeleteArea]
END
GO
/******************************************************************************
**  Name: DeleteArea
**  Desc: Cambiar el atributo deleted a true de la tabla Area
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
CREATE PROCEDURE [dbo].[DeleteArea]
	(
	@Id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE Area
	SET Deleted = 1
	WHERE Id = @Id
END
BEGIN
	SELECT a.Id              AS Area_id
			, a.Code            AS Area_Code
			, a.Name            AS Area_Name
			, a.Descriptionn    AS Area_Descripcionn
			, a.TypeA           AS Area_TypeA
			, SegManu.Name      AS SegManu_Name
			, OcuSaf.activities AS OcuSaf_Activities
			, a.Deleted
	FROM Area a
		INNER JOIN SegurityManual SegManu
		ON(a.SegurityManualID = SegManu.Id)
		INNER JOIN OcupationalSafety OcuSaf
		ON(a.OcupationalSafetyID = OcuSaf.Id)
	WHERE a.Id = @Id
END
GO
PRINT 'Procedure [dbo].[DeleteArea] created';
GO


-- Create DeleteOcupationalSafety stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[DeleteOcupationalSafety]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[DeleteOcupationalSafety]
END
GO
/******************************************************************************
**  Name: DeleteOcupationalSafety
**  Desc: Cambiar el atributo deleted a true de la tabla OcupationalSafety
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
CREATE PROCEDURE [dbo].[DeleteOcupationalSafety]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE OcupationalSafety
		SET Deleted = 1
	WHERE  Id = @id
END
BEGIN
	SELECT id          AS OcuSaf_id
			, activities  AS OcuSaf_activities
			, responsable AS OcuSaf_responsable
			, objective   AS OcuSAf_objetive
			, resources   AS OcuSaf_resources
			, cost        AS OcuSaf_cost
			, weeks       AS OcuSaf_weeks
	FROM OcupationalSafety
	WHERE Id =@id
END
GO
PRINT 'Procedure [dbo].[DeleteOcupationalSafety] created';
GO


-- Create DeleteSegurityManual stored procedure.
IF EXISTS (SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID(N'[dbo].[DeleteSegurityManual]')
	AND type in (N'P', N'PC'))
BEGIN
	DROP PROCEDURE [dbo].[DeleteSegurityManual]
END
GO
/******************************************************************************
**  Name: DeleteSegurityManual
**  Desc: Cambiar el atributo deleted a true de la tabla SegurityManual
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
CREATE PROCEDURE [dbo].[DeleteSegurityManual]
	(
	@id int
)
AS
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN
	UPDATE	SegurityManual
		SET	Deleted = 1
	WHERE  Id = @id
END
BEGIN
	SELECT id           AS SegManu_id
			, Deleted
			, Name         AS SegManu_Name
			, Descriptionn  AS SegManu_Description
			, Observations AS SegManu_Observations

	FROM SegurityManual
END
GO
PRINT 'Procedure [dbo].[DeleteSegurityManual] created';
GO

PRINT 'Start of DWSSI functions ans Store Procedures Execution....';
GO