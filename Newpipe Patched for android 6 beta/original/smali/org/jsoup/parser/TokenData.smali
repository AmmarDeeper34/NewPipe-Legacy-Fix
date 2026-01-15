.class Lorg/jsoup/parser/TokenData;
.super Ljava/lang/Object;
.source "TokenData.java"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private flipToBuilder()V
    .locals 2

    .line 57
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method append(C)V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lorg/jsoup/parser/TokenData;->flipToBuilder()V

    .line 39
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 41
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method

.method append(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0}, Lorg/jsoup/parser/TokenData;->flipToBuilder()V

    .line 28
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 30
    :cond_1
    iput-object p1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method

.method appendCodePoint(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0}, Lorg/jsoup/parser/TokenData;->flipToBuilder()V

    .line 50
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    .line 52
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method

.method hasData()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method reset()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilderVoid(Ljava/lang/StringBuilder;)V

    .line 69
    iput-object v1, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    iput-object v1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method

.method set(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method value()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
