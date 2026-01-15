.class final Lorg/mozilla/javascript/NativeProxy;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativeProxy.java"

# interfaces
.implements Lorg/mozilla/javascript/Callable;
.implements Lorg/mozilla/javascript/Constructable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeProxy$Revoker;
    }
.end annotation


# static fields
.field private static final PROXY_TAG:Ljava/lang/String; = "Proxy"

.field private static final TRAP_APPLY:Ljava/lang/String; = "apply"

.field private static final TRAP_CONSTRUCT:Ljava/lang/String; = "construct"

.field private static final TRAP_DEFINE_PROPERTY:Ljava/lang/String; = "defineProperty"

.field private static final TRAP_DELETE_PROPERTY:Ljava/lang/String; = "deleteProperty"

.field private static final TRAP_GET:Ljava/lang/String; = "get"

.field private static final TRAP_GET_OWN_PROPERTY_DESCRIPTOR:Ljava/lang/String; = "getOwnPropertyDescriptor"

.field private static final TRAP_GET_PROTOTYPE_OF:Ljava/lang/String; = "getPrototypeOf"

.field private static final TRAP_HAS:Ljava/lang/String; = "has"

.field private static final TRAP_IS_EXTENSIBLE:Ljava/lang/String; = "isExtensible"

.field private static final TRAP_OWN_KEYS:Ljava/lang/String; = "ownKeys"

.field private static final TRAP_PREVENT_EXTENSIONS:Ljava/lang/String; = "preventExtensions"

.field private static final TRAP_SET:Ljava/lang/String; = "set"

.field private static final TRAP_SET_PROTOTYPE_OF:Ljava/lang/String; = "setPrototypeOf"

.field private static final serialVersionUID:J = 0x5ca9039734c13b3cL


# instance fields
.field private handlerObj:Lorg/mozilla/javascript/Scriptable;

.field private targetObj:Lorg/mozilla/javascript/ScriptableObject;

