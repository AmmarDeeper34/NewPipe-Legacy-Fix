.class Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;
.super Ljava/lang/Object;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromiseElementResolver"
.end annotation


# instance fields
.field private alreadyCalled:Z

.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 961
    iput p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    return-void
.end method


# virtual methods
.method reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;)Ljava/lang/Object;
    .locals 3

    .line 977
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    if-eqz v0, :cond_0

    .line 978
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 981
    iget-object v1, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    iget v2, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    invoke-virtual {v1, v2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget p3, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    sub-int/2addr p3, v0

    iput p3, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    if-nez p3, :cond_1

    .line 983
    invoke-virtual {p4, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->finalRejection(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 985
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;
    .locals 3

    .line 965
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    if-eqz v0, :cond_0

    .line 966
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 969
    iget-object v1, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    iget v2, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    invoke-virtual {v1, v2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget p3, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    sub-int/2addr p3, v0

    iput p3, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    if-nez p3, :cond_1

    .line 971
    invoke-virtual {p4, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 973
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method
