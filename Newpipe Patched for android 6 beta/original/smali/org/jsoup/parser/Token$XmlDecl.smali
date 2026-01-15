.class final Lorg/jsoup/parser/Token$XmlDecl;
.super Lorg/jsoup/parser/Token$Tag;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XmlDecl"
.end annotation


# instance fields
.field isDeclaration:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    .line 454
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->XmlDecl:Lorg/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/TreeBuilder;)V

    const/4 p1, 0x1

    .line 451
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    return-void
.end method


# virtual methods
.method bridge synthetic reset()Lorg/jsoup/parser/Token$Tag;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$XmlDecl;->reset()Lorg/jsoup/parser/Token$XmlDecl;

    move-result-object v0

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$XmlDecl;
    .locals 1

    .line 459
    invoke-super {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$XmlDecl;->reset()Lorg/jsoup/parser/Token$XmlDecl;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 466
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    if-eqz v0, :cond_0

    const-string v1, "<!"

    goto :goto_0

    :cond_0
    const-string v1, "<?"

    :goto_0
    if-eqz v0, :cond_1

    .line 467
    const-string v0, ">"

    goto :goto_1

    :cond_1
    const-string v0, "?>"

    .line 468
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->toStringName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 471
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->toStringName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
