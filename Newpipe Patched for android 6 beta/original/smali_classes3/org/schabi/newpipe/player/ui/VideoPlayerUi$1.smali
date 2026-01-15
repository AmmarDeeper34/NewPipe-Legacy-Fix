.class Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;
.super Ljava/lang/Object;
.source "VideoPlayerUi.java"

# interfaces
.implements Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupPlayerSeekOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFastSeekDirection(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 4

    .line 338
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-static {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->-$$Nest$fgetplayerGestureListener(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->endMultiDoubleTap()V

    .line 341
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1

    .line 343
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    if-ne p1, v0, :cond_2

    .line 346
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 347
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1

    .line 349
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1

    .line 350
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    if-ne p1, v0, :cond_5

    .line 352
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 353
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 354
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    goto :goto_0

    .line 357
    :cond_3
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1

    .line 355
    :cond_4
    :goto_0
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1

    .line 360
    :cond_5
    sget-object p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p1
.end method

.method public onDoubleTap()V
    .locals 4

    .line 325
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1c2

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public onDoubleTapEnd()V
    .locals 4

    .line 330
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1c2

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public seek(Z)V
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->-$$Nest$fgetplayerGestureListener(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->keepInDoubleTapMode()V

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->fastForward()V

    return-void

    .line 369
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->fastRewind()V

    return-void
.end method
