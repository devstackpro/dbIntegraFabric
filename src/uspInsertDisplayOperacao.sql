CREATE PROCEDURE dbintegrafabric.uspInsertDisplayOperacao(
    IN Tear VARCHAR(50),
    IN Artigo VARCHAR(50),
    IN TearStatus VARCHAR(50),
    IN Continuando VARCHAR(50),
    IN ParadasEficienciaTurnoAtual VARCHAR(50),
    IN ParadasEficiencia24h VARCHAR(50),
    IN RPM VARCHAR(50),
    IN PrevisaoTrocaRoloTecido VARCHAR(50),
    IN PrevisaoTrocaRoloUrdume VARCHAR(50)
    )
BEGIN

INSERT INTO tblDisplayOperacao (
    Tear,
    Artigo,
    TearStatus,
    Continuando,
    ParadasEficienciaTurnoAtual,
    ParadasEficiencia24h,
    RPM,
    PrevisaoTrocaRoloTecido,
    PrevisaoTrocaRoloUrdume
    )
VALUES (
    Tear,
    Artigo,
    TearStatus,
    Continuando,
    ParadasEficienciaTurnoAtual,
    ParadasEficiencia24h,
    RPM,
    PrevisaoTrocaRoloTecido,
    PrevisaoTrocaRoloUrdume
    );

END;

