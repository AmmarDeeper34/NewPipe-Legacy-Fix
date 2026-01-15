.class public Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;
.super Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;
.source "SubscriptionsExportService.java"


# instance fields
.field private outFile:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

.field private outputStream:Ljava/io/OutputStream;

.field private subscription:Lorg/reactivestreams/Subscription;


# direct methods
.method public static synthetic $r8$lambda$6Z51S3VZ-EWSa4zdA132pOnYJ6U(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 119
    new-instance v2, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic $r8$lambda$b5OB_SAOBFViYQzGuc8cJglgiI8(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;Ljava/util/List;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->lambda$exportToFile$1(Ljava/util/List;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputsubscription(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->subscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;-><init>()V

    return-void
.end method

.method private exportToFile()Lio/reactivex/rxjava3/functions/Function;
    .locals 1

    .line 162
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;)V

    return-object v0
.end method

.method private getSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 131
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;)V

    return-object v0
.end method

.method private synthetic lambda$exportToFile$1(Ljava/util/List;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/local/subscription/services/ImportExportJsonHelper;->writeTo(Ljava/util/List;Ljava/io/OutputStream;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)V

    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->outFile:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    return-object p1
.end method

.method private startExport()V
    .locals 3

    const v0, 0x7f1201a4

    .line 112
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(I)V

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->take(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 124
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->exportToFile()Lio/reactivex/rxjava3/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 125
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 126
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->getSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method protected disposeAll()V
    .locals 1

    .line 105
    invoke-super {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposeAll()V

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method protected getNotificationId()I
    .locals 1

    .line 0
    const/16 v0, 0x11d7

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 0
    const v0, 0x7f1201a4

    return v0
.end method

.method protected handleError(Ljava/lang/Throwable;)V
    .locals 1

    const v0, 0x7f120475

    .line 169
    invoke-super {p0, v0, p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 65
    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const-string p3, "key_file_path"

    const-class v0, Landroid/net/Uri;

    invoke-static {p1, p3, v0}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Exporting to a file, but the path is null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p3, "Exporting subscriptions"

    invoke-virtual {p0, p1, p3}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopAndReportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return p2

    .line 78
    :cond_1
    :try_start_0
    new-instance p3, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    const-string v0, "application/json"

    invoke-direct {p3, p0, p1, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->outFile:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 82
    new-instance p1, Lorg/schabi/newpipe/streams/io/SharpOutputStream;

    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->outFile:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->openAndTruncateStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/streams/io/SharpOutputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->startExport()V

    return p2

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->handleError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return p2
.end method
