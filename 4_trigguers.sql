USE SSICODE
PRINT 'Start of Triggers and auntitory histori excecution Execution....';
GO

------------------------------------Auditoria y creacion de triggers para la misma-----------------------------
--Tabla de Auditoria
PRINT 'Creating the AuditHistory table....';
IF NOT EXISTS(SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'dbo.Audit_History')
				AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[audit_history](
			[AuditHistoryId] bigINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
			[TableName]		 VARCHAR(255) NULL,
			[ColumnName]	 VARCHAR(255) NULL,
			[ID]             bigINT NULL,
			[Date]           DATETIME NULL DEFAULT (GETUTCDATE()),
			[Oldvalue]       VARCHAR(MAX) NULL,
			[NewValue]       VARCHAR(MAX) NULL,
			[ModifiedBy]     bigINT NULL DEFAULT(1)
	);
	PRINT 'Table AuditHistory created!';
END
ELSE
	BEGIN
		PRINT 'Table AuditHistory already exist into the database'
	END
GO 
-- Create TG_Update_Project Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Project]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Project]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Project
**  Desc: Audit History for Project table
** 
**
**  Author: Carlos Meneses
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:

** --------   --------        ---------------------------------------------------
** 14/06/2018 Carlos Meneses   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Project]
ON [dbo].[Project]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esProject int;
  
  SELECT @esProject = count(*)
  FROM dbo.Project p inner join
  inserted i on p.Id = i.Id
  
  IF(@esProject > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END
	IF UPDATE(Location)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'Location',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Location, 
				NewValue     = i.Location         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Location, '') != ISNULL(i.Location, '');
	END
	IF UPDATE(Init_date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'Init_date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Init_date, 
				NewValue     = i.Init_date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Init_date, '') != ISNULL(i.Init_date, '');
	END
	IF UPDATE(End_date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'End_date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.End_date, 
				NewValue     = i.End_date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.End_date, '') != ISNULL(i.End_date, '');
	END	
	IF UPDATE(Activate)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'Activate',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Activate, 
				NewValue     = i.Activate         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Activate, '') != ISNULL(i.Activate, '');
	 END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Project', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		
  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Project] created';
GO
-- Create TG_Update_Affliction Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Affliction]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Affliction]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Affliction
**  Desc: Audit History for Affliction table
** 
**
**  Author: Carlos Meneses
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Carlos Meneses   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Affliction]
ON [dbo].[Affliction]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esAffliction int;
  
  SELECT @esAffliction = count(*)
  FROM dbo.Affliction a inner join
  inserted i on a.Id = i.Id
  
  IF(@esAffliction > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END
	IF UPDATE(Description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Description, 
				NewValue     = i.Description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Description, '') != ISNULL(i.Description, '');
	END
	IF UPDATE(Registration_date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Registration_date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Registration_date, 
				NewValue     = i.Registration_date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Registration_date, '') != ISNULL(i.Registration_date, '');
	END
	IF UPDATE(Employee_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Employee_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Employee_id, 
				NewValue     = i.Employee_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Employee_id, '') != ISNULL(i.Employee_id, '');
	END	
	IF UPDATE(Affliction_Catalog_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Affliction_Catalog_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Affliction_Catalog_id, 
				NewValue     = i.Affliction_Catalog_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Affliction_Catalog_id, '') != ISNULL(i.Affliction_Catalog_id, '');
	 END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Affliction', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Affliction] created';
GO
-- Create TG_Update_Incident Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Incident]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Incident]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Incident
**  Desc: Audit History for Incident table
** 
**
**  Author: Carlos Meneses
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Carlos Meneses   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Incident]
ON [dbo].[Incident]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esIncident int;
  
  SELECT @esIncident = count(*)
  FROM dbo.Incident ici inner join
  inserted i on ici.Id = i.Id
  
  IF(@esIncident > 0)
  BEGIN
	IF UPDATE(Description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Description, 
				NewValue     = i.Description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Description, '') != ISNULL(i.Description, '');
	END
	IF UPDATE(Place)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Place',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Place, 
				NewValue     = i.Place         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Place, '') != ISNULL(i.Place, '');
	END
	IF UPDATE(Registration_date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Registration_date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Registration_date, 
				NewValue     = i.Registration_date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Registration_date, '') != ISNULL(i.Registration_date, '');
	END
	IF UPDATE(Employee_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Employee_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Employee_id, 
				NewValue     = i.Employee_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Employee_id, '') != ISNULL(i.Employee_id, '');
	END	
	IF UPDATE(Incident_Catalog_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Affliction_Catalog_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Incident_Catalog_id, 
				NewValue     = i.Incident_Catalog_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Incident_Catalog_id, '') != ISNULL(i.Incident_Catalog_id, '');
	 END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Incident', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Incident] created';
