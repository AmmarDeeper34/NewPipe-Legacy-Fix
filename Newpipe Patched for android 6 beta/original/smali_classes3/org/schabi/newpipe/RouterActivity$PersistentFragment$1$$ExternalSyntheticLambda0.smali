.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->$r8$lambda$QG8t64yDBH6h--b6nN2RFVKY7Mk(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
