.class final Lorg/mozilla/javascript/NativeNumber;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeNumber.java"


# static fields
.field private static final ConstructorId_isFinite:I = -0x1

.field private static final ConstructorId_isInteger:I = -0x3

.field private static final ConstructorId_isNaN:I = -0x2

.field private static final ConstructorId_isSafeInteger:I = -0x4

.field private static final EPSILON:D = 2.220446049250313E-16

.field private static final Id_constructor:I = 0x1

.field private static final Id_toExponential:I = 0x7

.field private static final Id_toFixed:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toPrecision:I = 0x8

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PRECISION:I = 0x64

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field public static final MAX_SAFE_INTEGER:D = 9.007199254740991E15

.field private static final MIN_SAFE_INTEGER:D = -9.007199254740991E15

.field private static final NUMBER_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x30a28b6f31d79da5L


# instance fields
.field private doubleValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "Number"

    sput-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(D)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 38
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    return-void
.end method

.method private static checkPrecision(DDLjava/lang/Object;)V
    .locals 1

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    cmpl-double v0, p0, p2

    if-gtz v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "msg.bad.precision"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_c

    const/4 v0, -0x3

    if-eq p0, v0, :cond_8

    const/4 v0, -0x2

    if-eq p0, v0, :cond_4

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    .line 179
    array-length p0, p1

    if-eqz p0, :cond_2

    aget-object p0, p1, v1

    invoke-static {p0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    aget-object p0, p1, v1

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 184
    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 180
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 216
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_4
    array-length p0, p1

    if-eqz p0, :cond_7

    aget-object p0, p1, v1

    invoke-static {p0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    .line 192
    :cond_5
    aget-object p0, p1, v1

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_6

    .line 193
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 195
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 190
    :cond_7
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 198
    :cond_8
    array-length p0, p1

    if-eqz p0, :cond_b

    aget-object p0, p1, v1

    invoke-static {p0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    .line 201
    :cond_9
    aget-object p0, p1, v1

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_a

    .line 202
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 204
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 199
    :cond_b
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 207
    :cond_c
    array-length p0, p1

    if-eqz p0, :cond_f

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p1, p1, v1

    if-ne p0, p1, :cond_d

    goto :goto_3

    .line 210
    :cond_d
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_e

    .line 211
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isSafeInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 213
    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 208
    :cond_f
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    .line 33
    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    const/16 v1, 0x8

    .line 34
    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static isDoubleInteger(D)Z
    .locals 3

    .line 318
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDoubleInteger(Ljava/lang/Double;)Z
    .locals 4

    .line 314
    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDoubleSafeInteger(D)Z
    .locals 3

    .line 335
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDoubleSafeInteger(Ljava/lang/Double;)Z
    .locals 5

    .line 329
    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isFinite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 292
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isInteger(Ljava/lang/Number;)Z
    .locals 2

    .line 307
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 308
    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result p0

    return p0
.end method

.method private static isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 2

    .line 298
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 299
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isSafeInteger(Ljava/lang/Number;)Z
    .locals 2

    .line 322
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 323
    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    .line 325
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(D)Z

    move-result p0

    return p0
.end method

.method private static js_toExponential(D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 242
    array-length v0, p2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    aget-object v0, p2, v3

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    aget-object v0, p2, v3

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move-wide v4, v1

    .line 250
    :goto_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber$$ExternalSyntheticBackport0;->m(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 251
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_1
    array-length v6, p2

    if-lez v6, :cond_2

    aget-object p2, p2, v3

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    invoke-static {v4, v5, v1, v2, p2}, Lorg/mozilla/javascript/NativeNumber;->checkPrecision(DDLjava/lang/Object;)V

    if-eqz v0, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    .line 257
    :cond_3
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p2

    .line 259
    :goto_2
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponential(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toFixed(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 222
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object v0, p3, v1

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    aget-object v0, p3, v1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    .line 224
    iget p0, p0, Lorg/mozilla/javascript/Context;->version:I

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/16 p0, -0x14

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    int-to-double v4, p0

    .line 227
    aget-object p0, p3, v1

    invoke-static {v2, v3, v4, v5, p0}, Lorg/mozilla/javascript/NativeNumber;->checkPrecision(DDLjava/lang/Object;)V

    .line 228
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v1

    .line 233
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeNumber$$ExternalSyntheticBackport0;->m(D)Z

    move-result p0

    if-nez p0, :cond_2

    .line 234
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_2
    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixed(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toPrecision(D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 264
    array-length v0, p2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v1

    .line 269
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber$$ExternalSyntheticBackport0;->m(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 272
    aget-object p2, p2, v0

    invoke-static {v1, v2, v3, v4, p2}, Lorg/mozilla/javascript/NativeNumber;->checkPrecision(DDLjava/lang/Object;)V

    .line 273
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p2

    .line 275
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toPrecision(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 124
    sget-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 129
    array-length p1, p5

    if-lt p1, v1, :cond_1

    aget-object p1, p5, v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    if-nez p4, :cond_2

    .line 132
    new-instance p3, Lorg/mozilla/javascript/NativeNumber;

    invoke-direct {p3, p1, p2}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    return-object p3

    .line 135
    :cond_2
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_3
    if-ge p3, v1, :cond_4

    .line 138
    invoke-static {p3, p5}, Lorg/mozilla/javascript/NativeNumber;->execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 142
    :cond_4
    const-class v1, Lorg/mozilla/javascript/NativeNumber;

    invoke-static {p4, v1, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeNumber;

    iget-wide v1, p1, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    packed-switch p3, :pswitch_data_0

    .line 172
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :pswitch_0
    invoke-static {v1, v2, p5}, Lorg/mozilla/javascript/NativeNumber;->js_toPrecision(D[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_1
    invoke-static {v1, v2, p5}, Lorg/mozilla/javascript/NativeNumber;->js_toExponential(D[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_2
    invoke-static {p2, v1, v2, p5}, Lorg/mozilla/javascript/NativeNumber;->js_toFixed(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 160
    :pswitch_3
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_4
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(new Number("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_5
    array-length p1, p5

    if-eqz p1, :cond_6

    aget-object p1, p5, v0

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 152
    :cond_5
    aget-object p1, p5, v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p1

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p1, 0xa

    .line 153
    :goto_2
    invoke-static {v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 9

    .line 51
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const-string v1, "NaN"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 53
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 52
    const-string v1, "POSITIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 55
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 54
    const-string v1, "NEGATIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 56
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1

    .line 57
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    .line 58
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    .line 59
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x3cb0000000000000L    # 2.220446049250313E-16

    .line 60
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "EPSILON"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 62
    sget-object v5, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const-string v7, "isFinite"

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 63
    const-string v7, "isNaN"

    const/4 v6, -0x2

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 64
    const-string v7, "isInteger"

    const/4 v6, -0x3

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 65
    const-string v7, "isSafeInteger"

    const/4 v6, -0x4

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 66
    const-string p1, "parseFloat"

    invoke-static {v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 67
    instance-of v0, p1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->addAsProperty(Lorg/mozilla/javascript/Scriptable;)V

    .line 70
    :cond_0
    const-string p1, "parseInt"

    invoke-static {v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 71
    instance-of v0, p1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->addAsProperty(Lorg/mozilla/javascript/Scriptable;)V

    .line 75
    :cond_1
    invoke-super {p0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 10

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "toExponential"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "toFixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "toPrecision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "toLocaleString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v8

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :pswitch_3
    return v7

    :pswitch_4
    return v6

    :pswitch_5
    return v4

    :pswitch_6
    const/16 p1, 0x8

    return p1

    :pswitch_7
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_7
        -0x771b9fbd -> :sswitch_6
        -0x6a2ea58a -> :sswitch_5
        -0x69e9ad94 -> :sswitch_4
        -0x5ead2806 -> :sswitch_3
        -0x46374247 -> :sswitch_2
        0xdce0328 -> :sswitch_1
        0x639537ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "Number"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    const-string v0, "toPrecision"

    goto :goto_1

    .line 110
    :pswitch_1
    const-string v0, "toExponential"

    goto :goto_1

    .line 106
    :pswitch_2
    const-string v0, "toFixed"

    goto :goto_1

    .line 102
    :pswitch_3
    const-string v1, "valueOf"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1

    .line 98
    :pswitch_4
    const-string v1, "toSource"

    goto :goto_0

    .line 94
    :pswitch_5
    const-string v0, "toLocaleString"

    goto :goto_1

    .line 90
    :pswitch_6
    const-string v0, "toString"

    goto :goto_1

    .line 86
    :pswitch_7
    const-string v0, "constructor"

    .line 118
    :goto_1
    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 288
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
