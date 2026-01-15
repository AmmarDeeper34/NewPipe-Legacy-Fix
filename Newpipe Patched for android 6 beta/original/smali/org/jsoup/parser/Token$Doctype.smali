.class final Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Lorg/jsoup/parser/TokenData;

.field pubSysKey:Ljava/lang/String;

.field final publicIdentifier:Lorg/jsoup/parser/TokenData;

.field final systemIdentifier:Lorg/jsoup/parser/TokenData;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 59
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    .line 52
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    .line 53
    iput-object v1, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    .line 55
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPubSysKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 64
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    .line 65
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 68
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!doctype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
