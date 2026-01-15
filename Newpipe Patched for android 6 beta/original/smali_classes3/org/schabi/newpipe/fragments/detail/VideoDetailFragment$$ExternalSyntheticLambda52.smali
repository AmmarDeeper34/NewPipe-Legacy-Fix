.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->$r8$lambda$lKNrvYcIA-nrD974fwyPFRIX5Pw(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method
