.class Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;
.super Ljava/lang/Object;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromiseAnyRejector"
.end annotation


# static fields
.field private static final MAX_PROMISES:I = 0x200000


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field final errors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

.field remainingElements:I

.field thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public static synthetic $r8$lambda$EaPQG76UHJuTYd32wVRBFz3Nr9Q(Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 929
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;)V
    .locals 1

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 858
    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    .line 865
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    .line 866
    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 867
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    return-void
.end method


# virtual methods
.method finalRejection(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 5

    .line 946
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    .line 947
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 948
    const-string v0, "AggregateError"

    invoke-virtual {p1, p2, v0, v2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    .line 949
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-interface {v2, p1, p2, v4, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 10

    .line 874
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->thisObj:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "resolve"

    .line 875
    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 876
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x200000

    if-eq v3, v4, :cond_3

    .line 884
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v5, 0x1

    .line 887
    :try_start_0
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {v6}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 889
    iget-object v7, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

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

    .line 899
    iget v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    if-eqz v0, :cond_1

    .line 909
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object p1, p1, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p1

    .line 900
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 901
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 903
    const-string v0, "AggregateError"

    invoke-virtual {p1, p2, v0, v1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeError;

    .line 907
    new-instance p2, Lorg/mozilla/javascript/JavaScriptException;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p2

    .line 912
    :cond_2
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v2

    .line 916
    invoke-interface {v0, p1, p2, v1, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 919
    new-instance v6, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;-><init>(I)V

    .line 920
    new-instance v7, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v8, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;)V

    invoke-direct {v7, p2, v5, v8}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    .line 931
    iget v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    .line 934
    const-string v6, "then"

    .line 935
    invoke-static {v4, v6, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v4

    .line 939
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    iget-object v8, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v8, v8, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v7, v9, v5

    .line 936
    invoke-interface {v4, p1, p2, v6, v9}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 894
    :goto_2
    iget-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->setDone(Z)V

    .line 896
    throw p1

    .line 881
    :cond_3
    const-string p1, "msg.promise.any.toobig"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