.field private final typeOf:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$mUssryc-OwtX8XpbeaIikqo6Dtk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeProxy;->revocable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ut4xLTGon-8ua3XO5ZBO_2AgFiQ(Ljava/lang/Object;)Z
    .locals 1

    .line 340
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-nez v0, :cond_1

    .line 342
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$yd_0m4yTb2WVhv119O3MjOm1jCs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeProxy;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeProxy;->constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeProxy;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhandlerObj(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy;->handlerObj:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtargetObj(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy;->targetObj:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrototypeDirect(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeProxy;->setPrototypeDirect(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy;->targetObj:Lorg/mozilla/javascript/ScriptableObject;

    .line 92
    iput-object p2, p0, Lorg/mozilla/javascript/NativeProxy;->handlerObj:Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_1

    .line 94
    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy;->typeOf:Ljava/lang/String;

    return-void

    .line 95
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy;->typeOf:Ljava/lang/String;

    return-void
.end method

.method private callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1338
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeProxy;->handlerObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, v0, v1, v1, p2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeProxy;
    .locals 3

    .line 1291
    array-length p0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt p0, v2, :cond_0

    .line 1298
    aget-object p0, p2, v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObjectButNotSymbol(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    .line 1299
    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObjectButNotSymbol(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p2

    .line 1301
    new-instance v0, Lorg/mozilla/javascript/NativeProxy;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/javascript/NativeProxy;-><init>(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 1302
    const-string p0, "Proxy"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeProxy;->setPrototypeDirect(Lorg/mozilla/javascript/Scriptable;)V

    .line 1303
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0

    .line 1292
    :cond_0
    array-length p0, p2

    .line 1296
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Proxy.ctor"

    aput-object p2, p1, v1

    const-string p2, "2"

    aput-object p2, p1, v0

    aput-object p0, p1, v2

    .line 1292
    const-string p0, "msg.method.missing.parameter"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;
    .locals 3

    .line 1323
    iget-object v0, p0, Lorg/mozilla/javascript/NativeProxy;->handlerObj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1324
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_3

    .line 1327
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1330
    :cond_1
    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_2

    .line 1334
    check-cast v0, Lorg/mozilla/javascript/Callable;

    return-object v0

    .line 1331
    :cond_2
    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 61
    new-instance v0, Lorg/mozilla/javascript/NativeProxy$1;

    new-instance v5, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "Proxy"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeProxy$1;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p0, 0x0

    .line 79
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/BaseFunction;->setPrototypeProperty(Ljava/lang/Object;)V

    .line 81
    new-instance v4, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "revocable"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 84
    const-string p0, "Proxy"

    const/4 p1, 0x2

    invoke-static {v1, p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private static revocable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1310
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1313
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeProxy;->constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeProxy;

    move-result-object p2

    .line 1315
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeObject;

    .line 1317
    const-string p3, "proxy"

    invoke-virtual {p0, p3, p0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1318
    new-instance p3, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v0, Lorg/mozilla/javascript/NativeProxy$Revoker;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeProxy$Revoker;-><init>(Lorg/mozilla/javascript/NativeProxy;)V

    const-string p2, ""

    invoke-direct {p3, p1, p2, v1, v0}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    const-string p1, "revoke"

    invoke-virtual {p0, p1, p0, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object p0

    .line 1311
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "msg.arg.not.object"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private setPrototypeDirect(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 1215
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1277
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1279
    invoke-virtual {p1, p2, p4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 1281
    const-string v1, "apply"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    .line 1283
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    aput-object p3, p1, v4

    aput-object p4, p1, v2

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1286
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p4, v1, v4

    invoke-static {v4, p1, p2, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 129
    const-string v1, "construct"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    .line 131
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p0, p1, p2

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 135
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    return-object p1

    .line 133
    :cond_0
    const-string p1, "Constructor trap has to return a scriptable."

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 138
    :cond_1
    check-cast v0, Lorg/mozilla/javascript/Constructable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 7

    .line 1040
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1042
    const-string v1, "defineProperty"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    .line 1044
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v5, 0x2

    aput-object p3, v2, v5

    .line 1045
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 1050
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p2

    .line 1051
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    .line 1053
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1054
    const-string v2, "configurable"

    invoke-static {p3, v2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1055
    invoke-virtual {p3, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 1057
    :cond_1
    const-string v5, "proxy can\'t define an incompatible property descriptor"

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    .line 1059
    :cond_2
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 1063
    :cond_3
    invoke-static {p1, v0, p3, p2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->isCompatiblePropertyDescriptor(Lorg/mozilla/javascript/Context;ZLorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v3, :cond_5

    .line 1069
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 1070
    :cond_4
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 1074
    :cond_5
    :goto_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1075
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1076
    const-string v0, "writable"

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1077
    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1078
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 1079
    :cond_6
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    return v4

    .line 1065
    :cond_8
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 1087
    :cond_9
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    return p1
.end method

.method public delete(I)V
    .locals 5

    .line 835
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 837
    const-string v1, "deleteProperty"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_3

    int-to-double v2, p1

    .line 841
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 847
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 851
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 852
    :cond_2
    const-string p1, "proxy can\'t delete an existing own property \' + name + \' on an not configurable or not extensible object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 859
    :cond_3
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4

    .line 785
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 787
    const-string v1, "deleteProperty"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 789
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 790
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 800
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 801
    :cond_2
    const-string p1, "proxy can\'t delete an existing own property \' + name + \' on an not configurable or not extensible object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 808
    :cond_3
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .locals 4

    .line 886
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 888
    const-string v1, "deleteProperty"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 890
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 891
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 902
    :cond_2
    const-string p1, "proxy can\'t delete an existing own property \' + name + \' on an not configurable or not extensible object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 909
    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    .line 910
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 5

    .line 481
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 483
    const-string v1, "get"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_4

    int-to-double v3, p1

    .line 486
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p0, v3, p2

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 489
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 491
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    .line 492
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v2

    const-string v3, "proxy get has to return the same value as the plain call"

    if-eqz v2, :cond_1

    const-string v2, "writable"

    .line 494
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 500
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 502
    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    if-ne p2, p0, :cond_5

    move-object p2, v0

    .line 514
    :cond_5
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4

    .line 422
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 424
    const-string v1, "get"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 p2, 0x3

    .line 426
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    const/4 v3, 0x1

    aput-object p1, p2, v3

    const/4 v3, 0x2

    aput-object p0, p2, v3

    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 429
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 431
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    .line 432
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v2

    const-string v3, "proxy get has to return the same value as the plain call"

    if-eqz v2, :cond_1

    const-string v2, "writable"

    .line 434
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 440
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 442
    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 443
    :cond_2
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    if-ne p2, p0, :cond_5

    move-object p2, v0

    .line 454
    :cond_5
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4

    .line 541
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 543
    const-string v1, "get"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 p2, 0x3

    .line 545
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    const/4 v3, 0x1

    aput-object p1, p2, v3

    const/4 v3, 0x2

    aput-object p0, p2, v3

    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 550
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    .line 551
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v2

    const-string v3, "proxy get has to return the same value as the plain call"

    if-eqz v2, :cond_1

    const-string v2, "writable"

    .line 553
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 559
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 561
    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 562
    :cond_2
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    if-ne p2, p0, :cond_5

    move-object p2, v0

    .line 573
    :cond_5
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    .line 574
    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIds(ZZ)[Ljava/lang/Object;
    .locals 14

    .line 321
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 323
    const-string v1, "ownKeys"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    .line 325
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 326
    instance-of v3, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_c

    .line 329
    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isArrayLike(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 333
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    .line 335
    new-instance v5, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativeProxy$$ExternalSyntheticLambda2;-><init>()V

    const-string v6, "proxy [[OwnPropertyKeys]] must return an array with only string and symbol elements"

    .line 336
    invoke-static {v3, v1, v5, v6}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->createListFromArrayLike(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/util/function/Predicate;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 345
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v5

    .line 347
    invoke-virtual {v0, v2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v2

    .line 349
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 350
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 354
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 356
    array-length v9, v2

    :goto_0
    if-ge v4, v9, :cond_1

    aget-object v10, v2, v4

    .line 357
    invoke-virtual {v0, v3, v10}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 358
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v13, "configurable"

    invoke-virtual {v11, v13}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 359
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 365
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 366
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 369
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 370
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 374
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 371
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proxy can\'t skip a non-configurable property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4
    if-eqz v5, :cond_5

    .line 377
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 380
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 381
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 385
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 382
    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proxy can\'t skip a configurable property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 388
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_9

    :cond_8
    move/from16 v1, p2

    goto :goto_4

    .line 389
    :cond_9
    const-string p1, "proxy can\'t skip properties"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 351
    :cond_a
    const-string p1, "ownKeys trap result must not contain duplicates"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 330
    :cond_b
    const-string p1, "ownKeys trap must be an array like object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 327
    :cond_c
    const-string p1, "ownKeys trap must be an object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 395
    :goto_4
    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 5

    .line 949
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 951
    const-string v1, "getOwnPropertyDescriptor"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x2

    .line 953
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 954
    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_0

    .line 956
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    const-string p1, "getOwnPropertyDescriptor trap has to return undefined or an object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 962
    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    goto :goto_1

    .line 965
    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    .line 968
    :goto_1
    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "configurable"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 969
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v4

    .line 973
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 974
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v4

    .line 975
    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "proxy can\'t report an existing own property \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as non-existent on a non-extensible object"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 983
    :cond_5
    move-object p1, v1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_6

    .line 985
    const-string p2, "value"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 986
    const-string v1, "enumerable"

    .line 989
    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "writable"

    .line 990
    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 991
    invoke-static {p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x7

    .line 987
    invoke-virtual {p0, v3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 994
    invoke-static {v0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v4

    .line 1000
    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1001
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    .line 1004
    :cond_8
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 5

    .line 1185
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1187
    const-string v1, "getPrototypeOf"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 1189
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1191
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_2

    .line 1193
    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1194
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1199
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1201
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-ne v1, v0, :cond_1

    :goto_0
    return-object v2

    .line 1205
    :cond_1
    const-string v0, "getPrototypeOf trap has to return the original prototype"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 1196
    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 1195
    const-string v0, "msg.arg.not.object"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 1211
    :cond_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    .line 1342
    iget-object v0, p0, Lorg/mozilla/javascript/NativeProxy;->targetObj:Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 1343
    :cond_0
    const-string v0, "Illegal operation attempted on a revoked proxy"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .line 1160
    iget-object v0, p0, Lorg/mozilla/javascript/NativeProxy;->typeOf:Ljava/lang/String;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 4

    .line 217
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 219
    const-string v1, "has"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_2

    int-to-double v2, p1

    .line 223
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 222
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 226
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    const-string p1, "proxy can\'t check an existing property \' + name + \' existance on an not configurable or not extensible object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return p2

    :cond_2
    if-ne p2, p0, :cond_3

    move-object p2, v0

    .line 242
    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 4

    .line 164
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 166
    const-string v1, "has"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p2, 0x2

    .line 169
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    const/4 v2, 0x1

    aput-object p1, p2, v2

    .line 170
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 173
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "configurable"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "proxy can\'t report an existing own property \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as non-existent on a non-extensible object"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return p2

    :cond_2
    if-ne p2, p0, :cond_3

    move-object p2, v0

    .line 190
    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    .line 251
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 253
    const-string v1, "has"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p2, 0x2

    .line 255
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    const/4 v2, 0x1

    aput-object p1, p2, v2

    .line 256
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 259
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    const-string p1, "proxy can\'t check an existing property \' + name + \' existance on an not configurable or not extensible object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return p2

    :cond_2
    if-ne p2, p0, :cond_3

    move-object p2, v0

    .line 275
    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    .line 276
    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public isExtensible()Z
    .locals 4

    .line 1109
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1111
    const-string v1, "isExtensible"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 1116
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 1117
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-ne v1, v0, :cond_1

    return v1

    .line 1118
    :cond_1
    const-string v0, "IsExtensible trap has to return the same value as the target"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public preventExtensions()Z
    .locals 4

    .line 1144
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1146
    const-string v1, "preventExtensions"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1148
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 1150
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1151
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    const-string v0, "target is extensible but trap returned true"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 5

    .line 661
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 663
    const-string v1, "set"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_5

    int-to-double v3, p1

    .line 669
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    .line 667
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 666
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 675
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 677
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "configurable"

    .line 678
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 679
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "writable"

    .line 680
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 681
    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    const-string p1, "proxy set has to use the same value as the plain call"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 686
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 687
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 688
    :cond_3
    const-string p1, "proxy set has to be available"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne p2, p0, :cond_6

    move-object p2, v0

    .line 697
    :cond_6
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4

    .line 601
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 603
    const-string v1, "set"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 p2, 0x3

    .line 605
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    const/4 v3, 0x1

    aput-object p1, p2, v3

    const/4 v3, 0x2

    aput-object p3, p2, v3

    .line 606
    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 612
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 614
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "configurable"

    .line 615
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "writable"

    .line 617
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 618
    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    const-string p1, "proxy set has to use the same value as the plain call"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 623
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 624
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 625
    :cond_3
    const-string p1, "proxy set has to be available"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne p2, p0, :cond_6

    move-object p2, v0

    .line 634
    :cond_6
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4

    .line 724
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 726
    const-string v1, "set"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 p2, 0x3

    .line 728
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    const/4 v3, 0x1

    aput-object p1, p2, v3

    const/4 v3, 0x2

    aput-object p3, p2, v3

    .line 729
    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 735
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 737
    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "configurable"

    .line 738
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "writable"

    .line 740
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 741
    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    const-string p1, "proxy set has to use the same value as the plain call"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 746
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 747
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 748
    :cond_3
    const-string p1, "proxy set has to be available"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne p2, p0, :cond_6

    move-object p2, v0

    .line 757
    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    .line 758
    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 4

    .line 1241
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1243
    const-string v1, "setPrototypeOf"

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeProxy;->getTrap(Ljava/lang/String;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1245
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1246
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/NativeProxy;->callTrap(Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    return-void

    .line 1257
    :cond_1
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method
