.class public Lorg/mozilla/javascript/ArrayLikeAbstractOperations;
.super Ljava/lang/Object;
.source "ArrayLikeAbstractOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetSTRING_COMPARATOR()Ljava/util/Comparator;
    .locals 1

    .line 0
    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->STRING_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 306
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->STRING_COMPARATOR:Ljava/util/Comparator;

    .line 307
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    .line 199
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_0
    long-to-int p0, p2

    .line 202
    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method static getCallbackArg(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 3

    .line 174
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_2

    .line 178
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Function;

    .line 180
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    .line 181
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 182
    invoke-interface {p0, v0}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object v0

    .line 175
    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-int p2, p1

    .line 211
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    array-length v0, p2

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    if-eq v0, v1, :cond_0

    .line 273
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparatorFromArguments(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    move-result-object p0

    return-object p0

    .line 275
    :cond_0
    sget-object p0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    return-object p0
.end method

.method public static getSortComparatorFromArguments(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;
    .locals 6

    const/4 v0, 0x0

    .line 281
    aget-object p2, p2, v0

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    .line 282
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    const/4 p2, 0x2

    .line 283
    new-array v1, p2, [Ljava/lang/Object;

    .line 284
    new-instance p2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$1;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$1;-><init>([Ljava/lang/Object;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;-><init>(Ljava/util/Comparator;)V

    return-object p2
.end method

.method public static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 39
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 53
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 64
    invoke-static {v0, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez p6, :cond_1

    .line 67
    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v5, v1, :cond_1

    :cond_0
    move-object/from16 v5, p1

    .line 71
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    .line 75
    :cond_1
    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v5

    .line 76
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v8, 0x0

    if-ne v1, v7, :cond_3

    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v5, v9

    if-gtz v11, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "msg.arraylength.bad"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 81
    :cond_3
    :goto_0
    array-length v9, v3

    if-lez v9, :cond_4

    aget-object v9, v3, v8

    goto :goto_1

    :cond_4
    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 83
    :goto_1
    invoke-static {v0, v9}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getCallbackArg(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v9

    .line 84
    invoke-static {v9}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    .line 86
    array-length v11, v3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lt v11, v12, :cond_6

    aget-object v3, v3, v13

    if-eqz v3, :cond_6

    sget-object v11, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v3, v11, :cond_5

    goto :goto_2

    .line 89
    :cond_5
    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    move-object v3, v10

    .line 93
    :goto_3
    sget-object v11, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v11, :cond_8

    if-ne v1, v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_4
    if-ne v1, v7, :cond_9

    long-to-int v7, v5

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 95
    :goto_5
    invoke-virtual {v0, v2, v7}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 99
    :goto_6
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    if-eq v1, v7, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v11, :cond_a

    goto :goto_7

    :cond_a
    move-wide/from16 v18, v14

    goto :goto_8

    :cond_b
    :goto_7
    sub-long v18, v5, v16

    :goto_8
    const-wide/16 v20, -0x1

    if-eq v1, v7, :cond_c

    .line 104
    sget-object v11, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v11, :cond_d

    :cond_c
    move-wide/from16 v5, v20

    :cond_d
    if-eq v1, v7, :cond_f

    .line 109
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v7, :cond_e

    goto :goto_9

    :cond_e
    move-wide/from16 v20, v16

    :cond_f
    :goto_9
    move-wide/from16 v12, v18

    const/16 p1, 0x2

    const/16 p4, 0x1

    :goto_a
    const/4 v7, 0x3

    cmp-long v11, v12, v5

    if-eqz v11, :cond_13

    .line 115
    invoke-static {v4, v12, v13}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v11

    const/16 p6, 0x0

    .line 116
    sget-object v8, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v11, v8, :cond_11

    .line 117
    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v8, :cond_10

    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v8, :cond_10

    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v8, :cond_10

    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v8, :cond_12

    .line 121
    :cond_10
    sget-object v11, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 127
    :cond_11
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 128
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, p6

    aput-object v8, v7, p4

    aput-object v4, v7, p1

    .line 129
    invoke-interface {v9, v0, v10, v3, v7}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 130
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    goto :goto_b

    .line 151
    :pswitch_1
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    long-to-double v0, v12

    .line 152
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_2
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    return-object v11

    .line 143
    :pswitch_3
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 140
    :pswitch_4
    invoke-static {v0, v2, v12, v13, v8}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_b

    .line 135
    :pswitch_5
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    add-long v18, v14, v16

    aget-object v7, v7, p6

    invoke-static {v0, v2, v14, v15, v7}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide/from16 v14, v18

    goto :goto_b

    .line 132
    :pswitch_6
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_12
    :goto_b
    add-long v12, v12, v20

    const/4 v8, 0x0

    goto :goto_a

    .line 156
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    if-eq v0, v7, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 169
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 166
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 163
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_16
    return-object v2

    .line 158
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 237
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    .line 240
    array-length v2, v3

    const/4 v6, 0x0

    if-lez v2, :cond_0

    aget-object v2, v3, v6

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    if-eqz v2, :cond_8

    .line 241
    instance-of v7, v2, Lorg/mozilla/javascript/Function;

    if-eqz v7, :cond_8

    .line 244
    check-cast v2, Lorg/mozilla/javascript/Function;

    .line 245
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    .line 247
    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    const/4 v9, 0x1

    move-object/from16 v10, p1

    if-ne v10, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 248
    :goto_1
    array-length v10, v3

    if-le v10, v9, :cond_2

    aget-object v3, v3, v9

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    :goto_2
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v12, v10, v4

    if-gez v12, :cond_6

    const-wide/16 v12, 0x1

    if-eqz v8, :cond_3

    move-wide v14, v10

    :goto_4
    const/16 p2, 0x1

    goto :goto_5

    :cond_3
    sub-long v14, v4, v12

    sub-long/2addr v14, v10

    goto :goto_4

    .line 251
    :goto_5
    invoke-static {v1, v14, v15}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    move-wide/from16 p3, v12

    .line 252
    sget-object v12, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v9, v12, :cond_4

    goto :goto_6

    :cond_4
    if-ne v3, v12, :cond_5

    move-object v3, v9

    goto :goto_6

    .line 259
    :cond_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v6

    aput-object v9, v13, p2

    const/4 v3, 0x2

    aput-object v12, v13, v3

    const/4 v3, 0x3

    aput-object v1, v13, v3

    .line 260
    invoke-interface {v2, v0, v7, v7, v13}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_6
    add-long v10, v10, p3

    const/4 v9, 0x1

    goto :goto_3

    .line 263
    :cond_6
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_7

    return-object v3

    .line 265
    :cond_7
    const-string v0, "msg.empty.array.reduce"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 242
    :cond_8
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static toSliceIndex(DJ)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    long-to-double p2, p2

    add-double/2addr p0, p2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    double-to-long p0, p0

    return-wide p0

    :cond_1
    long-to-double v0, p2

    cmpl-double v2, p0, v0

    if-lez v2, :cond_2

    return-wide p2

    :cond_2
    double-to-long p0, p0

    return-wide p0
.end method
