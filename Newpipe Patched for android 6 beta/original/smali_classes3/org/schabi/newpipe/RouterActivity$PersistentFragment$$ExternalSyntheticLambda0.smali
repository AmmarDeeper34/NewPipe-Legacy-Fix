.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleTransformer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/SingleSource;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->pleaseWait(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method
