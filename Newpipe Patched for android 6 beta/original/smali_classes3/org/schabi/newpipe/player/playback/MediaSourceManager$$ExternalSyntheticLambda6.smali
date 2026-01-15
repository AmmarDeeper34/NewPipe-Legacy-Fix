.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->$r8$lambda$o9pPAAzp1URPxayOlD1n6iDJBCc(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Throwable;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object p1

    return-object p1
.end method
