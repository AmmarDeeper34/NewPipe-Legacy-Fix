.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/download/LoadingDialog;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/download/LoadingDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/download/LoadingDialog;

    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/download/LoadingDialog;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->$r8$lambda$2lgLOi87TeAvos-e38YNs1MS7k4(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/download/LoadingDialog;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
