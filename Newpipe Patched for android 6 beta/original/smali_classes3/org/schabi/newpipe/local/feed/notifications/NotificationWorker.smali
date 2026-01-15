.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;
.super Landroidx/work/rxjava3/RxWorker;
.source "NotificationWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

.field private final notificationHelper$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$haoIF2XPMPB6dFT_BKZ6vRwOFpk(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->notificationHelper_delegate$lambda$0(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 95
    const-class v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/work/rxjava3/RxWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 37
    new-instance p2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->notificationHelper$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    return-void
.end method

.method public static final synthetic access$getNotificationHelper(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->getNotificationHelper()Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$showLoadingFeedForegroundNotification(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->showLoadingFeedForegroundNotification()V

    return-void
.end method

.method private final getNotificationHelper()Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->notificationHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private static final notificationHelper_delegate$lambda$0(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
    .locals 1

    .line 38
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final runNow(Landroid/content/Context;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->runNow(Landroid/content/Context;)V

    return-void
.end method

.method private final showLoadingFeedForegroundNotification()V
    .locals 4

    .line 78
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120320

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 82
    invoke-virtual {v0, v2, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f08012d

    .line 83
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    new-instance v2, Landroidx/work/ForegroundInfo;

    const v3, 0x6f4a0a

    invoke-direct {v2, v3, v0, v1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    invoke-virtual {p0, v2}, Landroidx/work/ListenableWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public createWork()Lio/reactivex/rxjava3/core/Single;
    .locals 4

    .line 42
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->access$areNotificationsEnabled(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    const-wide/16 v1, -0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 48
    sget-object v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$2;->INSTANCE:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$2;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 57
    new-instance v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 71
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