GO

--Creacion del trigger TG_ItemAftertUpdate
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_ItemAftertUpdate]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_ItemAftertUpdate]
END
GO
/******************************************************************************
**  Name: TG_ItemAftertUpdate
**  Desc: Audit History for Item table
**
**  Author: Noemi Luna Huanca
**
**  Date: 28/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 28/06/2018 Noemi Luna Huanca   Initial version
*******************************************************************************/
CREATE TRIGGER TG_ItemAftertUpdate
ON [dbo].[Item]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 DECLARE @CurrDate DATETIME = GETUTCDATE();
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Item', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END 
	
	 IF UPDATE(price)
	BEGIN
    INSERT INTO dbo.audit_history(TableName,
								 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Item',
		   ColumnName   = 'price',
           ID           = i.id, 
           Date         = @CurrDate, 
           OldValue     = d.price, 
           NewValue     = i.price          
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.id = i.id)
    WHERE ISNULL(d.price, '') != ISNULL(i.price, '');
  END

  IF UPDATE(sub_category_id)
  BEGIN
    INSERT INTO dbo.audit_history(TableName,
								 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Item',
		   ColumnName   = 'sub_category_id',
           ID           = i.id, 
           Date         = @CurrDate, 
           OldValue     = d.sub_category_id, 
           NewValue     = i.sub_category_id          
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.id = i.id)
    WHERE ISNULL(d.sub_category_id, '') != ISNULL(i.sub_category_id, '');
  END

  IF UPDATE(description)
  BEGIN
    INSERT INTO dbo.audit_history(TableName,
								 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Item',
		   ColumnName   = 'description',
           ID           = i.id, 
           Date         = @CurrDate, 
           OldValue     = d.description, 
           NewValue     = i.description          
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.id = i.id)
    WHERE ISNULL(d.description, '') != ISNULL(i.description, '');
  END

  IF UPDATE(state)
  BEGIN
    INSERT INTO dbo.audit_history(TableName,
								 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Item',
		   ColumnName   = 'state',
           ID           = i.id, 
           Date         = @CurrDate, 
           OldValue     = d.state, 
           NewValue     = i.state          
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.id = i.id)
    WHERE ISNULL(d.state, '') != ISNULL(i.state, '');
  END

  IF UPDATE(deleted)
  BEGIN
    INSERT INTO dbo.audit_history(TableName,
								 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Item',
		   ColumnName   = 'deleted',
           ID           = i.id, 
           Date         = @CurrDate, 
           OldValue     = d.deleted, 
           NewValue     = i.deleted          
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.id = i.id)
    WHERE ISNULL(d.deleted, '') != ISNULL(i.deleted, '');
  END
END
END;
GO
PRINT 'Trigger [dbo].[TG_ItemAftertUpdate] creada';


--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Accident
**  Desc: Audit History for Accident table
** 
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------					  -------------------------------------
** 21/06/2018 Rudy Salvatierra Rodriguez			Initial version
*******************************************************************************/
-- Create TG_Update_Accident Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Accident]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Accident]
END
GO

