.class Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;
.super Ljava/lang/Object;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolvingFunctions"
.end annotation


# instance fields
.field private alreadyResolved:Z

.field reject:Lorg/mozilla/javascript/LambdaFunction;

.field resolve:Lorg/mozilla/javascript/LambdaFunction;


# direct methods
.method public static synthetic $r8$lambda$4Z8qpN67ojs3fjgyQm4wL05Pn_k(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 582
    :goto_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JRb4ylN0DwTE8XZbq88IFSFPb7E(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 572
    :goto_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XFsPpUL80WaPPMxNT77RM6sZBWY(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 625
    check-cast p4, Lorg/mozilla/javascript/Callable;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$mcallThenable(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;)V
    .locals 3

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    .line 567
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve:Lorg/mozilla/javascript/LambdaFunction;

    .line 577
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;)V

    invoke-direct {v0, p1, v2, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    return-void
.end method

.method private reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 590
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-eqz v0, :cond_0

    .line 591
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    .line 594
    invoke-static {p3, p1, p2, p4}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$mrejectPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 599
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-eqz v0, :cond_0

    .line 600
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-ne p4, p3, :cond_1

    .line 605
    sget-object p4, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No promise self-resolution"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 606
    invoke-static {p1, p2, p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 611
    invoke-static {p3, p1, p2, p4}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$mrejectPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 614
    :cond_1
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-static {p3, p1, p2, p4}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$mfulfillPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 618
    :cond_2
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 619
    const-string v1, "then"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 620
    instance-of v0, v7, Lorg/mozilla/javascript/Callable;

    if-nez v0, :cond_3

    .line 621
    invoke-static {p3, p1, p2, p4}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$mfulfillPromise(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 624
    :cond_3
    new-instance v2, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;-><init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    .line 626
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method
