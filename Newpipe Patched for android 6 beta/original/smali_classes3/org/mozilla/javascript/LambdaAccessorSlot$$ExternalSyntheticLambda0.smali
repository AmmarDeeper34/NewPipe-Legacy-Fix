.class public final synthetic Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->$r8$lambda$kr9FroWyUI7Z3ms3JDyn8-5cGlc(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
