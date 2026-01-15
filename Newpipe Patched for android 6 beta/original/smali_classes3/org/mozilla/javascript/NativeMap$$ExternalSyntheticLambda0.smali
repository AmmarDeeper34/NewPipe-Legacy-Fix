.class public final synthetic Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Callable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Context;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Callable;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Context;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$3:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeMap$$ExternalSyntheticLambda0;->f$3:Lorg/mozilla/javascript/ScriptableObject;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeMap;->$r8$lambda$e3F28gj5YPiikqe9WBga_uMkas4(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
