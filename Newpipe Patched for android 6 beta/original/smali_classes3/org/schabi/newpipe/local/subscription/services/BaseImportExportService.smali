.class public abstract Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;
.super Landroid/app/Service;
.source "BaseImportExportService.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field protected final eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

.field protected final maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field protected notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field protected final notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

.field protected subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field protected toast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$WSZKiyoxGO8CDzgLTnqFQ_vbG1Q(Ljava/lang/String;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$hyuQR1PlTOSUBCB5q2ynygg42A4(Lio/reactivex/rxjava3/core/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 4

    const-wide/16 v0, 0x1

    .line 123
    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->take(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->skip(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    const-wide/16 v0, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 124
    invoke-virtual {p0, v0, v1, v3}, Lio/reactivex/rxjava3/core/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    .line 123
    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Flowable;->concatWith(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 59
    invoke-static {}, Lio/reactivex/rxjava3/processors/PublishProcessor;->create()Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;-><init>(Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

    return-void
.end method


# virtual methods
.method protected createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 181
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120320

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 183
    invoke-virtual {v0, v2, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f08012d

    .line 184
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->getTitle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected disposeAll()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected getErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 224
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    if-eqz v0, :cond_0

    const p1, 0x7f120215

    .line 225
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1

    const p1, 0x7f120214

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 228
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->isNetworkRelated(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1202e5

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getNotificationId()I
.end method

.method public abstract getTitle()I
.end method

.method protected handleError(ILjava/lang/Throwable;)V
    .locals 2

    .line 211
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->getErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f120151

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(I)V

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->postErrorResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 95
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->setupNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 101
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposeAll()V

    return-void
.end method

.method protected postErrorResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposeAll()V

    const/4 v0, 0x1

    .line 162
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 169
    const-string p2, ""

    .line 170
    :cond_1
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f120320

    .line 171
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f08012d

    .line 172
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 175
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 177
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->getNotificationId()I

    move-result p2

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected setupNotification()V
    .locals 4

    .line 118
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 119
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->getNotificationId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 122
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda0;-><init>()V

    .line 126
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    new-instance v3, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda1;-><init>()V

    .line 127
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Flowable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/core/Flowable;->publish(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 129
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;)V

    .line 130
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method protected showToast(I)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->toast:Landroid/widget/Toast;

    .line 203
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected stopAndReportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopService()V

    .line 156
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {v0, p1, v1, p2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method protected stopService()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0, v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->postErrorResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateNotification(Ljava/lang/String;)V
    .locals 5

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 147
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->getNotificationId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method
