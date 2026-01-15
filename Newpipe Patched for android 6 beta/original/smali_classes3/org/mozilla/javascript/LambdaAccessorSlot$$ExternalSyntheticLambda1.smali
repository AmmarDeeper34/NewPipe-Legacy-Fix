.class public final synthetic Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->$r8$lambda$yyxBFVURK5f_Fe7ku33bv-5woHY(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
