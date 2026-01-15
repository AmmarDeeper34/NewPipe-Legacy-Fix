.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->$r8$lambda$rQqLmqGMLAiYJt01p2l0wrqaQhc(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object v0

    return-object v0
.end method
