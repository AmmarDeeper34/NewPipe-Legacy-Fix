.class public Lorg/mozilla/javascript/NativeObject;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeObject$KeySet;,
        Lorg/mozilla/javascript/NativeObject$ValueCollection;,
        Lorg/mozilla/javascript/NativeObject$EntrySet;
    }
.end annotation


# static fields
.field private static final ConstructorId_assign:I = -0x10

.field private static final ConstructorId_create:I = -0xa

.field private static final ConstructorId_defineProperties:I = -0x9

.field private static final ConstructorId_defineProperty:I = -0x6

.field private static final ConstructorId_entries:I = -0x13

.field private static final ConstructorId_freeze:I = -0xe

.field private static final ConstructorId_fromEntries:I = -0x14

.field private static final ConstructorId_getOwnPropertyDescriptor:I = -0x4

.field private static final ConstructorId_getOwnPropertyDescriptors:I = -0x5

.field private static final ConstructorId_getOwnPropertyNames:I = -0x3

.field private static final ConstructorId_getOwnPropertySymbols:I = -0xf

.field private static final ConstructorId_getPrototypeOf:I = -0x1

.field private static final ConstructorId_groupBy:I = -0x17

.field private static final ConstructorId_hasOwn:I = -0x16

.field private static final ConstructorId_is:I = -0x11

.field private static final ConstructorId_isExtensible:I = -0x7

.field private static final ConstructorId_isFrozen:I = -0xc

.field private static final ConstructorId_isSealed:I = -0xb

.field private static final ConstructorId_keys:I = -0x2

.field private static final ConstructorId_preventExtensions:I = -0x8

.field private static final ConstructorId_seal:I = -0xd

.field private static final ConstructorId_setPrototypeOf:I = -0x12

.field private static final ConstructorId_values:I = -0x15

.field private static final Id___defineGetter__:I = 0x9

.field private static final Id___defineSetter__:I = 0xa

.field private static final Id___lookupGetter__:I = 0xb

.field private static final Id___lookupSetter__:I = 0xc

.field private static final Id_constructor:I = 0x1

.field private static final Id_hasOwnProperty:I = 0x5

.field private static final Id_isPrototypeOf:I = 0x7

.field private static final Id_propertyIsEnumerable:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x8

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final OBJECT_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x580f0dd5006845f4L


