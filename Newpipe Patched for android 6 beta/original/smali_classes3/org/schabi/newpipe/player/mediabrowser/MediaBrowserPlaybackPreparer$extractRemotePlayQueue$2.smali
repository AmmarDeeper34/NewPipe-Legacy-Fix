.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractRemotePlayQueue(JI)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;->apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    iget v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;->$index:I

    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;I)V

    return-object v0
.end method
