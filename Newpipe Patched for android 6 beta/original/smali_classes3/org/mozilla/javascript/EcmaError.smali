.class public Lorg/mozilla/javascript/EcmaError;
.super Lorg/mozilla/javascript/RhinoException;
.source "EcmaError.java"


# static fields
.field private static final serialVersionUID:J = -0x56e4581b7849a92bL


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private errorName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;-><init>()V

    .line 38
    invoke-virtual {p0, p3, p4, p5, p6}, Lorg/mozilla/javascript/RhinoException;->recordErrorOrigin(Ljava/lang/String;ILjava/lang/String;I)V

    .line 39
    iput-object p1, p0, Lorg/mozilla/javascript/EcmaError;->errorName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/mozilla/javascript/EcmaError;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    const-string v1, "InternalError"

    .line 56
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v5, p5

    .line 54
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/EcmaError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public details()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/mozilla/javascript/EcmaError;->errorName:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/EcmaError;->errorMessage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/mozilla/javascript/EcmaError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorObject()Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v0

    return v0
.end method

.method public getLineSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/EcmaError;->errorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
