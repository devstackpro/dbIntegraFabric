CREATE TABLE tblShiftReport (
  Sortkey VARCHAR(50)  NOT NULL DEFAULT 1 ,
  Date VARCHAR(50)  NOT NULL  ,
  Loom VARCHAR(50)  NOT NULL  ,
  Style VARCHAR(50)  NOT NULL  ,
  RPM VARCHAR(10)  NULL  ,
  EfficPercent VARCHAR(50)  NULL  ,
  RunMinute VARCHAR(50)  NULL  ,
  StopMinute VARCHAR(50)  NULL  ,
  ProductPick VARCHAR(255)  NULL  ,
  WarpCount VARCHAR(50)  NULL  ,
  WarpMinute VARCHAR(50)  NULL  ,
  WarpRatePH VARCHAR(50)  NULL  ,
  WarpRatePDAY VARCHAR(50)  NULL  ,
  WarpRatePP VARCHAR(50)  NULL  ,
  Weft_Count VARCHAR(50)  NULL  ,
  WeftMinute VARCHAR(50)  NULL  ,
  WeftRatePH VARCHAR(50)  NULL  ,
  WeftRatePDAY VARCHAR(50)  NULL  ,
  WeftRatePP VARCHAR(50)  NULL  ,
  UnselectCount VARCHAR(50)  NULL  ,
  UnselectMinute VARCHAR(50)  NULL  ,
  Unselect2Count VARCHAR(50)  NULL  ,
  UnselectRatePH VARCHAR(50)  NULL  ,
  UnselectRatePDAY VARCHAR(50)  NULL  ,
  UnselectRatePP VARCHAR(50)  NULL  ,
  TotalCount VARCHAR(50)  NULL  ,
  TotalMinute VARCHAR(50)  NULL  ,
  Total2Count VARCHAR(50)  NULL  ,
  TotalRatePH VARCHAR(50)  NULL  ,
  TotalRatePDAY VARCHAR(50)  NULL  ,
  TotalRatePP VARCHAR(50)  NULL  ,
  DateInsert TIMESTAMP  NULL DEFAULT current_timestamp()   ,
PRIMARY KEY(Sortkey, Date, Loom, Style));



CREATE TABLE tblProduction (
  date VARCHAR(50)  NOT NULL  ,
  Loom VARCHAR(50)  NOT NULL  ,
  Style VARCHAR(50)  NOT NULL  ,
  Product_Pick VARCHAR(50)  NULL  ,
  DateInsert TIMESTAMP  NULL DEFAULT current_timestamp()   ,
PRIMARY KEY(date, Loom, Style));



CREATE TABLE tblDisplayOperacao (
  DateInsert TIMESTAMP  NOT NULL DEFAULT current_timestamp() ,
  Tear VARCHAR(50)  NOT NULL  ,
  Artigo VARCHAR(50)  NOT NULL  ,
  TearStatus VARCHAR(50)  NULL  ,
  Continuando VARCHAR(50)  NULL   COMMENT 'HORA:MINUTO' ,
  ParadasEficienciaTurnoAtual VARCHAR(50)  NULL  ,
  ParadasEficiencia24h VARCHAR(50)  NULL  ,
  RPM VARCHAR(50)  NULL  ,
  PrevisaoTrocaRoloTecido VARCHAR(50)  NULL   COMMENT 'HORA:MINUTO' ,
  PrevisaoTrocaRoloUrdume VARCHAR(50)  NULL   COMMENT 'HORA:MINUTO'   ,
PRIMARY KEY(DateInsert, Tear, Artigo));







