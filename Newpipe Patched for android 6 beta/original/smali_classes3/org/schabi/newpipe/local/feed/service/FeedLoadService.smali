.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService;
.super Landroid/app/Service;
.source "FeedLoadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;,
        Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

.field private loadingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private notificationDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private notificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method public static synthetic $r8$lambda$RK5ZIgOYYA8exTr2N96fGwI3d8o(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupNotification$lambda$1(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDluRqJYxGM69yfVsTVx93FFF5Y(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupNotification$lambda$0(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    .line 49
    const-class v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFeedLoadManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    return-object p0
.end method

.method public static final synthetic access$getNotificationBuilder$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleError(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$stopService(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->stopService()V

    return-void
.end method

.method public static final synthetic access$updateNotificationProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->updateNotificationProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V

    return-void
.end method

.method private final createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x6f4a0a

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Landroidx/core/app/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f120320

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 142
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v4, -0x1

    .line 143
    invoke-virtual {v1, v4, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v4, 0x7f08012d

    .line 144
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f120070

    .line 146
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f1201c1

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "setContentTitle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final disposeAll()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "broadcastReceiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method private final handleError(Ljava/lang/Throwable;)V
    .locals 2

    .line 212
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    .line 213
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->stopService()V

    return-void
.end method

.method private final setupBroadcastReceiver()V
    .locals 3

    .line 197
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupBroadcastReceiver$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private final setupNotification()V
    .locals 2

    .line 151
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 152
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 154
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$$ExternalSyntheticLambda0;-><init>()V

    .line 158
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    if-nez v1, :cond_0

    const-string v1, "feedLoadManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->getNotification()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Flowable;->publish(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 160
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 161
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->doOnTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 162
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 158
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private static final setupNotification$lambda$0(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "flow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    .line 155
    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->take(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->skip(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v3}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Flowable;->concatWith(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method private static final setupNotification$lambda$1(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 1

    .line 161
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    if-nez p0, :cond_0

    const-string p0, "notificationManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const v0, 0x6f4a0a

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void
.end method

.method private final stopService()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->disposeAll()V

    const/4 v0, 0x1

    .line 116
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final updateNotificationProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V
    .locals 7

    .line 166
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "notificationBuilder"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getMaxProgress()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getCurrentProgress()I

    move-result v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getMaxProgress()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 168
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getMaxProgress()I

    move-result v0

    const/16 v3, 0x18

    if-ne v0, v6, :cond_7

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 170
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 171
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 173
    :cond_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getCurrentProgress()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getMaxProgress()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_9

    .line 176
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 177
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 180
    :cond_9
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 181
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 182
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->getUpdateDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 187
    :cond_c
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    if-nez p1, :cond_d

    const-string p1, "notificationManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_d
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x6f4a0a

    invoke-virtual {p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 0
    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 76
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->TAG:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() called with: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 77
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x2

    if-eqz p1, :cond_3

    .line 84
    iget-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupNotification()V

    .line 89
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupBroadcastReceiver()V

    .line 91
    const-string p3, "FeedLoadService.EXTRA_GROUP_ID"

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 92
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    if-nez p1, :cond_2

    const-string p1, "feedLoadManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    move-object v2, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading$default(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;JZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 93
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 94
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Single;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 97
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 92
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    :goto_0
    return p2
.end method
