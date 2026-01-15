.class Lorg/mozilla/javascript/NativePromise$Reaction;
.super Ljava/lang/Object;
.source "NativePromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reaction"
.end annotation


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field handler:Lorg/mozilla/javascript/Callable;

.field reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/NativePromise$ReactionType;Lorg/mozilla/javascript/Callable;)V
    .locals 1

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    sget-object v0, Lorg/mozilla/javascript/NativePromise$ReactionType;->FULFILL:Lorg/mozilla/javascript/NativePromise$ReactionType;

    .line 637
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 638
    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    .line 639
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    return-void
.end method


# virtual methods
.method invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 646
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    if-nez v2, :cond_1

    .line 647
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p3

    goto :goto_1

    .line 657
    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 658
    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 661
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 665
    :goto_1
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 669
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$smgetErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 665
    invoke-interface {v2, p1, p2, v3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
