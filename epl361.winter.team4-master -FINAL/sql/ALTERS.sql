--FOREIGN KEYS 

--MEMBER
ALTER TABLE [MEMBER] WITH CHECK ADD CONSTRAINT [FK_MEMBER_MEMBER_CATEGORY]
FOREIGN KEY ([Member Category]) REFERENCES [dbo].[MEMBER CATEGORY]([Id])
GO
ALTER TABLE [dbo].[MEMBER] WITH CHECK ADD CONSTRAINT [FK_MEMBER_DISCOUNT]
FOREIGN KEY ([Last Discount]) REFERENCES [dbo].[DISCOUNT]([Id])
GO
ALTER TABLE [dbo].[MEMBER] WITH CHECK ADD CONSTRAINT [FK_MEMBER_BASKET]
FOREIGN KEY ([Last Order]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
---------------------------------------------------------------------------
--PROMODING PRODUCTS

ALTER TABLE [dbo].[PROMOTING PRODUCTS] WITH CHECK ADD CONSTRAINT [FK_PP_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
----------------------------------------------------------------------
--NOTES

ALTER TABLE [dbo].[NOTES] WITH CHECK ADD CONSTRAINT [FK_NOTES_FIELD]
FOREIGN KEY ([Field Category]) REFERENCES [dbo].[FIELD]([Id])
GO
-------------------------------------------------------------------------
--CATEGORY-PROMOTING PRODUCTS

ALTER TABLE [dbo].[KEYRINGS] WITH CHECK ADD CONSTRAINT [FK_KEYRINGS_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO

ALTER TABLE [dbo].[BANNERS] WITH CHECK ADD CONSTRAINT [FK_ BANNERS _PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO

ALTER TABLE [dbo].[PILLOWS] WITH CHECK ADD CONSTRAINT [FK_PILLOWS_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO

ALTER TABLE [dbo].[GLASSES] WITH CHECK ADD CONSTRAINT [FK_GLASSES_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
ALTER TABLE [dbo].[CANVAS_WOOD] WITH CHECK ADD CONSTRAINT [FK_CANVAS_WOOD_PPCATEGORY] 
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
ALTER TABLE [dbo].[STICKERS] WITH CHECK ADD CONSTRAINT [FK_STICKERS_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
ALTER TABLE [dbo].[BADGES] WITH CHECK ADD CONSTRAINT [FK_BADGES_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
ALTER TABLE [dbo].[TSHIRTS] WITH CHECK ADD CONSTRAINT [FK_TSHIRTS_PPCATEGORY]
FOREIGN KEY ([PPCategory]) REFERENCES [dbo].[PROMOTING PRODUCTS CATEGORY]([Id])
GO
-------------------------------------------------------------------------
--BASKET-PROMOTING PRODUCTS

ALTER TABLE [dbo].[KEYRINGS] WITH CHECK ADD CONSTRAINT [FK_KEYRINGS_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[BANNERS] WITH CHECK ADD CONSTRAINT [FK_BANNERS_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[PILLOWS] WITH CHECK ADD CONSTRAINT [FK_PILLOWS_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[GLASSES] WITH CHECK ADD CONSTRAINT [FK_GLASSES_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[CANVAS_WOOD] WITH CHECK ADD CONSTRAINT [FK_CANVAS_WOOD_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[STICKERS] WITH CHECK ADD CONSTRAINT [FK_STICKERS_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[BADGES] WITH CHECK ADD CONSTRAINT [FK_BADGES_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO
ALTER TABLE [dbo].[TSHIRTS] WITH CHECK ADD CONSTRAINT [FK_TSHIRTS_BASKET]
FOREIGN KEY ([BasketNo]) REFERENCES [dbo].[BASKET]([BasketNo])
GO

-----------------------------------------------------------------------------------
--DROPS
--DROP FOREIGN KEY CONSTRAINTS
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MEMBER_MEMBER_CATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[MEMBER]'))
ALTER TABLE [dbo].[MEMBER] DROP CONSTRAINT [FK_MEMBER_MEMBER_CATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MEMBER_DISCOUNT]') AND parent_object_id = OBJECT_ID(N'[dbo].[MEMBER]'))
ALTER TABLE [dbo].[MEMBER] DROP CONSTRAINT [FK_MEMBER_DISCOUNT]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MEMBER_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[MEMBER]'))
ALTER TABLE [dbo].[MEMBER] DROP CONSTRAINT [FK_MEMBER_BASKET]
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PP_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[PROMOTING PRODUCTS]'))
ALTER TABLE [dbo].[PROMOTING PRODUCTS] DROP CONSTRAINT [FK_PP_PPCATEGORY]
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NOTES_FIELD]') AND parent_object_id = OBJECT_ID(N'[dbo].[NOTES]'))
ALTER TABLE [dbo].[NOTES] DROP CONSTRAINT [FK_NOTES_FIELD]
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KEYRINGS_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[KEYRINGS]'))
ALTER TABLE [dbo].[KEYRINGS] DROP CONSTRAINT [FK_KEYRINGS_PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ BANNERS _PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[BANNERS]'))
ALTER TABLE [dbo].[BANNERS] DROP CONSTRAINT [FK_ BANNERS _PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PILLOWS_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[PILLOWS]'))
ALTER TABLE [dbo].[PILLOWS] DROP CONSTRAINT [FK_PILLOWS_PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ BANNERS _PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[GLASSES]'))
ALTER TABLE [dbo].[GLASSES] DROP CONSTRAINT [FK_ BANNERS _PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CANVAS_WOOD_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[CANVAS_WOOD]'))
ALTER TABLE [dbo].[CANVAS_WOOD] DROP CONSTRAINT [FK_CANVAS_WOOD_PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STICKERS_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[STICKERS]'))
ALTER TABLE [dbo].[STICKERS] DROP CONSTRAINT [FK_STICKERS_PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BADGES_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[BADGES]'))
ALTER TABLE [dbo].[BADGES] DROP CONSTRAINT [FK_BADGES_PPCATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSHIRTS_PPCATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSHIRTS]'))
ALTER TABLE [dbo].[TSHIRTS] DROP CONSTRAINT [FK_TSHIRTS_PPCATEGORY]
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KEYRINGS_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[KEYRINGS]'))
ALTER TABLE [dbo].[KEYRINGS] DROP CONSTRAINT [FK_KEYRINGS_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BANNERS_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[BANNERS]'))
ALTER TABLE [dbo].[BANNERS] DROP CONSTRAINT [FK_BANNERS_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PILLOWS_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[PILLOWS]'))
ALTER TABLE [dbo].[PILLOWS] DROP CONSTRAINT [FK_PILLOWS_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GLASSES_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[GLASSES]'))
ALTER TABLE [dbo].[GLASSES] DROP CONSTRAINT [FK_GLASSES_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CANVAS_WOOD_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[CANVAS_WOOD]'))
ALTER TABLE [dbo].[CANVAS_WOOD] DROP CONSTRAINT [FK_CANVAS_WOOD_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STICKERS_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[STICKERS]'))
ALTER TABLE [dbo].[STICKERS] DROP CONSTRAINT [FK_STICKERS_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BADGES_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[BADGES]'))
ALTER TABLE [dbo].[BADGES] DROP CONSTRAINT [FK_BADGES_BASKET]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSHIRTS_BASKET]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSHIRTS]'))
ALTER TABLE [dbo].[TSHIRTS] DROP CONSTRAINT [FK_TSHIRTS_BASKET]
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--DROP TABLES
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MEMBER]') AND type in (N'U'))
DROP TABLE [dbo].[MEMBER]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MEMBER CATEGORY]') AND type in (N'U'))
DROP TABLE [dbo].[MEMBER CATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMINISTRATOR]') AND type in (N'U'))
DROP TABLE [dbo].[ADMINISTRATOR]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[DISCOUNT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BASKET]') AND type in (N'U'))
DROP TABLE [dbo].[BASKET]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PROMOTING PRODUCTS CATEGORY]') AND type in (N'U'))
DROP TABLE [dbo].[PROMOTING PRODUCTS CATEGORY]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PROMOTING PRODUCTS]') AND type in (N'U'))
DROP TABLE [dbo].[PROMOTING PRODUCTS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NOTES]') AND type in (N'U'))
DROP TABLE [dbo].[NOTES]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STATIONERY]') AND type in (N'U'))
DROP TABLE [dbo].[STATIONERY]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KEYRINGS]') AND type in (N'U'))
DROP TABLE [dbo].[KEYRINGS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BANNERS]') AND type in (N'U'))
DROP TABLE [dbo].[BANNERS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STICKERS]') AND type in (N'U'))
DROP TABLE [dbo].[STICKERS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PILLOWS]') AND type in (N'U'))
DROP TABLE [dbo].[PILLOWS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSHIRTS]') AND type in (N'U'))
DROP TABLE [dbo].[TSHIRTS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BADGES]') AND type in (N'U'))
DROP TABLE [dbo].[BADGES]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CANVAS_WOOD]') AND type in (N'U'))
DROP TABLE [dbo].[CANVAS_WOOD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FIELD]') AND type in (N'U'))
DROP TABLE [dbo].[FIELD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GLASSES]') AND type in (N'U'))
DROP TABLE [dbo].[GLASSES]
GO