CREATE TRIGGER [dbo].TG_Update_Accident
ON [dbo].[accident]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esAccident int;
  
  SELECT @esAccident = count(*)
  FROM dbo.Accident a inner join
  inserted i on a.id = i.id
  
  IF(@esAccident > 0)
  BEGIN
	IF UPDATE(Accident_description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_description, 
				NewValue     = i.Accident_description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_description, '') != ISNULL(i.Accident_description, '');
	END
	IF UPDATE(Accident_disability_day)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_disability_day',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_disability_day, 
				NewValue     = i.Accident_disability_day         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_disability_day, '') != ISNULL(i.Accident_disability_day, '');
	END
	IF UPDATE(Accident_medical_center)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_medical_center',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_medical_center, 
				NewValue     = i.Accident_medical_center         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_medical_center, '') != ISNULL(i.Accident_medical_center, '');
	END
	IF UPDATE(Accident_place)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_place',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_place, 
				NewValue     = i.Accident_place         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_place, '') != ISNULL(i.Accident_place, '');
	END	
	IF UPDATE(Accident_supervisor)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_supervisor',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_supervisor, 
				NewValue     = i.Accident_supervisor         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_supervisor, '') != ISNULL(i.Accident_supervisor, '');
	 END
	IF UPDATE(Accident_witness)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'Accident_witness',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Accident_witness, 
				NewValue     = i.Accident_witness         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Accident_witness, '') != ISNULL(i.Accident_witness, '');
	 END
	 IF UPDATE(catalogfi_id)
	 BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'catalogfi_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.catalogfi_id, 
				NewValue     = i.catalogfi_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.catalogfi_id, '') != ISNULL(i.catalogfi_id, '');
	 END
	  IF UPDATE(catalogni_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'catalogni_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.catalogni_id, 
				NewValue     = i.catalogni_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.catalogni_id, '') != ISNULL(i.catalogni_id, '');
	 END
	  IF UPDATE(catalogtd_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'catalogtd_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.catalogtd_id, 
				NewValue     = i.catalogtd_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.catalogtd_id, '') != ISNULL(i.catalogtd_id, '');
	 END
	  IF UPDATE(catalogua_id)
	  BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'catalogua_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.catalogua_id, 
				NewValue     = i.catalogua_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.catalogua_id, '') != ISNULL(i.catalogua_id, '');
	  END
	  IF UPDATE(cataloguc_id)
	  BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'cataloguc_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.cataloguc_id, 
				NewValue     = i.cataloguc_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.cataloguc_id, '') != ISNULL(i.cataloguc_id, '');
	 END
	 IF UPDATE(Deleted)
	 BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident', 
				ColumnName   = 'deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.deleted, 
				NewValue     = i.deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.deleted, '') != ISNULL(i.deleted, '');
	END		
  END
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_AccidentR
**  Desc: Audit History for Accident Registry table
** 
**
**  Author: Rudy Salvatierra Rodriguez
**
**  Date: 21/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------					  -------------------------------------
** 21/06/2018 Rudy Salvatierra Rodriguez			Initial version
*******************************************************************************/
-- Create TG_Update_AccidentR Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_AccidentR]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_AccidentR]
END
GO

CREATE TRIGGER [dbo].TG_Update_AccidentR
ON [dbo].[accident_registry]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esAccident int;
  
  SELECT @esAccident = count(*)
  FROM dbo.Accident_registry a inner join
  inserted i on a.id = i.id
  
  IF(@esAccident > 0)
  BEGIN
	IF UPDATE(accident_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident_registry', 
				ColumnName   = 'Id_Accident',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.accident_id, 
				NewValue     = i.accident_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.accident_id, '') != ISNULL(i.accident_id, '');
	END
	IF UPDATE(employee_id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident_registry', 
				ColumnName   = 'employee_id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.employee_id, 
				NewValue     = i.employee_id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.employee_id, '') != ISNULL(i.employee_id, '');
	END
	IF UPDATE(accident_registry_date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident_registry', 
				ColumnName   = 'accident_registry_date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.accident_registry_date, 
				NewValue     = i.accident_registry_date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.accident_registry_date, '') != ISNULL(i.accident_registry_date, '');
	END
	IF UPDATE(accident_registry_hour)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident_registry', 
				ColumnName   = 'accident_registry_hour',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.accident_registry_hour, 
				NewValue     = i.accident_registry_hour         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.accident_registry_hour, '') != ISNULL(i.accident_registry_hour, '');
	END
	 IF UPDATE(Deleted)
	 BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Accident_registry', 
				ColumnName   = 'deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.deleted, 
				NewValue     = i.deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.deleted, '') != ISNULL(i.deleted, '');
	END		
