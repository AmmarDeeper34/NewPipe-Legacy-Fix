.class public final Lorg/mozilla/javascript/ScriptStackElement;
.super Ljava/lang/Object;
.source "ScriptStackElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x590ca7f9e7020009L


# instance fields
.field public final fileName:Ljava/lang/String;

.field public final functionName:Ljava/lang/String;

.field public final lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    return-void
.end method

.method private appendV8Location(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public renderJavaStyle(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 44
    const-string v0, "\tat "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x3a

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public renderMozillaStyle(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x40

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/16 v0, 0x3a

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public renderV8Style(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 77
    const-string v0, "    at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "anonymous"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "undefined"

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptStackElement;->appendV8Location(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x29

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 83
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptStackElement;->appendV8Location(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptStackElement;->renderMozillaStyle(Ljava/lang/StringBuilder;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
