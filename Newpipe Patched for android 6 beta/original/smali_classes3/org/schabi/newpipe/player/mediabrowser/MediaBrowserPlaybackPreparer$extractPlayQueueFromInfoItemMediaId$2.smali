.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;->apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    return-object v0
.end method