END
PRINT 'Trigger [dbo].[TG_Update_AccidentR] created';
END
GO

-- Create TG_Update_Maintenance Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Maintenance]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Maintenance]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Maintenance
**  Desc: Audit History for Maintenance table
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
** 14/06/2018 Jorge Beltran				   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Maintenance]
ON [dbo].[maintenance]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esMaintenance int;
  
  SELECT @esMaintenance = count(*)
  FROM dbo.Maintenance p inner join
  inserted i on p.Id = i.Id
  
  IF(@esMaintenance > 0)
  BEGIN
	IF UPDATE(description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Maintenance', 
				ColumnName   = 'description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.description, 
				NewValue     = i.description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.description, '') != ISNULL(i.description, '');
	END
	IF UPDATE(Price)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Maintenance', 
				ColumnName   = 'Price',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Price, 
				NewValue     = i.Price         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Price, '') != ISNULL(i.Price, '');
	END
	IF UPDATE(Timelineinitdate)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Maintenance', 
				ColumnName   = 'Timelineinitdate',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Timelineinitdate, 
				NewValue     = i.Timelineinitdate         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Timelineinitdate, '') != ISNULL(i.Timelineinitdate, '');
	END
	IF UPDATE(Timelineenddate)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Maintenance', 
				ColumnName   = 'Timelineenddate',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Timelineenddate, 
				NewValue     = i.Timelineenddate         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Timelineenddate, '') != ISNULL(i.Timelineenddate, '');
	END	
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Maintenance', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Maintenance] created';
GO




-- Create TG_Update_Machinery_Catalog Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Machinery_Catalog]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Machinery_Catalog]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Machinery_Catalog
**  Desc: Audit History for TG_Update_Machinery_Catalog table
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
** 14/06/2018 Jorge Beltran				   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Machinery_Catalog]
ON [dbo].[machinery_catalog]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esMachineryCatalog int;
  
  SELECT @esMachineryCatalog = count(*)
  FROM dbo.Machinery_Catalog p inner join
  inserted i on p.Id = i.Id
  
  IF(@esMachineryCatalog > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery_Catalog', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery_Catalog', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Machinery_Catalog] created';
GO



-- Create TG_Update_Machinery Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Machinery]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Machinery]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Machinery
**  Desc: Audit History for TG_Update_Machinery table
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
** 14/06/2018 Jorge Beltran				   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Machinery]
ON [dbo].[machinery]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esMachinery int;
  
  SELECT @esMachinery = count(*)
  FROM dbo.Machinery p inner join
  inserted i on p.Id = i.Id
  
  IF(@esMachinery > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END

		IF UPDATE(Date_buy)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery', 
				ColumnName   = 'Date_buy',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Date_buy, 
				NewValue     = i.Date_buy         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Date_buy, '') != ISNULL(i.Date_buy, '');
	END	
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		
	IF UPDATE(Price)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Machinery', 
				ColumnName   = 'Price',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Price, 
				NewValue     = i.Price         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Price, '') != ISNULL(i.Price, '');
	END
  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Machinery] created';
