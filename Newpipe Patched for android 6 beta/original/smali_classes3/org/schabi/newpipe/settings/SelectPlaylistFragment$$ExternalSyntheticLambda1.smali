.class public final synthetic Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
