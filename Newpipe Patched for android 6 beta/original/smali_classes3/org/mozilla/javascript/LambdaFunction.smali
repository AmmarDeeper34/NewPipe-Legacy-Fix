.class public Lorg/mozilla/javascript/LambdaFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "LambdaFunction.java"


# static fields
.field private static final serialVersionUID:J = -0x7468a1f118ea5085L


# instance fields
.field private final length:I

.field private final name:Ljava/lang/String;

.field protected final transient target:Lorg/mozilla/javascript/Callable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 43
    iput-object p3, p0, Lorg/mozilla/javascript/LambdaFunction;->target:Lorg/mozilla/javascript/Callable;

    .line 44
    iput p2, p0, Lorg/mozilla/javascript/LambdaFunction;->length:I

    .line 45
    const-string p2, ""

    iput-object p2, p0, Lorg/mozilla/javascript/LambdaFunction;->name:Ljava/lang/String;

    .line 46
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 34
    iput-object p4, p0, Lorg/mozilla/javascript/LambdaFunction;->target:Lorg/mozilla/javascript/Callable;

    .line 35
    iput-object p2, p0, Lorg/mozilla/javascript/LambdaFunction;->name:Ljava/lang/String;

    .line 36
    iput p3, p0, Lorg/mozilla/javascript/LambdaFunction;->length:I

    .line 37
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 38
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->setupDefaultPrototype()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaFunction;->target:Lorg/mozilla/javascript/Callable;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.no.new"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public getArity()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/mozilla/javascript/LambdaFunction;->length:I

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/mozilla/javascript/LambdaFunction;->length:I

    return v0
.end method

.method getTarget()Lorg/mozilla/javascript/Callable;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaFunction;->target:Lorg/mozilla/javascript/Callable;

    return-object v0
.end method