GO
-- Create TG_Update_Position Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_UpdatePosition]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_UpdatePosition]
END
GO
--Trigger creation
/******************************************************************************
**  Name: TG_UpdatePosition
**  Desc: Audit History for Position table
** 
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_UpdatePosition]
ON [dbo].[position]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esPosition int;
  
  SELECT @esPosition = count(*)
  FROM dbo.Position p inner join
  inserted i on p.id = i.id
  
  IF(@esPosition > 0)
  BEGIN
	IF UPDATE(name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Position', 
				ColumnName   = 'name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.name, 
				NewValue     = i.name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.name, '') != ISNULL(i.name, '');
	END
	IF UPDATE(Position_Type)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Position', 
				ColumnName   = 'Position_Type',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Position_Type, 
				NewValue     = i.Position_Type         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Position_Type, '') != ISNULL(i.Position_Type, '');
	END
	IF UPDATE(position_Description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Position', 
				ColumnName   = 'Position_Description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Position_Description, 
				NewValue     = i.Position_Description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Position_Description, '') != ISNULL(i.Position_Description, '');
	END
	IF UPDATE(Position_Code)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Position', 
				ColumnName   = 'Position_Code',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Position_Code, 
				NewValue     = i.Position_Code         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Position_Code, '') != ISNULL(i.Position_Code, '');
	END	
  END
END
GO
PRINT 'Trigger [dbo].[TG_UpdatePosition] created';
GO

-- Create TG_UpdateFunctionalManual Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_UpdateFunctionalManual]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].TG_UpdateFunctionalManual
END
GO
--Trigger creation
/******************************************************************************
**  Name: TG_UpdateFunctionalManual
**  Desc: Audit History for Functional Manual table
** 
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_UpdateFunctionalManual]
ON [dbo].[funtional_manual]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esFunctionalManual int;
  
  SELECT @esFunctionalManual = count(*)
  FROM [dbo].[funtional_manual] p inner join
  inserted i on p.id = i.id
  
  IF(@esFunctionalManual > 0)
  BEGIN
	IF UPDATE(name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'name',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.name, 
				NewValue     = i.name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.name, '') != ISNULL(i.name, '');
	END

	IF UPDATE(description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.description, 
				NewValue     = i.description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.description, '') != ISNULL(i.description, '');
	END
	IF UPDATE(date)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'date',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.date, 
				NewValue     = i.date         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.date, '') != ISNULL(i.date, '');
	END	
	IF UPDATE(url)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'url',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.url, 
				NewValue     = i.url         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.url, '') != ISNULL(i.url, '');
	END	
	IF UPDATE(organitational_level)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'organitational_level',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.organitational_level, 
				NewValue     = i.organitational_level         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.organitational_level, '') != ISNULL(i.organitational_level, '');
	END	
	IF UPDATE(education_level)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'education_level',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.education_level, 
				NewValue     = i.education_level         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.education_level, '') != ISNULL(i.education_level, '');
	END	

	IF UPDATE(deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'funtional_manual', 
				ColumnName   = 'deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.deleted, 
				NewValue     = i.deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.deleted, '') != ISNULL(i.deleted, '');
	END	
  END
END
GO
PRINT 'Trigger [dbo].[TG_UpdateFunctionalManual] created';
GO



-- Create TG_UpdateContract Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_UpdateContract]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].TG_UpdateContract
END
GO
--Trigger creation
/******************************************************************************
**  Name: TG_UpdateContract
**  Desc: Audit History for Contract table
** 
**
**  Author: Joaquin Gonzales
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Joaquin Gonzales   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_UpdateContract]
ON [dbo].[contract]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esContract int;
  
  SELECT @esContract = count(*)
  FROM dbo.Contract p inner join
  inserted i on p.id = i.id
  
  IF(@esContract > 0)
  BEGIN
	IF UPDATE(Contract_Description)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Contract', 
				ColumnName   = 'Contract_Description',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Contract_Description, 
				NewValue     = i.Contract_Description         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Contract_Description, '') != ISNULL(i.Contract_Description, '');
	END
	IF UPDATE(Position_Id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Contract', 
				ColumnName   = 'Position_Id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Position_Id, 
				NewValue     = i.Position_Id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Position_Id, '') != ISNULL(i.Position_Id, '');
	END
	IF UPDATE(Employee_Id)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Contract', 
				ColumnName   = 'Employee_Id',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.Employee_Id, 
				NewValue     = i.Employee_Id         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.Employee_Id, '') != ISNULL(i.Employee_Id, '');
	END
	
	IF UPDATE(deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Contract', 
				ColumnName   = 'deleted',
				ID1          = i.id, 
				Date         = @fechaActual, 
				OldValue     = d.deleted, 
				NewValue     = i.deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.id = i.id)
		WHERE ISNULL(d.deleted, '') != ISNULL(i.deleted, '');
	END	
  END
END
GO
PRINT 'Trigger [dbo].[TG_UpdateContract] created';
GO
-- Create TG_Update_Employee Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Employee]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Employee]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Employee
**  Desc: Audit History for Employee table
** 
**
**  Author: Luis Aviles
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 20/06/2018 Luis Aviles	   Adding Audit History for Employee table
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_Employee]
ON [dbo].[employee]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @CurrDate DATETIME = GETUTCDATE();
 
  IF UPDATE(Ci)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'Ci',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[Ci], 
           NewValue     = i.[Ci]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.Ci, '') != ISNULL(i.Ci, '');
  END
  IF UPDATE(First_Name)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'First_Name',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[First_Name], 
           NewValue     = i.[First_Name]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.First_Name, '') != ISNULL(i.First_Name, '');
  END
  IF UPDATE(Last_Name)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'Last_Name',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[Last_Name], 
           NewValue     = i.[Last_Name]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.Last_Name, '') != ISNULL(i.Last_Name, '');
  END
  IF UPDATE(Address)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'Address',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[Address], 
           NewValue     = i.[Address]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.Address, '') != ISNULL(i.Address, '');
  END
  IF UPDATE(Birth_date)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'Birth_date',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[Birth_date], 
           NewValue     = i.[Birth_date]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.Birth_date, '') != ISNULL(i.Birth_date, '');
  END
  IF UPDATE(Phone)
  BEGIN
    INSERT INTO dbo.audit_history(TableName, 
                                 ColumnName, 
                                 ID, 
                                 Date, 
                                 OldValue, 
                                 NewValue) 
    SELECT TableName    = 'Employee', 
           ColumnName   = 'Phone',
           ID1          = i.Id, 
           Date         = @CurrDate, 
           OldValue     = d.[Phone], 
           NewValue     = i.[Phone]         
    FROM deleted d 
    FULL OUTER JOIN inserted i ON (d.Id = i.Id)
    WHERE ISNULL(d.Phone, '') != ISNULL(i.Phone, '');
  END
  END
GO
PRINT 'Trigger [dbo].[TG_Update_Employee] created';
GO
PRINT 'End of Script Execution....';
GO
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_Area]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_Area]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_Area
**  Desc: Audit History for Area table
** 
**
**  Author: Eduardo Moreira
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
CREATE TRIGGER dbo.TG_Update_Area
ON dbo.Area
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @Name DATETIME = GETUTCDATE()
		, @esArea int;
  
  SELECT @esArea = count(*)
  FROM dbo.Area p inner join
  inserted i on p.Id = i.Id
  DECLARE @CurrDate DATETIME = GETUTCDATE();
  IF(@esArea > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID,
										Date,  
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'Name',
				ID1          = i.id,
				Date         = @CurrDate,  
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END
	IF UPDATE(Descriptionn)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'Descriptionn',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.Descriptionn, 
				NewValue     = i.Descriptionn         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Descriptionn, '') != ISNULL(i.Descriptionn, '');
	END
	IF UPDATE(TypeA)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'TypeA',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.TypeA, 
				NewValue     = i.TypeA         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.TypeA, '') != ISNULL(i.TypeA, '');
	END
	IF UPDATE(SegurityManualID)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'SegurityManualID',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.SegurityManualID, 
				NewValue     = i.SegurityManualID         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.SegurityManualID, '') != ISNULL(i.SegurityManualID, '');
	END	
	IF UPDATE(OcupationalSafetyID)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'OcupationalSafetyID',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.OcupationalSafetyID, 
				NewValue     = i.OcupationalSafetyID         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.OcupationalSafetyID, '') != ISNULL(i.OcupationalSafetyID, '');
	 END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'Area', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		
  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_Area] created';
GO

-- Create TG_Update_OcupationalSafety Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_OcupationalSafety]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_OcupationalSafety]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_OcupationalSafety
**  Desc: Audit History for OcupationalSafety table
** 
**
**  Author: Eduardo Moreira
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_OcupationalSafety]
ON [dbo].[OcupationalSafety]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esOcupationalSafety int;
  
  SELECT @esOcupationalSafety = count(*)
  FROM dbo.OcupationalSafety a inner join
  inserted i on a.Id = i.Id
  DECLARE @CurrDate DATETIME = GETUTCDATE();
  IF(@esOcupationalSafety > 0)
  BEGIN
	IF UPDATE(Activities)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'Activities',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.Activities, 
				NewValue     = i.Activities         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Activities, '') != ISNULL(i.Activities, '');
	END
	IF UPDATE(responsable)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'responsable',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.responsable, 
				NewValue     = i.responsable         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.responsable, '') != ISNULL(i.responsable, '');
	END
	IF UPDATE(objective)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'objetive',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.objective, 
				NewValue     = i.objective         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.objective, '') != ISNULL(i.objective, '');
	END
	IF UPDATE(resources)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'resources',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.resources, 
				NewValue     = i.resources         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.resources, '') != ISNULL(i.resources, '');
	END	
	IF UPDATE(cost)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'cost',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.cost, 
				NewValue     = i.cost         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.cost, '') != ISNULL(i.cost, '');
	 END
	 IF UPDATE(weeks)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'weeks',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.weeks, 
				NewValue     = i.weeks         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.weeks, '') != ISNULL(i.weeks, '');
	 END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date, 
										OldValue, 
										NewValue) 
		SELECT TableName     = 'OcupationalSafety', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				 Date         = @CurrDate,
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_OcupationalSafety] created';
GO
-- Create TG_Update_SegurityManual Trigger.
IF EXISTS (SELECT * FROM sys.objects 
		WHERE object_id = OBJECT_ID(N'[dbo].[TG_Update_SegurityManual]') 
		AND type in (N'TR'))
BEGIN
	DROP TRIGGER [dbo].[TG_Update_SegurityManual]
END
GO
--Creacion del trigger
/******************************************************************************
**  Name: TG_Update_SegurityManual
**  Desc: Audit History for SegurityManual table
** 
**
**  Author: Eduardo Moreira
**
**  Date: 20/06/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 14/06/2018 Eduardo Moreira   Initial version
*******************************************************************************/
CREATE TRIGGER [dbo].[TG_Update_SegurityManual]
ON [dbo].[SegurityManual]
FOR UPDATE
AS
BEGIN
  IF TRIGGER_NESTLEVEL(@@ProcID) > 1 
    RETURN
 
  SET NOCOUNT ON;
  SET XACT_ABORT ON;
 
  DECLARE @fechaActual DATETIME = GETUTCDATE()
		, @esSegurityManual int;
  
  SELECT @esSegurityManual = count(*)
  FROM dbo.SegurityManual ici inner join
  inserted i on ici.Id = i.Id
  DECLARE @CurrDate DATETIME = GETUTCDATE();
  IF(@esSegurityManual > 0)
  BEGIN
	IF UPDATE(Name)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'SegurityManual', 
				ColumnName   = 'Name',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.Name, 
				NewValue     = i.Name         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Name, '') != ISNULL(i.Name, '');
	END
	IF UPDATE(Descriptionn)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'SegurityManual', 
				ColumnName   = 'Descriptionn',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.Descriptionn, 
				NewValue     = i.Descriptionn         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Descriptionn, '') != ISNULL(i.Descriptionn, '');
	END
	IF UPDATE(Observations)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'SegurityManual', 
				ColumnName   = 'Observations',
				ID1          = i.id, 
				Date         = @CurrDate,
				OldValue     = d.Observations, 
				NewValue     = i.Observations         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Observations, '') != ISNULL(i.Observations, '');
	END
	 IF UPDATE(Deleted)
	BEGIN
		INSERT INTO dbo.audit_history(TableName, 
										ColumnName, 
										ID, 
										Date,
										OldValue, 
										NewValue) 
		SELECT TableName     = 'SegurityManual', 
				ColumnName   = 'Deleted',
				ID1          = i.id, 
				Date         = @CurrDate, 
				OldValue     = d.Deleted, 
				NewValue     = i.Deleted         
		FROM deleted d 
		FULL OUTER JOIN inserted i ON (d.Id = i.Id)
		WHERE ISNULL(d.Deleted, '') != ISNULL(i.Deleted, '');
	END		

  END
END
GO
PRINT 'Trigger [dbo].[TG_Update_SegurityManual] created';
GO
PRINT 'End of Script Execution....';
GO