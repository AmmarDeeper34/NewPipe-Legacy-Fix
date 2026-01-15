.class Lorg/schabi/newpipe/player/helper/PlayerHolder$1;
.super Ljava/lang/Object;
.source "PlayerHolder.java"

# interfaces
.implements Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/helper/PlayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSystemUiIfNeeded()V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->hideSystemUiIfNeeded()V

    :cond_0
    return-void
.end method

.method public synthetic onAudioTrackUpdate()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/event/PlayerEventListener$-CC;->$default$onAudioTrackUpdate(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V

    return-void
.end method

.method public onFullscreenStateChanged(Z)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onFullscreenStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_0
    return-void
.end method

.method public onMoreOptionsLongClicked()V
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onMoreOptionsLongClicked()V

    :cond_0
    return-void
.end method

.method public onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;Z)V
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(III)V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onProgressUpdate(III)V

    :cond_0
    return-void
.end method

.method public onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_0
    return-void
.end method

.method public onScreenRotationButtonClicked()V
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onScreenRotationButtonClicked()V

    :cond_0
    return-void
.end method

.method public onServiceStopped()V
    .locals 2

    .line 345
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onServiceStopped()V

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$mgetCommonContext(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$munbind(Lorg/schabi/newpipe/player/helper/PlayerHolder;Landroid/content/Context;)V

    return-void
.end method

.method public onViewCreated()V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onViewCreated()V

    :cond_0
    return-void
.end method
