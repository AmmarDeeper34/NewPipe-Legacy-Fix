.class public Lorg/mozilla/javascript/NativeJavaMethod;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeJavaMethod.java"


# static fields
.field private static final PREFERENCE_AMBIGUOUS:I = 0x3

.field private static final PREFERENCE_EQUAL:I = 0x0

.field private static final PREFERENCE_FIRST_ARG:I = 0x1

.field private static final PREFERENCE_SECOND_ARG:I = 0x2

.field private static final debug:Z = false

.field private static final serialVersionUID:J = -0x2fbeb1018d019700L


# instance fields
.field private functionName:Ljava/lang/String;

.field methods:[Lorg/mozilla/javascript/MemberBox;

.field private final transient overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/mozilla/javascript/ResolvedOverload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 1

    .line 44
    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 526
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 40
    new-array p2, p2, [Lorg/mozilla/javascript/MemberBox;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method constructor <init>([Lorg/mozilla/javascript/MemberBox;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 526
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 29
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method constructor <init>([Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 526
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method static findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 266
    array-length v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 268
    :cond_0
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 269
    aget-object v0, v0, v4

    .line 270
    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 271
    array-length v5, v2

    .line 273
    iget-boolean v0, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v0, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 275
    array-length v0, v1

    if-le v5, v0, :cond_2

    return v3

    .line 279
    :cond_1
    array-length v0, v1

    if-eq v5, v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v5, :cond_4

    .line 284
    aget-object v6, v1, v0

    aget-object v7, v2, v0

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 298
    :goto_1
    array-length v9, v0

    const/4 v11, 0x3

    if-ge v6, v9, :cond_18

    .line 299
    aget-object v9, v0, v6

    .line 300
    iget-object v12, v9, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 301
    array-length v13, v12

    .line 302
    iget-boolean v14, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v14, :cond_6

    add-int/lit8 v13, v13, -0x1

    .line 304
    array-length v14, v1

    if-le v13, v14, :cond_7

    :goto_2
    move-object/from16 v10, p0

    move-object/from16 v19, v2

    const/16 v16, 0x0

    goto/16 :goto_b

    .line 308
    :cond_6
    array-length v14, v1

    if-eq v13, v14, :cond_7

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_9

    .line 313
    aget-object v15, v1, v14

    const/16 v16, 0x0

    aget-object v4, v12, v14

    invoke-static {v15, v4}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v10, p0

    move-object/from16 v19, v2

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    if-gez v7, :cond_a

    move-object/from16 v10, p0

    move-object/from16 v19, v2

    goto/16 :goto_8

    :cond_a
    const/4 v4, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-eq v4, v8, :cond_14

    if-ne v4, v3, :cond_b

    move v15, v7

    goto :goto_5

    .line 335
    :cond_b
    aget v15, v2, v4

    .line 337
    :goto_5
    aget-object v15, v0, v15

    const/16 v3, 0xd

    move-object/from16 v10, p0

    .line 338
    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 339
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v3

    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v5

    if-eq v3, v5, :cond_d

    .line 343
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v3

    if-nez v3, :cond_c

    add-int/lit8 v13, v13, 0x1

    :goto_6
    move-object/from16 v19, v2

    goto :goto_7

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 346
    :cond_d
    iget-boolean v3, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    iget-object v5, v15, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    move-object/from16 v19, v2

    iget-boolean v2, v15, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 347
    invoke-static {v1, v12, v3, v5, v2}, Lorg/mozilla/javascript/NativeJavaMethod;->preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    move-result v2

    if-ne v2, v11, :cond_e

    goto :goto_a

    :cond_e
    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    add-int/lit8 v14, v14, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    const/4 v3, -0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_11

    .line 360
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 366
    :cond_11
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 367
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 368
    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, -0x1

    if-ne v4, v2, :cond_13

    :goto_8
    move v7, v6

    :cond_12
    :goto_9
    move-object/from16 v2, v19

    goto :goto_d

    .line 378
    :cond_13
    aput v6, v19, v4

    goto :goto_b

    :cond_14
    move-object/from16 v10, p0

    move-object/from16 v19, v2

    :goto_a
    add-int/lit8 v2, v8, 0x1

    if-ne v13, v2, :cond_15

    move v7, v6

    move-object/from16 v2, v19

    const/4 v8, 0x0

    goto :goto_d

    :cond_15
    if-ne v14, v2, :cond_16

    :goto_b
    goto :goto_9

    :cond_16
    if-nez v19, :cond_17

    .line 401
    array-length v3, v0

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    goto :goto_c

    :cond_17
    move-object/from16 v3, v19

    .line 403
    :goto_c
    aput v6, v3, v8

    move v8, v2

    move-object v2, v3

    :goto_d
    add-int/lit8 v6, v6, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v19, v2

    const/16 v16, 0x0

    if-gez v7, :cond_19

    const/4 v2, -0x1

    return v2

    :cond_19
    const/4 v2, -0x1

    if-nez v8, :cond_1a

    return v7

    .line 418
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, -0x1

    :goto_e
    if-eq v4, v8, :cond_1c

    if-ne v4, v2, :cond_1b

    move v5, v7

    goto :goto_f

    .line 424
    :cond_1b
    aget v5, v19, v4

    .line 426
    :goto_f
    const-string v6, "\n    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/MemberBox;->toJavaDeclaration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 430
    :cond_1c
    aget-object v2, v0, v7

    .line 431
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 434
    aget-object v0, v0, v16

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 436
    invoke-static {v1}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v4, v2, v16

    const/16 v18, 0x1

    aput-object v0, v2, v18

    const/16 v17, 0x2

    aput-object v1, v2, v17

    .line 435
    const-string v0, "msg.constructor.ambiguous"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_1d
    const/16 v17, 0x2

    const/16 v18, 0x1

    .line 442
    invoke-static {v1}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v16

    aput-object v4, v3, v18

    aput-object v0, v3, v17

    aput-object v1, v3, v11

    .line 438
    const-string v0, "msg.method.ambiguous"

    invoke-static {v0, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method private static preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 462
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_8

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 463
    array-length v3, p1

    if-lt v0, v3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object v3, p1, v3

    goto :goto_1

    :cond_0
    aget-object v3, p1, v0

    :goto_1
    if-eqz p4, :cond_1

    .line 464
    array-length v4, p3

    if-lt v0, v4, :cond_1

    array-length v4, p3

    sub-int/2addr v4, v2

    aget-object v4, p3, v4

    goto :goto_2

    :cond_1
    aget-object v4, p3, v0

    :goto_2
    if-ne v3, v4, :cond_2

    goto :goto_5

    .line 468
    :cond_2
    aget-object v5, p0, v0

    .line 472
    invoke-static {v5, v3}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v6

    .line 473
    invoke-static {v5, v4}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v5

    const/4 v7, 0x3

    if-ge v6, v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x2

    if-le v6, v5, :cond_4

    :goto_3
    const/4 v2, 0x2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_6

    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 485
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x3

    :goto_4
    or-int/2addr v1, v2

    if-ne v1, v7, :cond_7

    return v1

    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method private static printDebug(Ljava/lang/String;Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method static scriptSignature([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 54
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_9

    .line 55
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    .line 59
    const-string v2, "null"

    goto :goto_1

    .line 60
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 61
    const-string v2, "boolean"

    goto :goto_1

    .line 62
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 63
    const-string v2, "string"

    goto :goto_1

    .line 64
    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 65
    const-string v2, "number"

    goto :goto_1

    .line 66
    :cond_3
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_7

    .line 67
    instance-of v3, v2, Lorg/mozilla/javascript/Undefined;

    if-eqz v3, :cond_4

    .line 68
    const-string v2, "undefined"

    goto :goto_1

    .line 69
    :cond_4
    instance-of v3, v2, Lorg/mozilla/javascript/Wrapper;

    if-eqz v3, :cond_5

    .line 70
    check-cast v2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 72
    :cond_5
    instance-of v2, v2, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_6

    .line 73
    const-string v2, "function"

    goto :goto_1

    .line 75
    :cond_6
    const-string v2, "object"

    goto :goto_1

    .line 78
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_8

    const/16 v3, 0x2c

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v0, v0

    if-eqz v0, :cond_d

    .line 130
    invoke-virtual {p0, p1, p4}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c

    .line 137
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v0, v3, v0

    .line 138
    iget-object v3, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 140
    iget-boolean v4, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v4, :cond_4

    .line 142
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 143
    :goto_0
    array-length v6, v3

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_0

    .line 144
    aget-object v6, p4, v5

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_0
    array-length v5, p4

    array-length v6, v3

    if-ne v5, v6, :cond_2

    array-length v5, p4

    sub-int/2addr v5, v2

    aget-object v5, p4, v5

    if-eqz v5, :cond_1

    array-length v5, p4

    sub-int/2addr v5, v2

    aget-object v5, p4, v5

    instance-of v5, v5, Lorg/mozilla/javascript/NativeArray;

    if-nez v5, :cond_1

    array-length v5, p4

    sub-int/2addr v5, v2

    aget-object v5, p4, v5

    instance-of v5, v5, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v5, :cond_2

    .line 156
    :cond_1
    array-length v5, p4

    sub-int/2addr v5, v2

    aget-object p4, p4, v5

    array-length v5, v3

    sub-int/2addr v5, v2

    aget-object v5, v3, v5

    invoke-static {p4, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_2

    .line 159
    :cond_2
    array-length v5, v3

    sub-int/2addr v5, v2

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 160
    array-length v6, p4

    array-length v7, v3

    sub-int/2addr v6, v7

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    .line 161
    :goto_1
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 162
    array-length v8, v3

    sub-int/2addr v8, v2

    add-int/2addr v8, v7

    aget-object v8, p4, v8

    invoke-static {v8, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 163
    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object p4, v6

    .line 168
    :goto_2
    array-length v3, v3

    sub-int/2addr v3, v2

    aput-object p4, v4, v3

    goto :goto_4

    :cond_4
    move-object v4, p4

    const/4 v5, 0x0

    .line 174
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 175
    aget-object v6, v4, v5

    .line 176
    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_6

    if-ne p4, v4, :cond_5

    .line 179
    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 181
    :cond_5
    aput-object v7, v4, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 186
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p3, 0x0

    goto :goto_6

    .line 190
    :cond_8
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    move-object v3, p3

    :goto_5
    if-eqz v3, :cond_b

    .line 199
    instance-of v5, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v5, :cond_a

    .line 200
    move-object v5, v3

    check-cast v5, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v5}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v5

    .line 201
    invoke-virtual {p4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object p3, v5

    .line 212
    :goto_6
    invoke-virtual {v0, p3, v4}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 213
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    .line 227
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    .line 236
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, p2, :cond_9

    .line 237
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_9
    return-object p1

    .line 205
    :cond_a
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_5

    .line 195
    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p2, p4, v2

    const/4 p1, 0x2

    aput-object p3, p4, p1

    .line 193
    const-string p1, "msg.nonjava.method"

    invoke-static {p1, p4}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 132
    :cond_c
    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "msg.java.no_such_method"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 127
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No methods defined for call"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method decompile(ILjava/util/EnumSet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/javascript/DecompilerFlag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    sget-object v0, Lorg/mozilla/javascript/DecompilerFlag;->ONLY_BODY:Lorg/mozilla/javascript/DecompilerFlag;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 94
    const-string v0, "function "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "() {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    const-string v0, "/*\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 100
    const-string p2, "*/\n"

    goto :goto_0

    :cond_1
    const-string p2, "*/}\n"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I
    .locals 3

    .line 243
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 244
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ResolvedOverload;

    .line 245
    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/ResolvedOverload;->matches([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget p1, v1, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    return p1

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result p1

    .line 252
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 253
    new-instance v0, Lorg/mozilla/javascript/ResolvedOverload;

    invoke-direct {v0, p2, p1}, Lorg/mozilla/javascript/ResolvedOverload;-><init>([Ljava/lang/Object;I)V

    .line 254
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_2
    return p1

    .line 258
    :cond_3
    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_1

    .line 109
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
