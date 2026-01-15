.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;
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


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)Lio/reactivex/rxjava3/core/SingleSource;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;->apply(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)Lio/reactivex/rxjava3/core/SingleSource;

    move-result-object p1

    return-object p1
.end method
