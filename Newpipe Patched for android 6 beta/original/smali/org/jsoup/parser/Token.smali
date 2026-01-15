.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/Token$TokenType;,
        Lorg/jsoup/parser/Token$Doctype;,
        Lorg/jsoup/parser/Token$StartTag;,
        Lorg/jsoup/parser/Token$EndTag;,
        Lorg/jsoup/parser/Token$Comment;,
        Lorg/jsoup/parser/Token$CData;,
        Lorg/jsoup/parser/Token$Character;,
        Lorg/jsoup/parser/Token$XmlDecl;,
        Lorg/jsoup/parser/Token$EOF;,
        Lorg/jsoup/parser/Token$Tag;
    }
.end annotation


# instance fields
.field endPos:I

.field startPos:I

.field final type:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/Token$TokenType;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 18
    iput-object p1, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    return-void
.end method


# virtual methods
.method final asCharacter()Lorg/jsoup/parser/Token$Character;
    .locals 1

    .line 533
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    return-object v0
.end method

.method final asComment()Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 521
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    return-object v0
.end method

.method final asDoctype()Lorg/jsoup/parser/Token$Doctype;
    .locals 1

    .line 497
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Doctype;

    return-object v0
.end method

.method final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .locals 1

    .line 513
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    return-object v0
.end method

.method final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .locals 1

    .line 505
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    return-object v0
.end method

.method final asXmlDecl()Lorg/jsoup/parser/Token$XmlDecl;
    .locals 1

    .line 537
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$XmlDecl;

    return-object v0
.end method

.method endPos()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return v0
.end method

.method endPos(I)V
    .locals 0

    .line 48
    iput p1, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method final isCData()Z
    .locals 1

    .line 529
    instance-of v0, p0, Lorg/jsoup/parser/Token$CData;

    return v0
.end method

.method final isCharacter()Z
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isComment()Z
    .locals 2

    .line 517
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isDoctype()Z
    .locals 2

    .line 493
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isEOF()Z
    .locals 2

    .line 541
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isEndTag()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isStartTag()Z
    .locals 2

    .line 501
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 31
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-object p0
.end method

.method startPos()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    return v0
.end method

.method startPos(I)V
    .locals 0

    .line 40
    iput p1, p0, Lorg/jsoup/parser/Token;->startPos:I

    return-void
.end method

.method tokenType()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
