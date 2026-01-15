.class public final synthetic Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Callable;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$0:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$1:Lorg/mozilla/javascript/Callable;

    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$0:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$1:Lorg/mozilla/javascript/Callable;

    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativePromise;->$r8$lambda$zNx2SzKNVmAfh9Sepn1awVMCO_I(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
