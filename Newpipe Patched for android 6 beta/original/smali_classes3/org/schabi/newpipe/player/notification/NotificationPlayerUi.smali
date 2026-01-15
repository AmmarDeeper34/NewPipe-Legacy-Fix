.class public final Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "NotificationPlayerUi.java"


# instance fields
.field private final notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 24
    new-instance v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;-><init>(Lorg/schabi/newpipe/player/Player;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    return-void
.end method


# virtual methods
.method public createNotificationAndStartForeground()V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationAndStartForeground()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroy()V

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->cancelNotificationAndStopForeground()V

    return-void
.end method

.method public onBlocked()V
    .locals 2

    .line 41
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBlocked()V

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 99
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    :cond_0
    return-void
.end method

.method public onBuffering()V
    .locals 2

    .line 53
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBuffering()V

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->shouldUpdateBufferingSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 80
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCompleted()V

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 107
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onPaused()V
    .locals 2

    .line 61
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPaused()V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimizeOnExitAction(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 65
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->cancelNotificationAndStopForeground()V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onPausedSeek()V
    .locals 2

    .line 74
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPausedSeek()V

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 2

    .line 112
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlayQueueEdited()V

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onPlaying()V
    .locals 2

    .line 47
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaying()V

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRepeatModeChanged(I)V

    .line 87
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onShuffleModeEnabledChanged(Z)V

    .line 93
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    return-void
.end method

.method public onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 36
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateThumbnail()V

    return-void
.end method
