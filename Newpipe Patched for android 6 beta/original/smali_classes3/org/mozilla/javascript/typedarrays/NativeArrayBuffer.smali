.class public Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativeArrayBuffer.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "ArrayBuffer"

.field private static final EMPTY_BUF:[B

.field private static final serialVersionUID:J = 0x2b2a67072621073dL


# instance fields
.field final buffer:[B


# direct methods
.method public static synthetic $r8$lambda$A3QhOlMh2U7WH5X3T8bbKGtd0Hs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->js_isView(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BknSoZvnyR3YExafqeSOY7O-3Ps(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p1, p2, p3, p0, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EsHfdcqH5xu4IHOcGHLO8gOE3Ew(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->js_byteLength(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oGpf0Co-BamV6TB4mAysKQE1b2Q(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [B

    sput-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 67
    sget-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    iput-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, p1, v0

    if-gez v2, :cond_4

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 75
    const-string v2, "Negative array length "

    cmpl-double v3, p1, v0

    if-eqz v3, :cond_3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v3, p1, v0

    if-lez v3, :cond_2

    .line 84
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 89
    sget-object p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-void

    .line 91
    :cond_0
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length parameter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ") is too large "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 1

    .line 134
    const-class v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/LambdaConstructor;->convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 37
    new-instance v0, Lorg/mozilla/javascript/LambdaConstructor;

    new-instance v5, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "ArrayBuffer"

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p1, 0x7

    .line 44
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/BaseFunction;->setPrototypePropertyAttributes(I)V

    .line 46
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "isView"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 48
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda2;-><init>(Lorg/mozilla/javascript/LambdaConstructor;)V

    const-string v2, "slice"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 56
    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x3

    const-string v3, "byteLength"

    invoke-virtual {v0, p0, v3, p1, v2}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    .line 59
    const-string p0, "ArrayBuffer"

    const/4 p1, 0x2

    invoke-static {v1, p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private static isArg([Ljava/lang/Object;I)Z
    .locals 1

    .line 195
    array-length v0, p0

    if-le v0, p1, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static js_byteLength(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 0

    const/4 p0, 0x0

    .line 138
    invoke-static {p2, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    .line 139
    :goto_0
    new-instance p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    return-object p2
.end method

.method private static js_isView(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 144
    invoke-static {p3, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, p3, p0

    instance-of p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 14

    move-object/from16 v0, p4

    .line 153
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const/4 v3, 0x1

    .line 155
    invoke-static {v0, v3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v8

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v0

    int-to-double v8, v0

    .line 161
    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v0

    int-to-double v10, v0

    cmpg-double v0, v8, v4

    if-gez v0, :cond_2

    .line 162
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v0

    int-to-double v12, v0

    add-double/2addr v8, v12

    .line 160
    :cond_2
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 158
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 157
    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    int-to-double v8, v0

    cmpg-double v10, v6, v4

    if-gez v10, :cond_3

    .line 166
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v6, v10

    :cond_3
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 165
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 164
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v4

    sub-int/2addr v0, v4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 170
    invoke-static {p0, v5, v6}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object v5

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-interface {v5, p0, p1, v7}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 172
    instance-of v5, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v5, :cond_6

    .line 175
    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eq p0, v1, :cond_5

    .line 181
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v5

    if-lt v5, v0, :cond_4

    .line 186
    iget-object v1, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget-object v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    invoke-static {v1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 183
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v0, v1, v3

    const-string p0, "msg.arraybuf.smaller.len"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 178
    :cond_5
    const-string p0, "msg.arraybuf.same"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 173
    :cond_6
    const-string p0, "msg.species.invalid.ctor"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "ArrayBuffer"

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public slice(DD)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 7

    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length v1, v0

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpg-double v5, p3, v3

    if-gez v5, :cond_0

    .line 123
    array-length v0, v0

    int-to-double v5, v0

    add-double/2addr p3, v5

    :cond_0
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    .line 122
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p3

    int-to-double v0, p3

    cmpg-double p4, p1, v3

    if-gez p4, :cond_1

    .line 125
    iget-object p4, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length p4, p4

    int-to-double v5, p4

    add-double/2addr p1, v5

    :cond_1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p1

    sub-int/2addr p3, p1

    .line 128
    new-instance p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    int-to-double v0, p3

    invoke-direct {p2, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    .line 129
    iget-object p4, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget-object v0, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p4, p1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
