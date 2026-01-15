.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->$r8$lambda$FwsA63HSqfiFcLvnCMosYalL-F8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
