.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;
.super Ljava/lang/Object;
.source "NotificationWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$areNotificationsEnabled(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 99
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic schedule$default(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    return-void
.end method


# virtual methods
.method public final cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    const-string v0, "org.schabi.newpipe_streams_notifications"

    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;)V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public final runNow(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 161
    const-string v1, "org.schabi.newpipe_streams_notifications"

    invoke-virtual {v0, v1}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 162
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 163
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    invoke-virtual {v1, p1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final schedule(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule$default(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;ZILjava/lang/Object;)V

    return-void
.end method

.method public final schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 125
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 128
    :cond_0
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    .line 132
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 134
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->getInterval()J

    move-result-wide v2

    .line 135
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    const-class v4, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-direct {v1, v4, v2, v3, p2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 136
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 137
    const-string v0, "org.schabi.newpipe_streams_notifications"

    invoke-virtual {p2, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 138
    invoke-virtual {p2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p2

    check-cast p2, Landroidx/work/PeriodicWorkRequest;

    .line 140
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    invoke-virtual {v1, p1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 144
    sget-object p3, Landroidx/work/ExistingPeriodicWorkPolicy;->CANCEL_AND_REENQUEUE:Landroidx/work/ExistingPeriodicWorkPolicy;

    goto :goto_1

    .line 146
    :cond_1
    sget-object p3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 141
    :goto_1
    invoke-virtual {p1, v0, p3, p2}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method
