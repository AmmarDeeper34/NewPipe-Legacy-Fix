.class Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;
.super Ljava/lang/Object;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromiseAllResolver"
.end annotation


# static fields
.field private static final MAX_PROMISES:I = 0x200000


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field failFast:Z

.field iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

.field remainingElements:I

.field thisObj:Lorg/mozilla/javascript/Scriptable;

.field final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7O1qQoghcDHI3ieCeIY584q8VE8(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 801
    :goto_0
    iget-boolean p5, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    if-nez p5, :cond_1

    .line 802
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p5

    .line 803
    const-string v0, "status"

    const-string v1, "fulfilled"

    invoke-interface {p5, v0, p5, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 804
    const-string v0, "value"

    invoke-interface {p5, v0, p5, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object p4, p5

    .line 807
    :cond_1
    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q5MBByBeBiuTA9Te03KEg-YJeyk(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 821
    const-string v0, "status"

    const-string v1, " rejected"

    invoke-interface {p4, v0, p4, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 825
    array-length v0, p5

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p5, p5, v0

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 822
    :goto_0
    const-string v0, "reason"

    invoke-interface {p4, v0, p4, p5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 826
    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;Z)V
    .locals 1

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 731
    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    .line 743
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    .line 744
    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 745
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 746
    iput-boolean p4, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    return-void
.end method


# virtual methods
.method finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 5

    .line 846
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v1, v1, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    sget-object v2, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, p2, v2, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 10

    .line 753
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->thisObj:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "resolve"

    .line 754
    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 755
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x200000

    if-eq v3, v4, :cond_4

    .line 763
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v5, 0x1

    .line 766
    :try_start_0
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {v6}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 768
    iget-object v7, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {v7}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->next()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v7, v4

    :goto_1
    if-nez v6, :cond_2

    .line 778
    iget v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    if-nez v0, :cond_1

    .line 779
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 781
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object p1, p1, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p1

    .line 784
    :cond_2
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v2

    .line 788
    invoke-interface {v0, p1, p2, v1, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 791
    new-instance v6, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;-><init>(I)V

    .line 792
    new-instance v7, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v8, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;)V

    invoke-direct {v7, p2, v5, v8}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    .line 810
    iget-object v8, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v8, v8, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    .line 811
    iget-boolean v9, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    if-nez v9, :cond_3

    .line 812
    new-instance v8, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v9, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, v6}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;)V

    invoke-direct {v8, p2, v5, v9}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    const/4 v6, 0x3

    .line 828
    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    .line 831
    :cond_3
    iget v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    .line 834
    const-string v6, "then"

    .line 835
    invoke-static {v4, v6, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v4

    .line 839
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v8, v9, v5

    .line 836
    invoke-interface {v4, p1, p2, v6, v9}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 773
    :goto_2
    iget-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->setDone(Z)V

    .line 775
    throw p1

    .line 760
    :cond_4
    const-string p1, "msg.promise.all.toobig"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
