.class public final Lorg/schabi/newpipe/player/helper/PlayerHolder;
.super Ljava/lang/Object;
.source "PlayerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PlayerHolder"

.field private static instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# instance fields
.field private bound:Z

.field private final internalListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

.field private listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

.field private playerService:Lorg/schabi/newpipe/player/PlayerService;

.field private final playerStateListener:Ljava/util/function/Consumer;

.field private final serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$-UOy7VTH5Sv25wuoFTyFl_ElQ4o(Lorg/schabi/newpipe/player/helper/PlayerHolder;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->lambda$new$4(Lorg/schabi/newpipe/player/Player;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9pdpiKIacUC2FCNbDOxv_uQCG7w(Lorg/schabi/newpipe/player/helper/PlayerHolder;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->lambda$startPlayerListener$2(Lorg/schabi/newpipe/player/Player;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1kPTNkLXm8VVJAiM0rWXC7Lmng(Lorg/schabi/newpipe/player/helper/PlayerHolder;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->lambda$stopPlayerListener$3(Lorg/schabi/newpipe/player/Player;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nu8a4RgXLO932hzM2w0R-XA1-kE(Lorg/schabi/newpipe/player/Player;)Lj$/util/Optional;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o4x4OL2SMXxFab2uU5mF7FGb1W8(Lorg/schabi/newpipe/player/PlayerService;)Lj$/util/Optional;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/PlayerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCommonContext(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getCommonContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartPlayerListener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startPlayerListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbind(Lorg/schabi/newpipe/player/helper/PlayerHolder;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 265
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 357
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerStateListener:Ljava/util/function/Consumer;

    return-void
.end method

.method private bind(Landroid/content/Context;)V
    .locals 2

    .line 204
    sget-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->TAG:Ljava/lang/String;

    const-string v1, "bind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 208
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bind(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method private bind(Landroid/content/Context;I)Z
    .locals 2

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const-string v1, "bind_player_holder_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method private getCommonContext()Landroid/content/Context;
    .locals 1

    .line 120
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;
    .locals 2

    const-class v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;-><init>()V

    sput-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPlayQueue()Lj$/util/Optional;
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getPlayer()Lj$/util/Optional;
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda3;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$4(Lorg/schabi/newpipe/player/Player;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 363
    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onPlayerDisconnected()V

    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->-$$Nest$fgetplayAfterConnect(Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onPlayerConnected(Lorg/schabi/newpipe/player/Player;Z)V

    .line 367
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->-$$Nest$fputplayAfterConnect(Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;Z)V

    .line 368
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->setFragmentListener(Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startPlayerListener$2(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->setFragmentListener(Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;)V

    return-void
.end method

.method private synthetic lambda$stopPlayerListener$3(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->removeFragmentListener(Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;)V

    return-void
.end method

.method private startPlayerListener()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerStateListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/PlayerService;->setPlayerListener(Ljava/util/function/Consumer;)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private stopPlayerListener()V
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/PlayerService;->setPlayerListener(Ljava/util/function/Consumer;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unbind(Landroid/content/Context;)V
    .locals 2

    .line 230
    sget-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->TAG:Ljava/lang/String;

    const-string v1, "unbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 237
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopPlayerListener()V

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 239
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    if-eqz p1, :cond_1

    .line 240
    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onPlayerDisconnected()V

    .line 241
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onServiceDisconnected()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getQueuePosition()I
    .locals 2

    .line 99
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayQueue()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 2

    .line 95
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayQueue()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()Lorg/schabi/newpipe/player/PlayerType;
    .locals 2

    .line 70
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/PlayerType;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    return v0
.end method

.method public isPlayQueueReady()Z
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayQueue()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isPlayerOpen()Z
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 74
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setListener(Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {p1, v0}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onServiceConnected(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 112
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startPlayerListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V
    .locals 3

    .line 125
    sget-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService() called with playAfterConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getCommonContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->setListener(Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 130
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    if-eqz p2, :cond_1

    return-void

    .line 136
    :cond_1
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Landroid/content/Context;)V

    .line 137
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v1, "should_start_foreground_extra"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    iget-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->doPlayAfterConnect(Z)V

    .line 141
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bind(Landroid/content/Context;)V

    return-void
.end method

.method public stopService()V
    .locals 3

    .line 145
    sget-boolean v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->TAG:Ljava/lang/String;

    const-string v1, "stopService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 151
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getCommonContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Landroid/content/Context;)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public tryBindIfNeeded(Landroid/content/Context;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bind(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method
