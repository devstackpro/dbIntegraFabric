CREATE PROCEDURE dbintegrafabric.uspInsertProduction(
    IN Date VARCHAR(50),
    IN Loom VARCHAR(50),
    IN Style VARCHAR(50),
    IN Product_Pick VARCHAR(50)
    )
BEGIN

INSERT INTO tblproduction (
    Date,
    Loom,
    Style,
    Product_Pick
    )
VALUES (
    Date,
    Loom,
    Style,
    Product_Pick
    );

END;