# direct methods
.method public static synthetic $r8$lambda$7wgYXA6j5v7wMvdZQWLWExPc5G4(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 441
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 442
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 443
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_1

    .line 445
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 447
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "Object"

    sput-object v0, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private static getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 782
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 783
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 784
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    .line 786
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    .line 33
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    const/16 v1, 0xc

    .line 34
    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private isEnumerable(ILjava/lang/Object;)Z
    .locals 2

    .line 738
    instance-of v0, p2, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 739
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 741
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method private isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 754
    instance-of v0, p2, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 755
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 757
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method private isEnumerable(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)Z
    .locals 2

    .line 768
    instance-of v0, p2, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 769
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 771
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Lorg/mozilla/javascript/Symbol;)I

    move-result p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 793
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 794
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    .line 795
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 796
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 803
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeObject;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 804
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 834
    new-instance v0, Lorg/mozilla/javascript/NativeObject$EntrySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$EntrySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    .line 155
    sget-object v6, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v6

    const/4 v7, 0x3

    .line 159
    const-string v9, ".to.object"

    const-string v10, "msg."

    const-string v11, "undef"

    const/16 v12, 0xb4

    const-string v13, "null"

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    packed-switch v6, :pswitch_data_0

    .line 733
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_1
    array-length v2, v5

    if-lt v2, v14, :cond_8

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_1

    goto :goto_3

    .line 320
    :cond_1
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 321
    aget-object v2, v5, v8

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    .line 322
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    :goto_0
    const/16 v4, 0xc

    if-ne v6, v4, :cond_3

    const/4 v8, 0x1

    .line 326
    :cond_3
    :goto_1
    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v8}, Lorg/mozilla/javascript/ScriptableObject;->getGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 332
    :cond_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 336
    :cond_5
    instance-of v5, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v5, :cond_6

    .line 337
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    return-object v4

    .line 346
    :cond_7
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 318
    :cond_8
    :goto_3
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 294
    :pswitch_2
    array-length v2, v5

    if-lt v2, v15, :cond_f

    aget-object v2, v5, v14

    instance-of v2, v2, Lorg/mozilla/javascript/Callable;

    if-nez v2, :cond_9

    goto :goto_7

    .line 298
    :cond_9
    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_b

    if-nez v0, :cond_a

    goto :goto_4

    .line 301
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_4
    aget-object v0, v5, v8

    .line 302
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v13, v2, v8

    aput-object v0, v2, v14

    .line 299
    const-string v0, "msg.extend.scriptable"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 304
    :cond_b
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 305
    aget-object v2, v5, v8

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    .line 306
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-eqz v3, :cond_c

    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    iget v2, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 307
    :goto_5
    aget-object v4, v5, v14

    check-cast v4, Lorg/mozilla/javascript/Callable;

    const/16 v5, 0xa

    if-ne v6, v5, :cond_d

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    .line 309
    :goto_6
    invoke-virtual {v0, v3, v2, v4, v14}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/Object;ILorg/mozilla/javascript/Callable;Z)V

    .line 310
    instance-of v2, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_e

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/NativeArray;->setDenseOnly(Z)V

    .line 312
    :cond_e
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 295
    :cond_f
    :goto_7
    array-length v0, v5

    if-lt v0, v15, :cond_10

    aget-object v0, v5, v14

    goto :goto_8

    :cond_10
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 296
    :goto_8
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 290
    :pswitch_3
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_4
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    if-lt v2, v12, :cond_13

    if-eqz v0, :cond_11

    .line 270
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_11
    if-nez v0, :cond_12

    move-object v11, v13

    .line 272
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    .line 271
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 276
    :cond_13
    array-length v2, v5

    if-eqz v2, :cond_16

    aget-object v2, v5, v8

    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_16

    .line 277
    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    .line 279
    :cond_14
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-ne v2, v0, :cond_15

    const/4 v8, 0x1

    goto :goto_9

    :cond_15
    if-nez v2, :cond_14

    .line 286
    :cond_16
    :goto_9
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_5
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    if-lt v2, v12, :cond_19

    if-eqz v0, :cond_17

    .line 226
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    if-nez v0, :cond_18

    move-object v11, v13

    .line 228
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    .line 227
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 232
    :cond_19
    array-length v2, v5

    if-ge v2, v14, :cond_1a

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_a

    :cond_1a
    aget-object v2, v5, v8

    .line 234
    :goto_a
    instance-of v3, v2, Lorg/mozilla/javascript/Symbol;

    if-eqz v3, :cond_1b

    .line 235
    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/SymbolScriptable;

    check-cast v2, Lorg/mozilla/javascript/Symbol;

    invoke-interface {v3, v2, v0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 236
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_b
    const/4 v8, 0x1

    goto :goto_d

    .line 238
    :cond_1b
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    .line 243
    :try_start_0
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 244
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {v0, v3, v0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 245
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    .line 247
    :cond_1c
    invoke-interface {v0, v3, v0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 248
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1e

    goto :goto_b

    .line 251
    :goto_c
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 255
    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v4, :cond_1d

    .line 256
    iget v2, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_1d
    new-array v2, v14, [Ljava/lang/Object;

    aput-object v4, v2, v8

    .line 253
    const-string v4, "msg.prop.not.found"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 264
    :cond_1e
    :goto_d
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 260
    :cond_1f
    throw v0

    .line 212
    :pswitch_6
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    if-lt v3, v12, :cond_22

    if-eqz v0, :cond_20

    .line 213
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_20
    if-nez v0, :cond_21

    move-object v11, v13

    .line 215
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    .line 214
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 218
    :cond_22
    array-length v3, v5

    if-ge v3, v14, :cond_23

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_e

    :cond_23
    aget-object v3, v5, v8

    .line 220
    :goto_e
    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->hasOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_7
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    if-lt v2, v12, :cond_26

    if-eqz v0, :cond_24

    .line 204
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    if-nez v0, :cond_25

    move-object v11, v13

    .line 206
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    .line 205
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_26
    return-object v0

    :pswitch_8
    if-eqz v0, :cond_28

    .line 177
    const-string v4, "toString"

    invoke-static {v0, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 178
    instance-of v5, v4, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_27

    .line 181
    check-cast v4, Lorg/mozilla/javascript/Callable;

    .line 182
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v4, v2, v3, v0, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 179
    :cond_27
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 175
    :cond_28
    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_9
    const/4 v4, 0x4

    .line 187
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 189
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    .line 193
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_29

    sub-int/2addr v2, v14

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_29

    .line 195
    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_29
    return-object v0

    .line 199
    :cond_2a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    if-eqz v0, :cond_2b

    .line 164
    invoke-virtual {v4, v2, v3, v5}, Lorg/mozilla/javascript/BaseFunction;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 166
    :cond_2b
    array-length v0, v5

    if-eqz v0, :cond_2d

    aget-object v0, v5, v8

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_f

    .line 169
    :cond_2c
    aget-object v0, v5, v8

    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 167
    :cond_2d
    :goto_f
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_b
    array-length v0, v5

    if-ge v0, v14, :cond_2e

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_10

    :cond_2e
    aget-object v0, v5, v8

    .line 351
    :goto_10
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 395
    :pswitch_c
    array-length v0, v5

    if-ge v0, v14, :cond_2f

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_11

    :cond_2f
    aget-object v0, v5, v8

    .line 396
    :goto_11
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .line 398
    :goto_12
    array-length v4, v0

    if-ge v8, v4, :cond_30

    .line 399
    aget-object v4, v0, v8

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 401
    :cond_30
    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_d
    array-length v0, v5

    if-ge v0, v14, :cond_31

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_13

    :cond_31
    aget-object v0, v5, v8

    .line 486
    :goto_13
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 488
    invoke-virtual {v0, v14, v8}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    .line 489
    :goto_14
    array-length v4, v0

    if-ge v8, v4, :cond_32

    .line 490
    aget-object v4, v0, v8

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 492
    :cond_32
    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 510
    :pswitch_e
    array-length v0, v5

    if-ge v0, v14, :cond_33

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_15

    :cond_33
    aget-object v0, v5, v8

    .line 514
    :goto_15
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 516
    array-length v3, v5

    if-ge v3, v15, :cond_34

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_16

    :cond_34
    aget-object v3, v5, v14

    .line 517
    :goto_16
    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    if-nez v0, :cond_35

    .line 518
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_35
    return-object v0

    .line 522
    :pswitch_f
    array-length v0, v5

    if-ge v0, v14, :cond_36

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_17

    :cond_36
    aget-object v0, v5, v8

    .line 523
    :goto_17
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 524
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 526
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ScriptableObject;

    .line 527
    invoke-virtual {v0, v14, v14}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    :goto_18
    if-ge v8, v5, :cond_3a

    aget-object v6, v4, v8

    .line 528
    invoke-virtual {v0, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v7

    if-nez v7, :cond_37

    goto :goto_19

    .line 531
    :cond_37
    instance-of v9, v6, Lorg/mozilla/javascript/Symbol;

    if-eqz v9, :cond_38

    .line 532
    check-cast v6, Lorg/mozilla/javascript/Symbol;

    invoke-virtual {v3, v6, v3, v7}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_19

    .line 533
    :cond_38
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_39

    .line 534
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6, v3, v7}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_19

    .line 536
    :cond_39
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v3, v7}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_3a
    return-object v3

    .line 543
    :pswitch_10
    array-length v0, v5

    if-ge v0, v14, :cond_3b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1a

    :cond_3b
    aget-object v0, v5, v8

    .line 544
    :goto_1a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 545
    array-length v3, v5

    if-ge v3, v15, :cond_3c

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1b

    :cond_3c
    aget-object v3, v5, v14

    .line 546
    :goto_1b
    array-length v4, v5

    if-ge v4, v7, :cond_3d

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1c

    :cond_3d
    aget-object v4, v5, v15

    .line 547
    :goto_1c
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v4

    .line 548
    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    return-object v0

    .line 553
    :pswitch_11
    array-length v0, v5

    if-ge v0, v14, :cond_3e

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1d

    :cond_3e
    aget-object v0, v5, v8

    .line 554
    :goto_1d
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3f

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_3f

    .line 556
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 559
    :cond_3f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 564
    :pswitch_12
    array-length v0, v5

    if-ge v0, v14, :cond_40

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1e

    :cond_40
    aget-object v0, v5, v8

    .line 565
    :goto_1e
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_41

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_41

    return-object v0

    .line 570
    :cond_41
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()Z

    move-result v2

    if-eqz v2, :cond_42

    return-object v0

    .line 572
    :cond_42
    const-string v0, "Object.preventExtensions is not allowed"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 578
    :pswitch_13
    array-length v0, v5

    if-ge v0, v14, :cond_43

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1f

    :cond_43
    aget-object v0, v5, v8

    .line 579
    :goto_1f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 580
    array-length v4, v5

    if-ge v4, v15, :cond_44

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_20

    :cond_44
    aget-object v4, v5, v14

    .line 581
    :goto_20
    invoke-static {v4, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 582
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0

    .line 587
    :pswitch_14
    array-length v0, v5

    if-ge v0, v14, :cond_45

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_21

    :cond_45
    aget-object v0, v5, v8

    :goto_21
    if-nez v0, :cond_46

    move-object/from16 v8, v16

    goto :goto_22

    .line 588
    :cond_46
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v8

    .line 590
    :goto_22
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 591
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 592
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 594
    array-length v4, v5

    if-le v4, v14, :cond_47

    aget-object v4, v5, v14

    invoke-static {v4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 595
    aget-object v4, v5, v14

    invoke-static {v4, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 596
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    :cond_47
    return-object v0

    .line 603
    :pswitch_15
    array-length v0, v5

    if-ge v0, v14, :cond_48

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_23

    :cond_48
    aget-object v0, v5, v8

    .line 604
    :goto_23
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_49

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_49

    .line 606
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 609
    :cond_49
    sget-object v3, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->SEALED:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->testIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 614
    :pswitch_16
    array-length v0, v5

    if-ge v0, v14, :cond_4a

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_24

    :cond_4a
    aget-object v0, v5, v8

    .line 615
    :goto_24
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_4b

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_4b

    .line 617
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 620
    :cond_4b
    sget-object v3, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->FROZEN:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->testIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 625
    :pswitch_17
    array-length v0, v5

    if-ge v0, v14, :cond_4c

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_25

    :cond_4c
    aget-object v0, v5, v8

    .line 626
    :goto_25
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_4d

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_4d

    goto :goto_26

    .line 631
    :cond_4d
    sget-object v3, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->SEALED:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 632
    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->setIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :goto_26
    return-object v0

    .line 635
    :cond_4e
    const-string v0, "Object is not sealable"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 641
    :pswitch_18
    array-length v0, v5

    if-ge v0, v14, :cond_4f

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_27

    :cond_4f
    aget-object v0, v5, v8

    .line 642
    :goto_27
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_50

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_50

    goto :goto_28

    .line 647
    :cond_50
    sget-object v3, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->FROZEN:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 648
    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->setIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    move-result v2

    if-eqz v2, :cond_51

    :goto_28
    return-object v0

    .line 651
    :cond_51
    const-string v0, "Object is not freezable"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 496
    :pswitch_19
    array-length v0, v5

    if-ge v0, v14, :cond_52

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_29

    :cond_52
    aget-object v0, v5, v8

    .line 497
    :goto_29
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 498
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v14, v14}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    array-length v5, v0

    :goto_2a
    if-ge v8, v5, :cond_54

    aget-object v6, v0, v8

    .line 502
    instance-of v7, v6, Lorg/mozilla/javascript/Symbol;

    if-eqz v7, :cond_53

    .line 503
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 506
    :cond_54
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 660
    :pswitch_1a
    array-length v0, v5

    if-lez v0, :cond_55

    .line 661
    aget-object v0, v5, v8

    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_2b

    .line 663
    :cond_55
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_2b
    const/4 v4, 0x1

    .line 665
    :goto_2c
    array-length v6, v5

    if-ge v4, v6, :cond_5a

    .line 666
    aget-object v6, v5, v4

    if-eqz v6, :cond_59

    invoke-static {v6}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_2f

    .line 669
    :cond_56
    aget-object v6, v5, v4

    invoke-static {v2, v3, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 670
    invoke-interface {v6}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v7

    .line 671
    array-length v9, v7

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v9, :cond_59

    aget-object v11, v7, v10

    .line 672
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_57

    .line 673
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 674
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v12

    if-eqz v12, :cond_58

    .line 675
    invoke-direct {v1, v11, v6}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_58

    .line 676
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v12

    .line 677
    invoke-static {v2, v0, v11, v12, v14}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->put(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Z)V

    goto :goto_2e

    .line 681
    :cond_57
    invoke-static {v11}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 682
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v12

    if-eqz v12, :cond_58

    .line 683
    invoke-direct {v1, v11, v6}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_58

    .line 684
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v12

    .line 685
    invoke-static {v2, v0, v11, v12, v14}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->put(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_58
    :goto_2e
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_59
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_5a
    return-object v0

    .line 696
    :pswitch_1b
    array-length v0, v5

    if-ge v0, v14, :cond_5b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_30

    :cond_5b
    aget-object v0, v5, v8

    .line 697
    :goto_30
    array-length v2, v5

    if-ge v2, v15, :cond_5c

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_31

    :cond_5c
    aget-object v2, v5, v14

    .line 698
    :goto_31
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_1c
    array-length v0, v5

    if-lt v0, v15, :cond_64

    .line 363
    aget-object v0, v5, v14

    if-nez v0, :cond_5d

    move-object/from16 v0, v16

    goto :goto_32

    :cond_5d
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 364
    :goto_32
    instance-of v3, v0, Lorg/mozilla/javascript/Symbol;

    if-nez v3, :cond_63

    .line 369
    aget-object v3, v5, v8

    .line 370
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_5e

    .line 371
    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    .line 373
    :cond_5e
    instance-of v2, v3, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_5f

    return-object v3

    .line 376
    :cond_5f
    check-cast v3, Lorg/mozilla/javascript/ScriptableObject;

    .line 377
    invoke-virtual {v3}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v2

    if-eqz v2, :cond_62

    move-object v2, v0

    :goto_33
    if-eqz v2, :cond_61

    if-eq v2, v3, :cond_60

    .line 388
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_33

    .line 386
    :cond_60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v8

    .line 385
    const-string v0, "msg.object.cyclic.prototype"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 390
    :cond_61
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v3

    .line 378
    :cond_62
    const-string v0, "msg.not.extensible"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 366
    :cond_63
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v8

    .line 365
    const-string v0, "msg.arg.not.object"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 357
    :cond_64
    array-length v0, v5

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "Object.setPrototypeOf"

    aput-object v3, v2, v8

    const-string v3, "2"

    aput-object v3, v2, v14

    aput-object v0, v2, v15

    .line 357
    const-string v0, "msg.method.missing.parameter"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 406
    :pswitch_1d
    array-length v0, v5

    if-ge v0, v14, :cond_65

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_34

    :cond_65
    aget-object v0, v5, v8

    .line 407
    :goto_34
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 410
    :goto_35
    array-length v7, v4

    if-ge v5, v7, :cond_68

    .line 411
    aget-object v7, v4, v5

    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_66

    .line 412
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 413
    invoke-interface {v0, v7, v0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-direct {v1, v7, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 414
    aget-object v9, v4, v5

    invoke-static {v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 415
    invoke-interface {v0, v7, v0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v7

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v9, v10, v8

    aput-object v7, v10, v14

    add-int/lit8 v7, v6, 0x1

    .line 416
    invoke-virtual {v2, v3, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    aput-object v9, v4, v6

    goto :goto_36

    .line 419
    :cond_66
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 420
    invoke-interface {v0, v7, v0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-direct {v1, v7, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 421
    invoke-interface {v0, v7, v0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v7, v10, v8

    aput-object v9, v10, v14

    add-int/lit8 v7, v6, 0x1

    .line 422
    invoke-virtual {v2, v3, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    aput-object v9, v4, v6

    :goto_36
    move v6, v7

    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 426
    :cond_68
    array-length v0, v4

    if-eq v6, v0, :cond_69

    .line 427
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 429
    :cond_69
    invoke-virtual {v2, v3, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 433
    :pswitch_1e
    array-length v0, v5

    if-ge v0, v14, :cond_6a

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_37

    :cond_6a
    aget-object v0, v5, v8

    .line 434
    :goto_37
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 435
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 436
    new-instance v5, Lorg/mozilla/javascript/NativeObject$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/NativeObject$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {v2, v3, v0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/util/function/BiConsumer;)Z

    return-object v4

    .line 454
    :pswitch_1f
    array-length v0, v5

    if-ge v0, v14, :cond_6b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_38

    :cond_6b
    aget-object v0, v5, v8

    .line 455
    :goto_38
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 458
    :goto_39
    array-length v6, v4

    if-ge v8, v6, :cond_6e

    .line 459
    aget-object v6, v4, v8

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_6c

    .line 460
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 461
    invoke-interface {v0, v6, v0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-direct {v1, v6, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    add-int/lit8 v7, v5, 0x1

    .line 462
    invoke-interface {v0, v6, v0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_3a

    .line 465
    :cond_6c
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-interface {v0, v6, v0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-direct {v1, v6, v0}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    add-int/lit8 v7, v5, 0x1

    .line 468
    invoke-interface {v0, v6, v0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_3a
    move v5, v7

    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 472
    :cond_6e
    array-length v0, v4

    if-eq v5, v0, :cond_6f

    .line 473
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 475
    :cond_6f
    invoke-virtual {v2, v3, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 479
    :pswitch_20
    array-length v0, v5

    if-ge v0, v14, :cond_70

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3b

    :cond_70
    aget-object v0, v5, v8

    .line 480
    :goto_3b
    array-length v3, v5

    if-ge v3, v15, :cond_71

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3c

    :cond_71
    aget-object v3, v5, v14

    .line 481
    :goto_3c
    invoke-static {v2, v0, v3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->hasOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 703
    :pswitch_21
    array-length v0, v5

    if-ge v0, v14, :cond_72

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3d

    :cond_72
    aget-object v0, v5, v8

    .line 704
    :goto_3d
    array-length v6, v5

    if-ge v6, v15, :cond_73

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3e
    move-object v6, v5

    goto :goto_3f

    :cond_73
    aget-object v5, v5, v14

    goto :goto_3e

    .line 706
    :goto_3f
    sget-object v7, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->PROPERTY:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    move-object v5, v0

    .line 707
    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->groupBy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;)Ljava/util/Map;

    move-result-object v0

    .line 715
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/NativeObject;

    move-object/from16 v5, v16

    .line 716
    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 718
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 721
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ScriptableObject;

    .line 722
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "enumerable"

    invoke-virtual {v7, v9, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 723
    const-string v9, "configurable"

    invoke-virtual {v7, v9, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 724
    const-string v8, "value"

    invoke-virtual {v7, v8, v7, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 726
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v7}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    goto :goto_40

    :cond_74
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x17
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    .line 50
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const-string v4, "getPrototypeOf"

    const/4 v5, 0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 51
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    iget p1, p1, Lorg/mozilla/javascript/Context;->version:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 52
    const-string v4, "setPrototypeOf"

    const/4 v5, 0x2

    const/16 v3, -0x12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 54
    const-string v4, "entries"

    const/4 v5, 0x1

    const/16 v3, -0x13

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 55
    const-string v4, "fromEntries"

    const/16 v3, -0x14

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 56
    const-string v4, "values"

    const/16 v3, -0x15

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 57
    const-string v4, "hasOwn"

    const/16 v3, -0x16

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 59
    :cond_0
    const-string v4, "keys"

    const/4 v5, 0x1

    const/4 v3, -0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 60
    const-string v4, "getOwnPropertyNames"

    const/4 v3, -0x3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 62
    const-string v4, "getOwnPropertySymbols"

    const/16 v3, -0xf

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 64
    const-string v4, "getOwnPropertyDescriptor"

    const/4 v5, 0x2

    const/4 v3, -0x4

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 70
    const-string v4, "getOwnPropertyDescriptors"

    const/4 v5, 0x1

    const/4 v3, -0x5

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 76
    const-string v4, "defineProperty"

    const/4 v5, 0x3

    const/4 v3, -0x6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 77
    const-string v4, "isExtensible"

    const/4 v5, 0x1

    const/4 v3, -0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 78
    const-string v4, "preventExtensions"

    const/4 v3, -0x8

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 80
    const-string v4, "defineProperties"

    const/4 v5, 0x2

    const/16 v3, -0x9

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 82
    const-string v4, "create"

    const/16 v3, -0xa

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 83
    const-string v4, "isSealed"

    const/4 v5, 0x1

    const/16 v3, -0xb

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 84
    const-string v4, "isFrozen"

    const/16 v3, -0xc

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 85
    const-string v4, "seal"

    const/16 v3, -0xd

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 86
    const-string v4, "freeze"

    const/16 v3, -0xe

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 87
    const-string v4, "assign"

    const/4 v5, 0x2

    const/16 v3, -0x10

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 88
    const-string v4, "is"

    const/16 v3, -0x11

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 89
    const-string v4, "groupBy"

    const/16 v3, -0x17

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 90
    invoke-super {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 14

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "__defineGetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "__defineSetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "__lookupGetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "__lookupSetter__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "valueOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v13, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "propertyIsEnumerable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v13, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "isPrototypeOf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v13, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v13, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "hasOwnProperty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v13, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "toLocaleString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v13, 0x0

    :goto_0
    packed-switch v13, :pswitch_data_0

    return v12

    :pswitch_0
    return v3

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    const/16 p1, 0xc

    return p1

    :pswitch_4
    return v8

    :pswitch_5
    return v6

    :pswitch_6
    return v5

    :pswitch_7
    return v11

    :pswitch_8
    return v10

    :pswitch_9
    return v4

    :pswitch_a
    return v7

    :pswitch_b
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_b
        -0x6aaca37f -> :sswitch_a
        -0x6a2ea58a -> :sswitch_9
        -0x69e9ad94 -> :sswitch_8
        -0x5ead2806 -> :sswitch_7
        -0x4ef0f4f1 -> :sswitch_6
        -0x22bb54f9 -> :sswitch_5
        0xdce0328 -> :sswitch_4
        0x3068b019 -> :sswitch_3
        0x51da95a5 -> :sswitch_2
        0x54610f5a -> :sswitch_1
        0x75d2f4e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 39
    const-string v0, "Object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    const-string v0, "__lookupSetter__"

    goto :goto_2

    .line 141
    :pswitch_1
    const-string v0, "__lookupGetter__"

    goto :goto_2

    .line 137
    :pswitch_2
    const-string v1, "__defineSetter__"

    :goto_0
    move-object v0, v1

    const/4 v2, 0x2

    goto :goto_2

    .line 133
    :pswitch_3
    const-string v1, "__defineGetter__"

    goto :goto_0

    .line 129
    :pswitch_4
    const-string v0, "toSource"

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 125
    :pswitch_5
    const-string v0, "isPrototypeOf"

    goto :goto_2

    .line 121
    :pswitch_6
    const-string v0, "propertyIsEnumerable"

    goto :goto_2

    .line 117
    :pswitch_7
    const-string v0, "hasOwnProperty"

    goto :goto_2

    .line 113
    :pswitch_8
    const-string v0, "valueOf"

    goto :goto_1

    .line 109
    :pswitch_9
    const-string v0, "toLocaleString"

    goto :goto_1

    .line 105
    :pswitch_a
    const-string v0, "toString"

    goto :goto_1

    .line 101
    :pswitch_b
    const-string v0, "constructor"

    .line 149
    :goto_2
    sget-object v1, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 824
    new-instance v0, Lorg/mozilla/javascript/NativeObject$KeySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$KeySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 839
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 844
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 813
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 814
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 815
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    return-object v0

    .line 816
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 817
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 829
    new-instance v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$ValueCollection;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method
