.class public final Lorg/schabi/newpipe/player/PlayerService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/PlayerService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PlayerService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

.field private mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

.field private mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private onPlayerStartedOrStopped:Ljava/util/function/Consumer;

.field private player:Lorg/schabi/newpipe/player/Player;

.field private sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;


# direct methods
.method public static synthetic $r8$lambda$53kOfVIIMZosDaze_hl0PM8qegQ(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayerService;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IrzPmteaKNx3jgACWW_IlOiY3XQ(Lorg/schabi/newpipe/player/PlayerService;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/PlayerService;->lambda$onCreate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwzMbITFYWTZgEWH16WZeR5At-A(Landroid/content/Intent;Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V
    .locals 0

    .line 177
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->handleMediaButtonIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 75
    new-instance v0, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Ljava/util/function/Consumer;

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->destroy()V

    .line 227
    iput-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    const/4 v0, 0x1

    .line 235
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->onPrepare()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 263
    invoke-static {p1}, Lorg/schabi/newpipe/player/AudioServiceLeakFix;->preventLeakOf(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public destroyPlayerAndStopService()V
    .locals 2

    .line 246
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    const-string v1, "destroyPlayerAndStopService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayerService;->cleanup()V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public getPlayer()Lorg/schabi/newpipe/player/Player;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 270
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() called with: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], extras = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/ktx/BundleKt;->toDebugString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    const-string v0, "bind_player_holder_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayerService;->mBinder:Landroid/os/IBinder;

    return-object p1

    .line 280
    :cond_1
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-super {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 88
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 90
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->setTheme(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    new-instance v1, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 98
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v1, "MediaSessionPlayerServ"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 99
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMetadataDeduplicationEnabled(Z)V

    .line 103
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 105
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    new-instance v1, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    new-instance v3, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    .line 113
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlaybackPreparer(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 208
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    const-string v1, "destroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onDestroy()V

    .line 213
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayerService;->cleanup()V

    .line 215
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->dispose()V

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 217
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->dispose()V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0

    .line 345
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-virtual {p2, p1, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onSearch(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 126
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() called with: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], extras = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/ktx/BundleKt;->toDebugString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], flags = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], startId = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const-string p2, "should_start_foreground_extra"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 136
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    if-nez p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 139
    new-instance p2, Lorg/schabi/newpipe/player/Player;

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-direct {p2, p0, v0, v1}, Lorg/schabi/newpipe/player/Player;-><init>(Lorg/schabi/newpipe/player/PlayerService;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    iput-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 149
    :cond_2
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p2

    const-class v0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda4;-><init>()V

    .line 150
    invoke-virtual {p2, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_3

    .line 152
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Ljava/util/function/Consumer;

    if-eqz p2, :cond_3

    .line 156
    iget-object p3, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    :cond_3
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    const/4 p3, 0x2

    if-nez p2, :cond_4

    .line 167
    sget-object p1, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand() got a useless intent, closing the service"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->startForegroundWithDummyNotification(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 169
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    return p3

    .line 173
    :cond_4
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getPlayerType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object p2

    .line 174
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/Player;->handleIntent(Landroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/player/Player;->handleIntentPost(Lorg/schabi/newpipe/player/PlayerType;)V

    .line 176
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p2

    const-class v0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda5;-><init>(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p2, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return p3
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 198
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->onDestroy()V

    .line 203
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->halt(I)V

    return-void
.end method

.method public setPlayerListener(Ljava/util/function/Consumer;)V
    .locals 1

    .line 319
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public stopForImmediateReusing()V
    .locals 2

    .line 183
    sget-boolean v0, Lorg/schabi/newpipe/player/PlayerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lorg/schabi/newpipe/player/PlayerService;->TAG:Ljava/lang/String;

    const-string v1, "stopForImmediateReusing() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->smoothStopForImmediateReusing()V

    :cond_1
    return-void
.end method
