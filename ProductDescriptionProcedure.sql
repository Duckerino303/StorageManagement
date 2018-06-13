CREATE PROCEDURE ProductDesc 
	@ProductID int
AS
BEGIN
	SELECT ProductList.ProductName, Categories.CategoryName, ProductDescription.Color, ProductDescription.WheelDiameter, ProductDescription.FrameSize, ProductDescription.Specification
	FROM ProductList
	INNER JOIN Categories ON ProductList.CategoryID = Categories.CategoryID
	INNER JOIN ProductDescription ON ProductList.DescriptionID = ProductDescription.DescriptionID
	WHERE ProductID = @ProductID
	
END

EXEC ProductDesc 3