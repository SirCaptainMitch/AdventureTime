CREATE TABLE [dbo].[BackgroundTrait] (
    [BackgroundTraitId] INT           IDENTITY (1, 1) NOT NULL,
    [BackgroundId]      INT           NULL,
    [TraitName]         VARCHAR (500) NULL,
    [TraitText]         TEXT          NULL,
    PRIMARY KEY CLUSTERED ([BackgroundTraitId] ASC),
    CONSTRAINT [FK_BackgroundTraits] FOREIGN KEY ([BackgroundId]) REFERENCES [dbo].[Background] ([BackgroundId])
);

