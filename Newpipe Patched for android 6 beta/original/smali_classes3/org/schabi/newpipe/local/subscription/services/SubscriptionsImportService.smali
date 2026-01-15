.class public Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;
.super Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;
.source "SubscriptionsImportService.java"


# instance fields
.field private channelUrl:Ljava/lang/String;

.field private currentMode:I

.field private currentServiceId:I

.field private inputStream:Ljava/io/InputStream;

.field private inputStreamType:Ljava/lang/String;

.field private subscription:Lorg/reactivestreams/Subscription;


# direct methods
.method public static synthetic $r8$lambda$4MPAaQcyvd1c5idW69Mq32y1wNw(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$importFromInputStream$5()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4yXvtDU7zd22h5ISuS0xWM7SD5k(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$upsertBatch$3(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HXZSDtzDbTJSzRUR2j_MwNrYb6o(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$startImport$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VH0rI-UTHQKaO4FUhItc8qn_6nU(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$importFromChannelUrl$4()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V_-_Y0NxWF372J8VGmKsAl2Emcw(Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;)Lio/reactivex/rxjava3/core/Notification;
    .locals 5

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getServiceId()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 210
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 213
    new-instance v1, Landroid/util/Pair;

    .line 216
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;->getServiceId()I

    move-result p0

    .line 217
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 215
    invoke-static {p0, v3, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 214
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 220
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kWWRmvZCS_WwmZZerqDxFMdq54M(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$importFromPreviousExport$6()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x9B-kHTzYEoqZLLB0YFI29yiV0Q(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Lio/reactivex/rxjava3/core/Notification;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->lambda$getNotificationsConsumer$2(Lio/reactivex/rxjava3/core/Notification;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsubscription(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->subscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;-><init>()V

    return-void
.end method

.method private getNotificationsConsumer()Lio/reactivex/rxjava3/functions/Consumer;
    .locals 1

    .line 270
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    return-object v0
.end method

.method private getSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 237
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    return-object v0
.end method

.method private importFromChannelUrl()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 306
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private importFromInputStream()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStreamType:Ljava/lang/String;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private importFromPreviousExport()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 321
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getNotificationsConsumer$2(Lio/reactivex/rxjava3/core/Notification;)V
    .locals 3

    .line 271
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->isOnNext()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, p1

    :cond_0
    invoke-interface {v0, v1}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onItemCompleted(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getError()Ljava/lang/Throwable;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 277
    instance-of v2, p1, Ljava/io/IOException;

    if-nez v2, :cond_4

    .line 279
    instance-of v2, v0, Ljava/io/IOException;

    if-nez v2, :cond_3

    .line 281
    invoke-static {p1}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->isNetworkRelated(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

    invoke-interface {p1, v1}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onItemCompleted(Ljava/lang/String;)V

    return-void

    .line 282
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 280
    :cond_3
    throw v0

    .line 278
    :cond_4
    throw p1

    :cond_5
    return-void
.end method

.method private synthetic lambda$importFromChannelUrl$4()Ljava/util/List;
    .locals 2

    .line 306
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentServiceId:I

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->channelUrl:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->fromChannelUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$importFromInputStream$5()Ljava/util/List;
    .locals 3

    .line 315
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentServiceId:I

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStreamType:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$importFromPreviousExport$6()Ljava/util/List;
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/subscription/services/ImportExportJsonHelper;->readFrom(Ljava/io/InputStream;Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$startImport$0(Ljava/util/List;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->eventListener:Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;->onSizeReceived(I)V

    return-void
.end method

.method private synthetic lambda$upsertBatch$3(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/core/Notification;

    .line 296
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Notification;->isOnNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private startImport()V
    .locals 2

    const v0, 0x7f120207

    .line 178
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(I)V

    .line 181
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->importFromPreviousExport()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->importFromInputStream()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->importFromChannelUrl()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flowable given by \"importFrom\" is null (current mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "Importing subscriptions"

    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopAndReportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_3
    new-instance v1, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda1;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->parallel(I)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object v0

    .line 205
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->runOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda2;-><init>()V

    .line 206
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->sequential()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 225
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 226
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->getNotificationsConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const/16 v1, 0x32

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->buffer(I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 229
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->upsertBatch()Lio/reactivex/rxjava3/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 231
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 232
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->getSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method private upsertBatch()Lio/reactivex/rxjava3/functions/Function;
    .locals 1

    .line 292
    new-instance v0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V

    return-object v0
.end method


# virtual methods
.method protected disposeAll()V
    .locals 1

    .line 167
    invoke-super {p0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->disposeAll()V

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method protected getNotificationId()I
    .locals 1

    .line 0
    const/16 v0, 0x11d8

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 0
    const v0, 0x7f120207

    return v0
.end method

.method protected handleError(Ljava/lang/Throwable;)V
    .locals 1

    const v0, 0x7f120476

    .line 325
    invoke-super {p0, v0, p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 102
    const-string p2, "application/octet-stream"

    const/4 p3, 0x2

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 106
    :cond_0
    const-string v0, "key_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    .line 107
    const-string v0, "key_service_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentServiceId:I

    .line 109
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    const-string v2, "Importing subscriptions"

    const-string v3, "key_value"

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->channelUrl:Ljava/lang/String;

    goto :goto_2

    .line 112
    :cond_1
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v3, v0}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_2

    .line 114
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Importing from input stream, but file path is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopAndReportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return p3

    .line 121
    :cond_2
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 122
    new-instance p1, Lorg/schabi/newpipe/streams/io/SharpInputStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v3

    invoke-direct {p1, v3}, Lorg/schabi/newpipe/streams/io/SharpInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStream:Ljava/io/InputStream;

    .line 123
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStreamType:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 127
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStreamType:Ljava/lang/String;

    goto :goto_2

    .line 130
    :cond_5
    :goto_1
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStreamType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_6
    :goto_2
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->channelUrl:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_3

    .line 151
    :cond_7
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->startImport()V

    return p3

    .line 142
    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Some important field is null or in illegal state: currentMode=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->currentMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], channelUrl=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->channelUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], inputStream=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopAndReportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return p3

    .line 136
    :goto_4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->handleError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return p3
.end method
