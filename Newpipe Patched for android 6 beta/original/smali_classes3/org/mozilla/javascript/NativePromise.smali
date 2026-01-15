.class public Lorg/mozilla/javascript/NativePromise;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativePromise$State;,
        Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;,
        Lorg/mozilla/javascript/NativePromise$Capability;,
        Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;,
        Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;,
        Lorg/mozilla/javascript/NativePromise$Reaction;,
        Lorg/mozilla/javascript/NativePromise$ReactionType;,
        Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fulfillReactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/javascript/NativePromise$Reaction;",
            ">;"
        }
    .end annotation
.end field

.field private handled:Z

.field private rejectReactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/javascript/NativePromise$Reaction;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;

.field private state:Lorg/mozilla/javascript/NativePromise$State;


# direct methods
.method public static synthetic $r8$lambda$3I88c9mHcLwxGVHm4FtN31E7aWw(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 406
    array-length p5, p6

    const/4 v0, 0x0

    if-lez p5, :cond_0

    aget-object p5, p6, v0

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 407
    :goto_0
    new-instance p6, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda13;

    invoke-direct {v1, p5}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;)V

    invoke-direct {p6, p0, v0, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    .line 413
    sget-object p5, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 414
    invoke-interface {p1, p3, p4, p5, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 419
    invoke-static {p3, p0, p2, p1}, Lorg/mozilla/javascript/NativePromise;->resolveInternal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 420
    const-string p2, "then"

    .line 421
    invoke-static {p1, p2, p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p1

    .line 425
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p6, p4, v0

    .line 422
    invoke-interface {p1, p3, p0, p2, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H8t5h3BRiGV2gwRJ2f6Cfgb0S2w(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->race(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IB2PoYU4BQWOO8pylruZl1gAXxE(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 473
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise$Reaction;->invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JdXmaZwAkg-V9nMcUQOid0MFI_w(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$JgtPAzJ4NZaoZHnB3TgNVKHrISg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OWtI6OLh-NWRLLcgqj7SKbQTBls(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->doCatch(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QN7d07iGSAcP_Fyy3gbXnUWebQo(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->all(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QOQ9dWdrnk8x_4kyfPprg62NB0E(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    .line 349
    invoke-virtual {p1, p2, p3, p0}, Lorg/mozilla/javascript/NativePromise$Reaction;->invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXa-lXvWBSepgxUB_unKuSa65AA(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->any(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$alL_PSyvktK73uVs2ydrvWhIk6c(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 345
    iget-object p0, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    .line 345
    invoke-virtual {p1, p2, p3, p0}, Lorg/mozilla/javascript/NativePromise$Reaction;->invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKNi8NLKjSGLjjRlFHVgNYu54Yg(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 443
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1
.end method

.method public static synthetic $r8$lambda$fbATMORjZ2Aoy-1Y2rUFEUqaxCc(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1, p2, p3, p0, p4}, Lorg/mozilla/javascript/NativePromise;->doFinally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jaSX-ViSz7q95XuI-o--pJSlZz0(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kf70l2MFuUGSVt5a0owcwsfWyCU(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 60
    const-class v0, Lorg/mozilla/javascript/NativePromise;

    .line 61
    invoke-static {p3, v0}, Lorg/mozilla/javascript/LambdaConstructor;->convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/NativePromise;

    .line 62
    invoke-direct {p3, p1, p2, p0, p4}, Lorg/mozilla/javascript/NativePromise;->then(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lRi_Q-okSNxWksYS0xJ1Ey1RzJs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->allSettled(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lbIbx6u8Us6KRU0aCmEeAAQO4VM(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u6rSBJEpC78RpfR1F0eDlX37ugw(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise$Reaction;->invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNx2SzKNVmAfh9Sepn1awVMCO_I(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 437
    array-length p5, p6

    const/4 v0, 0x0

    if-lez p5, :cond_0

    aget-object p5, p6, v0

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 438
    :goto_0
    new-instance p6, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda16;

    invoke-direct {v1, p5}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;)V

    invoke-direct {p6, p0, v0, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    .line 445
    sget-object p5, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 446
    invoke-interface {p1, p3, p4, p5, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 451
    invoke-static {p3, p0, p2, p1}, Lorg/mozilla/javascript/NativePromise;->resolveInternal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 452
    const-string p2, "then"

    .line 453
    invoke-static {p1, p2, p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p1

    .line 457
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p6, p4, v0

    .line 454
    invoke-interface {p1, p3, p0, p2, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcallThenable(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->callThenable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfulfillPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->fulfillPromise(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrejectPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->rejectPromise(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 23
    sget-object v0, Lorg/mozilla/javascript/NativePromise$State;->PENDING:Lorg/mozilla/javascript/NativePromise$State;

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise;->state:Lorg/mozilla/javascript/NativePromise$State;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise;->handled:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    return-void
.end method

.method private static all(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativePromise;->doAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static allSettled(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-static {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativePromise;->doAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static any(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 286
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 287
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p3, p3, v2

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    .line 291
    :try_start_0
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    .line 292
    new-instance v3, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v3, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    .line 304
    :try_start_1
    new-instance v4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;

    invoke-direct {v4, p3, p2, v0}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;-><init>(Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;)V
    :try_end_1
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :try_start_2
    invoke-virtual {v4, p0, p1}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :try_start_3
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    .line 309
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 308
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_2

    .line 309
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    .line 311
    :cond_2
    throw p2
    :try_end_3
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 313
    :goto_1
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 317
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 313
    invoke-interface {p3, p0, p1, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0

    :catch_1
    move-exception p2

    .line 294
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 298
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 294
    invoke-interface {p3, p0, p1, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0
.end method

.method private callThenable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V
    .locals 6

    .line 501
    new-instance v0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;

    invoke-direct {v0, p2, p0}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;)V

    .line 503
    instance-of v1, p3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    .line 504
    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    .line 505
    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    :try_start_0
    iget-object v3, v0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve:Lorg/mozilla/javascript/LambdaFunction;

    iget-object v4, v0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    invoke-interface {p4, p1, p2, p3, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 509
    iget-object p4, v0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 513
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    .line 509
    invoke-virtual {p4, p1, p2, v0, v1}, Lorg/mozilla/javascript/LambdaFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 8

    .line 87
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    aget-object p2, p2, v1

    instance-of v0, p2, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_1

    .line 90
    check-cast p2, Lorg/mozilla/javascript/Callable;

    .line 91
    new-instance v0, Lorg/mozilla/javascript/NativePromise;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativePromise;-><init>()V

    .line 92
    new-instance v3, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;

    invoke-direct {v3, p1, v0}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;)V

    .line 94
    sget-object v4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 95
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    iget-object v5, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_0

    move-object v4, v5

    .line 103
    :cond_0
    :try_start_0
    iget-object v5, v3, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve:Lorg/mozilla/javascript/LambdaFunction;

    iget-object v6, v3, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v2

    invoke-interface {p2, p0, p1, v4, v7}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 105
    iget-object v3, v3, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v3, p0, p1, v4, v2}, Lorg/mozilla/javascript/LambdaFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 88
    :cond_1
    const-string p0, "msg.function.expected"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static doAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5

    .line 156
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 157
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p3, p3, v2

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    .line 161
    :try_start_0
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    .line 162
    new-instance v3, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v3, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    .line 174
    :try_start_1
    new-instance v4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;

    invoke-direct {v4, p3, p2, v0, p4}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;-><init>(Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;Z)V
    :try_end_1
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :try_start_2
    invoke-virtual {v4, p0, p1}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    .line 179
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 178
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_2

    .line 179
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    .line 181
    :cond_2
    throw p2
    :try_end_3
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 183
    :goto_1
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object p4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 187
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 183
    invoke-interface {p3, p0, p1, p4, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0

    :catch_1
    move-exception p2

    .line 164
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object p4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 168
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 164
    invoke-interface {p3, p0, p1, p4, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0
.end method

.method private static doCatch(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 363
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p3, p3, v1

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 364
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 366
    const-string v0, "then"

    invoke-static {p2, v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    .line 370
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p3, v2, v1

    .line 367
    invoke-interface {p2, p0, p1, v0, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static doFinally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 381
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 384
    array-length v0, p4

    if-lez v0, :cond_0

    aget-object p4, p4, v2

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 388
    :goto_0
    invoke-static {p0, p2, p3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object p3

    .line 389
    instance-of v0, p4, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_1

    .line 390
    check-cast p4, Lorg/mozilla/javascript/Callable;

    .line 391
    invoke-static {p1, p3, p4}, Lorg/mozilla/javascript/NativePromise;->makeThenFinally(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 392
    invoke-static {p1, p3, p4}, Lorg/mozilla/javascript/NativePromise;->makeCatchFinally(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    move-object p3, p4

    move-object p4, v0

    goto :goto_1

    :cond_1
    move-object p3, p4

    .line 394
    :goto_1
    const-string v0, "then"

    invoke-static {p2, v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    .line 395
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v3, 0x2

    .line 396
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v2

    aput-object p3, v3, v1

    invoke-interface {p2, p0, p1, v0, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 382
    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "msg.arg.not.object"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private fulfillPromise(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 465
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    .line 468
    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    .line 471
    :cond_0
    sget-object v1, Lorg/mozilla/javascript/NativePromise$State;->FULFILLED:Lorg/mozilla/javascript/NativePromise$State;

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->state:Lorg/mozilla/javascript/NativePromise$State;

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/NativePromise$Reaction;

    .line 473
    new-instance v2, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda14;-><init>(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 475
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method private static getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;
    .locals 6

    .line 518
    instance-of v0, p2, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v0, :cond_0

    .line 519
    check-cast p2, Lorg/mozilla/javascript/JavaScriptException;

    invoke-virtual {p2}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 522
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 523
    instance-of v1, p2, Lorg/mozilla/javascript/EcmaError;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 524
    move-object v1, p2

    check-cast v1, Lorg/mozilla/javascript/EcmaError;

    .line 525
    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "SyntaxError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_1
    const-string v4, "ReferenceError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_2
    const-string v4, "RangeError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "URIError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_4
    const-string v4, "JavaException"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "EvalError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_6
    const-string v4, "InternalError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_7
    const-string v4, "TypeError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 536
    :pswitch_0
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 533
    :pswitch_1
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 530
    :pswitch_2
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 542
    :pswitch_3
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 548
    :pswitch_4
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 527
    :pswitch_5
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 545
    :pswitch_6
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    goto :goto_1

    .line 539
    :pswitch_7
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 554
    :cond_9
    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6b081932 -> :sswitch_7
        -0x64ef06d5 -> :sswitch_6
        -0x6039ad54 -> :sswitch_5
        -0x22d043d3 -> :sswitch_4
        -0xfe977e4 -> :sswitch_3
        0x932c2eb -> :sswitch_2
        0x5198459d -> :sswitch_1
        0x605053c5 -> :sswitch_0
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

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 31
    new-instance v0, Lorg/mozilla/javascript/LambdaConstructor;

    new-instance v5, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Promise"

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p1, 0x7

    .line 38
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/BaseFunction;->setPrototypePropertyAttributes(I)V

    .line 40
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda4;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "resolve"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 42
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "reject"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 44
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "all"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 46
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "allSettled"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 48
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "race"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 50
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "any"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 53
    invoke-static {p0, v1, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolSpecies(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    .line 55
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda10;-><init>(Lorg/mozilla/javascript/LambdaConstructor;)V

    const-string v2, "then"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 66
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "catch"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 68
    new-instance v4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda12;-><init>(Lorg/mozilla/javascript/LambdaConstructor;)V

    const-string v2, "finally"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 77
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    const/4 p1, 0x3

    const-string v2, "Promise"

    invoke-virtual {v0, p0, v2, p1}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    const/4 p0, 0x2

    .line 80
    invoke-static {v1, v2, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private static makeCatchFinally(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)Lorg/mozilla/javascript/Callable;
    .locals 2

    .line 433
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2, p1}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    return-object v0
.end method

.method private static makeThenFinally(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)Lorg/mozilla/javascript/Callable;
    .locals 2

    .line 402
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p1}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda15;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    return-object v0
.end method

.method private markHandled(Lorg/mozilla/javascript/Context;)V
    .locals 1

    .line 355
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise;->handled:Z

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getUnhandledPromiseTracker()Lorg/mozilla/javascript/UnhandledRejectionTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/UnhandledRejectionTracker;->promiseHandled(Lorg/mozilla/javascript/NativePromise;)V

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativePromise;->handled:Z

    :cond_0
    return-void
.end method

.method private static performRace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;)Ljava/lang/Object;
    .locals 8

    .line 246
    const-string v0, "resolve"

    invoke-static {p3, v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p3

    .line 247
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 252
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 255
    :try_start_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p2}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 267
    iget-object p0, p4, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0

    .line 271
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {p3, p0, p1, v0, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    const-string v3, "then"

    .line 276
    invoke-static {v1, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    .line 280
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iget-object v5, p4, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    iget-object v6, p4, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v4

    aput-object v6, v7, v2

    .line 277
    invoke-interface {v1, p0, p1, v3, v7}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :goto_2
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->setDone(Z)V

    .line 264
    throw p0
.end method

.method private static race(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 205
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 206
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p3, p3, v2

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    .line 210
    :try_start_0
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    .line 211
    new-instance v3, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v3, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    .line 224
    :try_start_1
    invoke-static {p0, p1, p3, p2, v0}, Lorg/mozilla/javascript/NativePromise;->performRace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    .line 227
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 226
    invoke-virtual {p3}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone()Z

    move-result p3

    if-nez p3, :cond_2

    .line 227
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    .line 229
    :cond_2
    throw p2
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    :goto_1
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 235
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 231
    invoke-interface {p3, p0, p1, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0

    :catch_1
    move-exception p2

    .line 213
    iget-object p3, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 217
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise;->getErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 213
    invoke-interface {p3, p0, p1, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0
.end method

.method private static reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 145
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 148
    array-length v0, p3

    if-lez v0, :cond_0

    aget-object p3, p3, v2

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 149
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 150
    iget-object p2, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-interface {p2, p0, p1, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0

    .line 146
    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "msg.arg.not.object"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private rejectPromise(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 481
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    .line 484
    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    .line 487
    :cond_0
    sget-object v1, Lorg/mozilla/javascript/NativePromise$State;->REJECTED:Lorg/mozilla/javascript/NativePromise$State;

    iput-object v1, p0, Lorg/mozilla/javascript/NativePromise;->state:Lorg/mozilla/javascript/NativePromise$State;

    .line 488
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getUnhandledPromiseTracker()Lorg/mozilla/javascript/UnhandledRejectionTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/UnhandledRejectionTracker;->promiseRejected(Lorg/mozilla/javascript/NativePromise;)V

    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/NativePromise$Reaction;

    .line 490
    new-instance v3, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 493
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativePromise;->markHandled(Lorg/mozilla/javascript/Context;)V

    .line 495
    :cond_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method private static resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 122
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    array-length v0, p3

    if-lez v0, :cond_0

    aget-object p3, p3, v1

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 126
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->resolveInternal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
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

.method private static resolveInternal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 132
    instance-of v0, p3, Lorg/mozilla/javascript/NativePromise;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "constructor"

    invoke-static {p3, v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p3

    .line 138
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 139
    iget-object p2, v0, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {p2, p0, p1, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p0
.end method

.method private then(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 326
    invoke-static {p1, p0, p3}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object p3

    .line 327
    new-instance v0, Lorg/mozilla/javascript/NativePromise$Capability;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/NativePromise$Capability;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 330
    array-length p3, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p3, v2, :cond_0

    const/4 p3, 0x0

    aget-object p3, p4, p3

    instance-of v3, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v3, :cond_0

    .line 331
    check-cast p3, Lorg/mozilla/javascript/Callable;

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 334
    :goto_0
    array-length v3, p4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    aget-object p4, p4, v2

    instance-of v2, p4, Lorg/mozilla/javascript/Callable;

    if-eqz v2, :cond_1

    .line 335
    move-object v1, p4

    check-cast v1, Lorg/mozilla/javascript/Callable;

    .line 338
    :cond_1
    new-instance p4, Lorg/mozilla/javascript/NativePromise$Reaction;

    sget-object v2, Lorg/mozilla/javascript/NativePromise$ReactionType;->FULFILL:Lorg/mozilla/javascript/NativePromise$ReactionType;

    invoke-direct {p4, v0, v2, p3}, Lorg/mozilla/javascript/NativePromise$Reaction;-><init>(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/NativePromise$ReactionType;Lorg/mozilla/javascript/Callable;)V

    .line 339
    new-instance p3, Lorg/mozilla/javascript/NativePromise$Reaction;

    sget-object v2, Lorg/mozilla/javascript/NativePromise$ReactionType;->REJECT:Lorg/mozilla/javascript/NativePromise$ReactionType;

    invoke-direct {p3, v0, v2, v1}, Lorg/mozilla/javascript/NativePromise$Reaction;-><init>(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/NativePromise$ReactionType;Lorg/mozilla/javascript/Callable;)V

    .line 341
    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise;->state:Lorg/mozilla/javascript/NativePromise$State;

    sget-object v2, Lorg/mozilla/javascript/NativePromise$State;->PENDING:Lorg/mozilla/javascript/NativePromise$State;

    if-ne v1, v2, :cond_2

    .line 342
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise;->fulfillReactions:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise;->rejectReactions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_2
    sget-object v2, Lorg/mozilla/javascript/NativePromise$State;->FULFILLED:Lorg/mozilla/javascript/NativePromise$State;

    if-ne v1, v2, :cond_3

    .line 345
    new-instance p3, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 348
    :cond_3
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativePromise;->markHandled(Lorg/mozilla/javascript/Context;)V

    .line 349
    new-instance p4, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda2;-><init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    .line 351
    :goto_1
    iget-object p1, v0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "Promise"

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise;->result:Ljava/lang/Object;

    return-object v0
.end method
