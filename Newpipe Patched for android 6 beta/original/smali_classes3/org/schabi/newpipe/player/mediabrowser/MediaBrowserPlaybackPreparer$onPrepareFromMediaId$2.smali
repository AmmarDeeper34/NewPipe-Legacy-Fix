.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;
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
.field final synthetic $mediaId:Ljava/lang/String;

.field final synthetic this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;->$mediaId:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;->$mediaId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start playback of media ID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->access$onPrepareError(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;Ljava/lang/Throwable;)V

    return-void
.end method
