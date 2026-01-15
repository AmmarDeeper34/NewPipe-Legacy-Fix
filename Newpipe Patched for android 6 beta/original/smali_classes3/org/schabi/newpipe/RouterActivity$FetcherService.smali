.class public Lorg/schabi/newpipe/RouterActivity$FetcherService;
.super Landroid/app/IntentService;
.source "RouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/RouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetcherService"
.end annotation


# instance fields
.field private fetcher:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$Gm42HbCrwKGAYPALV_YfaXcPSHg(Lorg/schabi/newpipe/RouterActivity$FetcherService;Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->lambda$handleChoice$0(Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->lambda$getResultHandler$2(Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zINcwTAWnPOZBqYqcxxMweEuOsA(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->lambda$handleChoice$1(Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 930
    const-class v0, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 1051
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120320

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1052
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f08012d

    .line 1053
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1054
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f120393

    .line 1056
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f120392

    .line 1058
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getResultHandler$2(Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 7

    const v0, 0x7f1204c4

    .line 991
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120059

    .line 992
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12037c

    .line 993
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 996
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f1204b5

    .line 998
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 997
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const v6, 0x7f1204b3

    .line 1000
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 999
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1003
    instance-of v6, p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v6, :cond_2

    .line 1004
    iget-object v6, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 1005
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {p0, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnExternalAudioPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void

    .line 1007
    :cond_0
    iget-object v3, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1008
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {p0, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnExternalVideoPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void

    .line 1011
    :cond_1
    new-instance v3, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v3, p2}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    goto :goto_0

    .line 1012
    :cond_2
    instance-of v3, p2, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    if-eqz v3, :cond_3

    .line 1013
    move-object v3, p2

    check-cast v3, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object v3

    .line 1014
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda3;-><init>()V

    .line 1015
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    .line 1016
    invoke-interface {v3}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v3

    .line 1018
    invoke-virtual {v3}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1019
    new-instance v4, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result p2

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-direct {v4, p2, v3}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    move-object v3, v4

    goto :goto_0

    .line 1023
    :cond_3
    instance-of v3, p2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    if-eqz v3, :cond_7

    .line 1024
    new-instance v3, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    check-cast p2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-direct {v3, p2}, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    .line 1029
    :goto_0
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1030
    invoke-static {p0, v3, v5}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnMainPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void

    .line 1031
    :cond_4
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 1032
    invoke-static {p0, v3, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void

    .line 1033
    :cond_5
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1034
    invoke-static {p0, v3, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void

    .line 1035
    :cond_6
    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    const p2, 0x7f12013f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1036
    invoke-static {p0, v3}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$handleChoice$0(Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 0

    .line 979
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 980
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 981
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleChoice$1(Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;Ljava/lang/Throwable;)V
    .locals 6

    .line 983
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opened with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, p2, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 985
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p2, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    move-object v2, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 983
    invoke-static {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->-$$Nest$smhandleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public getResultHandler(Lorg/schabi/newpipe/RouterActivity$Choice;)Ljava/util/function/Consumer;
    .locals 1

    .line 990
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;)V

    return-object v0
.end method

.method public handleChoice(Lorg/schabi/newpipe/RouterActivity$Choice;)V
    .locals 4

    .line 955
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 957
    sget-object v1, Lorg/schabi/newpipe/RouterActivity$2;->$SwitchMap$org$schabi$newpipe$extractor$StreamingService$LinkType:[I

    iget-object v2, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->linkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 967
    :cond_0
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 968
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    goto :goto_0

    .line 963
    :cond_1
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 964
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    goto :goto_0

    .line 959
    :cond_2
    iget v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    iget-object v1, p1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 960
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    :goto_0
    if-eqz v1, :cond_3

    .line 975
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->getResultHandler(Lorg/schabi/newpipe/RouterActivity$Choice;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 977
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v3, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Ljava/util/function/Consumer;)V

    new-instance v2, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;)V

    .line 978
    invoke-virtual {v1, v3, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 935
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 936
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x1c8

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1043
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x1

    .line 1044
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 1045
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    const-string v0, "key_choice"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 946
    instance-of v0, p1, Lorg/schabi/newpipe/RouterActivity$Choice;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 949
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 950
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->handleChoice(Lorg/schabi/newpipe/RouterActivity$Choice;)V

    return-void
.end method
