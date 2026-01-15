.class public final synthetic Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/LambdaConstructor;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/LambdaConstructor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda2;->f$0:Lorg/mozilla/javascript/LambdaConstructor;

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer$$ExternalSyntheticLambda2;->f$0:Lorg/mozilla/javascript/LambdaConstructor;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->$r8$lambda$BknSoZvnyR3YExafqeSOY7O-3Ps(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
