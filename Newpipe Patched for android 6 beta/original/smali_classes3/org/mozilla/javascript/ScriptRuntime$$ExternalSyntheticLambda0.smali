.class public final synthetic Lorg/mozilla/javascript/ScriptRuntime$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Scriptable;

    check-cast p1, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->$r8$lambda$pV3W2hhMQ5g38HAmC0SXWyZdtlQ(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
