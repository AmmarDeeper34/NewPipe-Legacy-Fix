.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $playWhenReady:Z

.field final synthetic this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    iput-boolean p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->$playWhenReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->accept(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method

.method public final accept(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    const-string v0, "playQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->access$getClearMediaSessionError$p(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->access$getContext$p(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;->$playWhenReady:Z

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method
