.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    check-cast p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->$r8$lambda$oohirRvCs7mX9edsxH9dQ0hcVHs(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V

    return-void
.end method
