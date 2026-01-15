.class public abstract Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "NativeTypedArrayView.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lorg/mozilla/javascript/ExternalArrayData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;,
        Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Lorg/mozilla/javascript/ExternalArrayData;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44e04f1c7de6ed8aL


# instance fields
.field protected final length:I


# direct methods
.method public static synthetic $r8$lambda$-UlAeKzWkBN9auufW24yC6dWIdk(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7hdriKtv0PQYuT_80xaxMdoRFXw(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 447
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9USIQW_-RVyYYod_mduzHUQCUSQ(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9XDJEELgrA_KQUu38IZCUMRjdcA(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BB8NIiJHvMpE-iiOrTff57QKV2w(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_byteOffset(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BRUj5z3UiC9grx4rcq_JxNl7GFM(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EHC46VPLaSpVygMiWB29S4gNBJY(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_byteLength(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EqmOVFs9nGxrH2_dRMwIAWY4BjA(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FI-ezn0quCMHpg3zfFnPB8am9Os(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FUlKvsEgT-IHxQ5xDR0ckxsVUZk(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 198
    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$GtggSAi8L6Yf68aid_Bx9Qa0Z84(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HLRkE4qg6KoGjHccBVJRorKSPGQ(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 351
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IS57MNyLgV0ePp3f7SeumFEVLf8(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 372
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$InAUCCj-HAMa8x-B32F-Q1qJJHk(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 241
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KXWp_wG7aaoES3dTfNT3OCo2kp8(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 329
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kc-MEtKBKUSMfBzn25YUOkPemrg(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 337
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 338
    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 339
    invoke-static {p1, v0, p2, p3, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    .line 341
    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const-string p3, "map"

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M133E4CJkIEQuJ7khLtyaUGhLac(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_length(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MHd2rIUNSJi69vzy-LXiNo3AMqk(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 208
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NE21nLyHCcbANs3cLm9UfjVNYhc(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 361
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 362
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PpXrU0BrRI7JmRgT3zNDirLJ_CA(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 423
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RUT_NxysqA0vRFx4j089v9QtEA4(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 311
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RwLYaB6h_UU1lHfIWGYo3fqkqEY(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T1WXIuR_fbSaiS8TTG0j5avuZwE(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 415
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UxDDDS99Fx7Hujpgy90I4yAvyZs(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 474
    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$WgvpMq8CRBa7j6cb0skny_47SBs(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZXHabw2cFdlbnJYq8QaidGqn7Jw(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 273
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 274
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a6x86g6PFQlSHptsnkuV-3Jxygw(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 439
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aFig1HaQqVeI7JFeeZFnB-Jwxp4(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 397
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bsJTxVG_QVRYrKv0rXXbxhjaXq0(Ljava/lang/Object;)D
    .locals 2

    .line 938
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$he0fpqSNEmv4IPn_ruiHo1PVP74(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 226
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 227
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 228
    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    .line 230
    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const-string p3, "filter"

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j-6tjQ3v4aMJi3VLG0HYNX6oHjI(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 262
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 263
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$km7vw9QtrHk-NPLW4MpnfJikjqo(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 407
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o5trp7IYYB42Uafdrso4do_VT8E(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 455
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 456
    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$slCBOVvxjzPJGZT_RCzuAmIBCag(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 285
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wwNrCH5-2H68mwP2xeSZ_Mcfrng(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 158
    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_buffer(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yIAtvJn-kWQKUrnJ5B7Pt-g8gn4(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 320
    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$zXnHeGIFzHw-VveY1j7pz4Mg0YY(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 252
    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;III)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    .line 56
    iput p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method private getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;
    .locals 1

    .line 704
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 706
    const-string p4, "toLocaleString"

    invoke-static {p3, p4, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p3

    .line 707
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 708
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p3, p1, p2, p4, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V
    .locals 7

    .line 155
    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v3, "buffer"

    const/4 v4, 0x3

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    .line 160
    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda12;

    invoke-direct {v2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda12;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v3, "byteLength"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    .line 165
    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda23;

    invoke-direct {v2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda23;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v3, "byteOffset"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    .line 170
    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda30;

    invoke-direct {v2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda30;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v3, "length"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    .line 176
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda31;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda31;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "at"

    const/4 v3, 0x1

    move-object v1, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 184
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda32;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda32;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "copyWithin"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 192
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda33;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda33;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "entries"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 202
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda34;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda34;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "every"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 213
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda35;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda35;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "fill"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 221
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda36;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda36;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "filter"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 235
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda2;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "find"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 246
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda3;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "findIndex"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 257
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda4;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda4;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "findLast"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 268
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda5;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "findLastIndex"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 279
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda6;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda6;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "forEach"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 290
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda7;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda7;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "includes"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 298
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda8;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda8;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "indexOf"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 306
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda9;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda9;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "join"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 314
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda10;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda10;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "keys"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 324
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda11;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda11;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "lastIndexOf"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 332
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda13;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda13;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "map"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 345
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda14;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda14;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "reduce"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 356
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda15;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda15;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "reduceRight"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 367
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda16;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda16;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "reverse"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 375
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda17;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda17;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "set"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 383
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda18;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda18;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "slice"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 391
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda19;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda19;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "some"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 402
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda20;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda20;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "sort"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 410
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda21;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda21;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "subarray"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 418
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda22;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda22;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "toLocaleString"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 426
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda24;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda24;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "toReversed"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 434
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda25;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda25;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "toSorted"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 442
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda26;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda26;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "toString"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 450
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda27;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda27;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "values"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 460
    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda28;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda28;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const-string v2, "with"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 468
    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    new-instance v4, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda29;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda29;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/SymbolKey;ILorg/mozilla/javascript/Callable;II)V

    return-void
.end method

.method private static js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 4

    .line 1051
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 1054
    array-length p1, p3

    const/4 p4, 0x1

    const-wide/16 v0, 0x0

    if-lt p1, p4, :cond_0

    const/4 p1, 0x0

    .line 1055
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    goto :goto_0

    :cond_0
    move-wide p3, v0

    :goto_0
    cmp-long p1, p3, v0

    if-ltz p1, :cond_1

    goto :goto_1

    .line 1058
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v2, p1

    add-long/2addr p3, v2

    :goto_1
    cmp-long p1, p3, v0

    if-ltz p1, :cond_3

    .line 1060
    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p0, p0

    cmp-long v0, p3, p0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    long-to-int p0, p3

    .line 1064
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1061
    :cond_3
    :goto_2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static js_buffer(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    .line 664
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method private static js_byteLength(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    .line 668
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 669
    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static js_byteOffset(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    .line 673
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 674
    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;I)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;",
            "I)",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 517
    invoke-static {p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-interface {p3, p0, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    .line 521
    :cond_0
    aget-object v1, p2, v0

    if-nez v1, :cond_1

    .line 523
    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-interface {p3, p0, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    .line 526
    :cond_1
    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_13

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 533
    :cond_2
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz v2, :cond_4

    .line 535
    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 536
    iget p2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    .line 537
    iget p1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 539
    :goto_0
    iget p1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_3

    .line 540
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    .line 545
    :cond_4
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v2, :cond_b

    .line 547
    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 p0, 0x1

    .line 548
    invoke-static {p2, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_5

    aget-object p1, p2, p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const/4 v2, 0x2

    .line 551
    invoke-static {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 552
    aget-object p2, p2, v2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    mul-int p2, p2, p4

    goto :goto_2

    .line 554
    :cond_6
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_2
    if-ltz p1, :cond_a

    .line 557
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v3

    if-gt p1, v3, :cond_a

    if-ltz p2, :cond_9

    add-int v3, p1, p2

    .line 561
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v4

    if-gt v3, v4, :cond_9

    .line 565
    rem-int v3, p1, p4

    if-nez v3, :cond_8

    .line 571
    rem-int v3, p2, p4

    if-nez v3, :cond_7

    .line 580
    div-int/2addr p2, p4

    invoke-interface {p3, v1, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    .line 575
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 576
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v0

    aput-object p2, p3, p0

    .line 573
    const-string p0, "msg.typed.array.bad.buffer.length.byte.size"

    invoke-static {p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 568
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v0

    aput-object p2, p3, p0

    .line 567
    const-string p0, "msg.typed.array.bad.offset.byte.size"

    invoke-static {p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 562
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "msg.typed.array.bad.length"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 563
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 558
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "msg.typed.array.bad.offset"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 559
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 583
    :cond_b
    instance-of p2, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_10

    .line 585
    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    .line 587
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    .line 588
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p1

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 589
    :goto_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_f

    .line 592
    invoke-virtual {v1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    .line 593
    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_e

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_c

    goto :goto_4

    .line 595
    :cond_c
    instance-of p2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_d

    .line 596
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 598
    :cond_d
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 594
    :cond_e
    :goto_4
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-object p0

    .line 604
    :cond_10
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isArrayObject(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 606
    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p2

    .line 608
    array-length v1, p2

    .line 609
    invoke-static {p0, p1, v1, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    .line 610
    array-length p1, p2

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 611
    :goto_6
    array-length p1, p2

    if-ge v0, p1, :cond_11

    .line 612
    aget-object p1, p2, v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    return-object p0

    .line 616
    :cond_12
    const-string p0, "Error"

    const-string p1, "invalid argument"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 528
    :cond_13
    :goto_7
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    .line 529
    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    .line 530
    invoke-interface {p3, p0, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method private static js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 10

    .line 949
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 951
    array-length p1, p3

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 952
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 955
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    add-long/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 957
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 960
    :goto_1
    array-length p1, p3

    const/4 p4, 0x2

    if-lt p1, p4, :cond_2

    aget-object p1, p3, p2

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 961
    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    double-to-long v4, v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_3

    .line 964
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    add-long/2addr v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_3

    .line 966
    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 969
    :goto_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    .line 970
    array-length p1, p3

    const/4 v8, 0x3

    if-lt p1, v8, :cond_4

    aget-object p1, p3, p4

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 971
    aget-object p1, p3, p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long v6, p3

    :cond_4
    cmp-long p1, v6, v2

    if-gez p1, :cond_5

    .line 975
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p1

    add-long/2addr p3, v6

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    goto :goto_4

    .line 977
    :cond_5
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p1

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_4
    sub-long/2addr p3, v4

    .line 980
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    sub-long/2addr v6, v0

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v0

    if-gez p1, :cond_6

    add-long v8, v4, p3

    cmp-long p1, v0, v8

    if-gez p1, :cond_6

    sub-long v4, v8, v6

    add-long/2addr v0, p3

    sub-long/2addr v0, v6

    const/4 p2, -0x1

    :cond_6
    :goto_5
    cmp-long p1, p3, v2

    if-lez p1, :cond_7

    long-to-int p1, v4

    .line 989
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    long-to-int v8, v0

    .line 990
    invoke-virtual {p0, v8, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    int-to-long v8, p2

    add-long/2addr v4, v8

    add-long/2addr v0, v8

    sub-long/2addr p3, v6

    goto :goto_5

    :cond_7
    return-object p0
.end method

.method private static js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;",
            ")",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    .line 885
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 888
    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    .line 889
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    double-to-long v2, v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    .line 893
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    add-long/2addr v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 895
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 898
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    .line 899
    array-length p1, p3

    const/4 p4, 0x3

    if-lt p1, p4, :cond_2

    aget-object p1, p3, p2

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 900
    aget-object p1, p3, p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-long v4, p1

    :cond_2
    cmp-long p1, v4, v0

    if-gez p1, :cond_3

    .line 904
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p1, p1

    add-long/2addr p1, v4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_2

    .line 906
    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p1, p1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 909
    :goto_2
    array-length p4, p3

    if-lez p4, :cond_4

    const/4 p4, 0x0

    aget-object p3, p3, p4

    goto :goto_3

    :cond_4
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    long-to-int p4, v2

    :goto_4
    int-to-long v0, p4

    cmp-long v2, v0, p1

    if-gez v2, :cond_5

    .line 911
    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    return-object p0
.end method

.method private static js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Boolean;
    .locals 4

    .line 716
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 717
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 719
    :goto_0
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 722
    :cond_1
    array-length p2, p3

    const/4 p4, 0x2

    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    .line 725
    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    .line 727
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v2, v2

    add-long/2addr p3, v2

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide v0, p3

    .line 730
    :goto_1
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p3, p2

    int-to-long p2, p3

    cmp-long p4, v0, p2

    if-lez p4, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    :goto_2
    long-to-int p2, v0

    .line 732
    :goto_3
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p2, p3, :cond_6

    .line 733
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    .line 734
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 735
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 738
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 7

    const/4 p0, -0x1

    .line 747
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 743
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 745
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 747
    :goto_0
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p4, :cond_1

    return-object p0

    .line 750
    :cond_1
    array-length p4, p3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-ge p4, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x1

    .line 754
    aget-object p3, p3, p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v3

    double-to-long v3, v3

    cmp-long p3, v3, v1

    if-gez p3, :cond_3

    .line 756
    iget p3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, p3

    add-long/2addr v3, v5

    cmp-long p3, v3, v1

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v1, v3

    .line 759
    :goto_1
    iget p3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p3, p4

    int-to-long p3, p3

    cmp-long v0, v1, p3

    if-lez v0, :cond_4

    return-object p0

    :cond_4
    :goto_2
    long-to-int p3, v1

    .line 761
    :goto_3
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p3, p4, :cond_6

    .line 762
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    .line 763
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p4, v0, :cond_5

    invoke-static {p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    int-to-long p0, p3

    .line 764
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/String;
    .locals 4

    .line 836
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 840
    array-length p1, p3

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-lt p1, p4, :cond_1

    aget-object p1, p3, p2

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 841
    :cond_1
    :goto_0
    const-string p1, ","

    .line 843
    :goto_1
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p3, :cond_2

    .line 844
    const-string p0, ""

    return-object p0

    .line 846
    :cond_2
    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 848
    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v0, v2, :cond_4

    .line 849
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 850
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    .line 851
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 853
    aput-object v2, p3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v2, p4

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    mul-int v2, v2, p4

    add-int/2addr v1, v2

    .line 857
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 858
    :goto_3
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq p2, v0, :cond_7

    if-eqz p2, :cond_5

    .line 860
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_5
    aget-object v0, p3, p2

    if-eqz v0, :cond_6

    .line 865
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 868
    :cond_7
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 8

    const/4 p0, -0x1

    .line 776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 772
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 774
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 776
    :goto_0
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p4, :cond_1

    return-object p0

    .line 779
    :cond_1
    array-length v0, p3

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    if-ge v0, v1, :cond_2

    int-to-long p3, p4

    sub-long/2addr p3, v2

    goto :goto_2

    :cond_2
    const/4 p4, 0x1

    .line 783
    aget-object p3, p3, p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    .line 784
    iget v0, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v1, p3, v4

    if-ltz v1, :cond_3

    int-to-long p3, v0

    sub-long/2addr p3, v2

    goto :goto_1

    :cond_3
    cmp-long v1, p3, v6

    if-gez v1, :cond_4

    int-to-long v0, v0

    add-long/2addr p3, v0

    :cond_4
    :goto_1
    cmp-long v0, p3, v6

    if-gez v0, :cond_5

    return-object p0

    :cond_5
    :goto_2
    long-to-int p4, p3

    :goto_3
    if-ltz p4, :cond_7

    .line 789
    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    .line 790
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_6

    invoke-static {p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    int-to-long p0, p4

    .line 791
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_7
    return-object p0
.end method

.method private static js_length(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    .line 678
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 679
    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;",
            ")",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    .line 873
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 875
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 876
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    .line 877
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 1

    .line 1000
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 1001
    array-length p1, p3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 1002
    aget-object p2, p3, p1

    instance-of p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 1003
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_0

    aget-object p2, p3, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1004
    :goto_0
    aget-object p1, p3, p1

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 1005
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    .line 1006
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 1008
    :cond_1
    instance-of p4, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p4, :cond_3

    .line 1009
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_2

    aget-object p2, p3, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 1010
    :goto_1
    aget-object p1, p3, p1

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/NativeArray;I)V

    .line 1011
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 1013
    :cond_3
    instance-of p2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_4

    .line 1015
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_4
    const/4 p2, 0x2

    .line 1017
    invoke-static {p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1018
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p1

    aget-object p2, p3, v0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1021
    :cond_5
    const-string p0, "Error"

    const-string p1, "invalid arguments"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;
    .locals 9

    .line 799
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 802
    array-length p4, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez p4, :cond_0

    .line 804
    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p3

    move-wide v4, v2

    goto :goto_1

    .line 806
    :cond_0
    aget-object p4, p3, v1

    .line 808
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p4

    .line 807
    invoke-static {v4, v5, v6, v7}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v4

    .line 809
    array-length p4, p3

    if-eq p4, v0, :cond_2

    aget-object p3, p3, v0

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, p4, :cond_1

    goto :goto_0

    .line 814
    :cond_1
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    iget v6, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, v6

    .line 813
    invoke-static {p3, p4, v6, v7}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide p3

    goto :goto_1

    .line 810
    :cond_2
    :goto_0
    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p3

    :goto_1
    sub-long/2addr p3, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, p3, v6

    if-gtz v8, :cond_3

    .line 823
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 825
    iget-object v6, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    .line 829
    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v7

    int-to-long v7, v7

    mul-long v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v6, p4, v1

    aput-object v4, p4, v0

    const/4 v0, 0x2

    aput-object p3, p4, v0

    const-string p3, "slice"

    .line 825
    invoke-direct {p2, p0, p1, p4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    .line 819
    :cond_3
    const-string p0, "msg.arraylength.bad"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 820
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    const/4 v0, 0x0

    .line 919
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p3, v0

    instance-of v1, v1, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    const-string p0, "msg.function.expected"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 923
    :cond_1
    :goto_0
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 925
    invoke-direct {p2, p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 926
    :goto_1
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_2

    .line 927
    aget-object p1, p0, v0

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method private static js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 5

    .line 1026
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    const/4 p4, 0x0

    .line 1028
    invoke-static {p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p3, p4

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 1029
    invoke-static {p3, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p3, v1

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    .line 1030
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_3

    array-length p3, p3

    if-lez p3, :cond_2

    goto :goto_2

    .line 1046
    :cond_2
    const-string p0, "Error"

    const-string p1, "invalid arguments"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    .line 1031
    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr v0, p3

    :cond_4
    if-gez v2, :cond_5

    .line 1032
    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr v2, p3

    .line 1035
    :cond_5
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1036
    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p3

    .line 1037
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1040
    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getByteOffset()I

    move-result v2

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v3

    mul-int p3, p3, v3

    add-int/2addr v2, p3

    iget-object p3, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    .line 1041
    invoke-virtual {p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p3

    .line 1039
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1044
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, p4

    aput-object p3, v3, v1

    const/4 p2, 0x2

    aput-object v0, v3, p2

    .line 1043
    invoke-virtual {p0, p1, v2, v3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 5

    .line 1084
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 1086
    new-instance p3, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    .line 1087
    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v0

    mul-int p4, p4, v0

    int-to-double v0, p4

    invoke-direct {p3, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    .line 1091
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 1092
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    const/4 p3, 0x1

    aput-object v1, v4, p3

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    .line 1089
    invoke-virtual {p0, p1, p4, v4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1094
    :goto_0
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p3

    .line 1096
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1097
    invoke-interface {p0, v0, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 6

    .line 1105
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 1107
    invoke-direct {p2, p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 1110
    new-instance p4, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    .line 1111
    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int v0, v0, v1

    int-to-double v0, v0

    invoke-direct {p4, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    .line 1115
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v1

    const/4 p4, 0x1

    aput-object v2, v5, p4

    const/4 p4, 0x2

    aput-object v3, v5, p4

    const/4 p4, 0x3

    aput-object v4, v5, p4

    .line 1113
    invoke-virtual {p0, p1, v0, v5}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1117
    :goto_0
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, p1, :cond_0

    .line 1118
    aget-object p1, p3, v1

    invoke-interface {p0, v1, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;
    .locals 1

    .line 689
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 690
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lez p4, :cond_0

    const/4 p4, 0x0

    .line 692
    invoke-direct {p2, p0, p1, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;

    move-result-object p4

    .line 693
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p4, 0x1

    .line 695
    :goto_0
    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p4, v0, :cond_1

    const/16 v0, 0x2c

    .line 696
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    invoke-direct {p2, p0, p1, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 698
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 11

    .line 1126
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    .line 1128
    array-length p4, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-lez p4, :cond_0

    aget-object p4, p3, v2

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v3

    double-to-int p4, v3

    int-to-long v3, p4

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :goto_0
    cmp-long p4, v3, v0

    if-ltz p4, :cond_1

    move-wide v5, v3

    goto :goto_1

    .line 1129
    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, p4

    add-long/2addr v5, v3

    .line 1131
    :goto_1
    array-length p4, p3

    const/4 v7, 0x1

    if-le p4, v7, :cond_2

    aget-object p3, p3, v7

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    goto :goto_2

    :cond_2
    const-wide/16 p3, 0x0

    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x3

    const/4 v8, 0x2

    cmp-long v9, v5, v0

    if-ltz v9, :cond_5

    .line 1133
    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v0, v0

    cmp-long v9, v5, v0

    if-gez v9, :cond_5

    .line 1143
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget v1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    .line 1144
    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v3

    mul-int v1, v1, v3

    int-to-double v3, v1

    invoke-direct {v0, v3, v4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    .line 1148
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v2

    aput-object v3, v10, v7

    aput-object v4, v10, v8

    aput-object v9, v10, p4

    .line 1146
    invoke-virtual {p0, p1, v1, v10}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1151
    :goto_3
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v2, p1, :cond_4

    int-to-long v0, v2

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    move-object p1, p3

    goto :goto_4

    .line 1152
    :cond_3
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1153
    :goto_4
    invoke-interface {p0, v2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p0

    .line 1137
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    mul-int/lit8 p1, p1, -0x1

    .line 1138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p2, v7

    .line 1139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, p4, [Ljava/lang/Object;

    aput-object p0, p3, v2

    aput-object p1, p3, v7

    aput-object p2, p3, v8

    .line 1135
    const-string p0, "msg.typed.array.index.out.of.bounds"

    invoke-static {p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1140
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 2

    int-to-double v0, p2

    int-to-double p2, p3

    mul-double v0, v0, p2

    .line 500
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 497
    const-string p2, "ArrayBuffer"

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method private setRange(Lorg/mozilla/javascript/NativeArray;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_2

    .line 647
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt p2, v2, :cond_2

    .line 651
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v2

    add-int/2addr v2, p2

    iget v3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt v2, v3, :cond_1

    .line 657
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 658
    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return-void

    .line 652
    :cond_1
    const-string p1, "msg.typed.array.bad.source.array"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 648
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.typed.array.bad.offset"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    .line 620
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt p2, v1, :cond_4

    .line 625
    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr v1, p2

    if-gt v2, v1, :cond_3

    .line 630
    iget-object v1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-ne v1, v3, :cond_1

    .line 632
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 633
    :goto_0
    iget v3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v2, v3, :cond_0

    .line 634
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :cond_0
    :goto_1
    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v2, :cond_2

    add-int v2, v0, p2

    .line 637
    aget-object v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_1
    :goto_2
    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_2

    add-int v1, v0, p2

    .line 641
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 626
    :cond_3
    const-string p1, "msg.typed.array.bad.source.array"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 621
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "msg.typed.array.bad.offset"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 622
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 935
    array-length v0, p3

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    if-eq v0, v1, :cond_0

    .line 936
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_0

    .line 938
    :cond_0
    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    .line 942
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 943
    invoke-static {p2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p2
.end method

.method private static toIndex(D)I
    .locals 4

    .line 0
    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 1069
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1071
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    .line 1073
    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object v0

    .line 1075
    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1076
    instance-of p2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 1077
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const-string p2, "msg.typed.array.ctor.incompatible"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1326
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1320
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1338
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1332
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected checkIndex(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 481
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 1344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1257
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1181
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1182
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public delete(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1266
    :cond_0
    instance-of v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-nez v1, :cond_1

    return v0

    .line 1269
    :cond_1
    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 1270
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 1273
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_4

    .line 1274
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 72
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result v0

    if-ltz v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayElement(I)Ljava/lang/Object;
    .locals 0

    .line 1163
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayLength()I
    .locals 1

    .line 1173
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public abstract getBytesPerElement()I
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    .line 132
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 133
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    .line 90
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result v0

    if-ltz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1284
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v2, :cond_0

    .line 1285
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 1192
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    .line 1193
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1251
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1293
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method protected abstract js_get(I)Ljava/lang/Object;
.end method

.method protected abstract js_set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1203
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1204
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1299
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1305
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0

    .line 1306
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    .line 107
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result p1

    if-ltz p1, :cond_0

    .line 111
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1356
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1368
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayElement(ILjava/lang/Object;)V
    .locals 0

    .line 1168
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1245
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1314
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 1214
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1215
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 1216
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .line 1226
    array-length v0, p1

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 1232
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    .line 1234
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    :catch_0
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    :cond_1
    return-object p1
.end method
