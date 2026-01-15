.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "ChannelFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/StateSaver$WriteRead;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/extractor/channel/ChannelInfo;",
        ">;",
        "Lorg/schabi/newpipe/util/StateSaver$WriteRead;"
    }
.end annotation


# instance fields
.field private binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

.field private channelContentNotSupported:Z

.field private channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

.field private currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

.field private currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private lastTab:I

.field private menuNotifyButton:Landroid/view/MenuItem;

.field private menuProvider:Landroidx/core/view/MenuProvider;

.field private menuRssButton:Landroid/view/MenuItem;

.field protected name:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected serviceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private subscribeButtonMonitor:Lio/reactivex/rxjava3/disposables/Disposable;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field private tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

.field protected url:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4O_sL5ejlpwjtis0Do-jhBPYFpM(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$updateSubscription$8(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7JMFKYpxV0QTVQUNEcaJKryFrlo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$getSubscribeUpdateMonitor$11(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dBLqyGpXc-NcELzyfvbXe4wG0I(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$runWorker$14(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8630dreReHv32d37bFJ-XJwq55M(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$mapOnSubscribe$5(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9rFCbz7n5gWNAB5tfTfkWkfR2G0(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Boolean;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscription$3(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CUF3JuCPbM83p85EfCC0cX0NExI(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$showNotifySnackbar$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Em5T57V1HiEvC9NUaG9lVjNoDnM(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscription$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNI0xSdVaZGgjt8l9GY1ITlnMRo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscribeButton$10(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpZRFF6GUOZXDILha82KwKfr_1A(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$initListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UscX8GKKaoHGLGyyIncf_Ya3-os(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$mapOnUnsubscribe$6(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Wao1cyea6pf0nY2hLcbf0XPO4-Q(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscription$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5hu2lu8bLHXRcAqe_dyFhuEhEQ(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscribeButton$9(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bq3hp0ZCtassamjw8qZIrMAw1Cc(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$runWorker$13(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJbuCF5Pxo_nw7NGKDbmem-bNLw(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$updateSubscription$7(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gUAdNOT0JeWYPZ9bc9x_Tjm0WuU(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lambda$monitorSubscription$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchannelSubscription(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmenuNotifyButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmenuRssButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuRssButton:Landroid/view/MenuItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNotify(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->setNotify(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotifyButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRssButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateRssButton()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 87
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 72
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;
    .locals 1

    .line 107
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;-><init>()V

    .line 108
    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSubscribeUpdateMonitor(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/functions/Consumer;
    .locals 1

    .line 348
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-object v0
.end method

.method private synthetic lambda$getSubscribeUpdateMonitor$11(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/util/List;)V
    .locals 4

    .line 349
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscriptionManager.subscriptionTable.doOnNext() called with: subscriptionEntities = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 357
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 359
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "No subscription to this channel!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    new-instance p2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct {p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>()V

    .line 362
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setServiceId(I)V

    .line 363
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setUrl(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setAvatarUrl(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setDescription(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setSubscriberCount(Ljava/lang/Long;)V

    const/4 p1, 0x0

    .line 368
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 369
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    .line 370
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->mapOnSubscribe(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 373
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Found subscription to this channel!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    .line 375
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 376
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    .line 377
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 378
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->mapOnUnsubscribe(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/functions/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private synthetic lambda$initListeners$0(Landroid/view/View;)V
    .locals 3

    .line 219
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 222
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 223
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelName()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 225
    const-string v0, "Opening channel fragment"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 227
    :cond_0
    sget-boolean p1, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 228
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t open parent channel because we got no channel URL"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$mapOnSubscribe$5(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->insertSubscription(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-object p2
.end method

.method private synthetic lambda$mapOnUnsubscribe$6(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->deleteSubscription(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-object p2
.end method

.method private synthetic lambda$monitorSubscribeButton$10(Ljava/lang/Throwable;)V
    .locals 4

    .line 335
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing subscription for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 336
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 335
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$monitorSubscribeButton$9(Ljava/lang/Object;)V
    .locals 1

    .line 329
    sget-boolean p1, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Changed subscription status to this channel!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic lambda$monitorSubscription$1(Ljava/lang/Throwable;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 261
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Get subscription status"

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$monitorSubscription$2(Ljava/lang/Boolean;)V
    .locals 0

    .line 278
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateSubscribeButton(Z)V

    return-void
.end method

.method private synthetic lambda$monitorSubscription$3(Ljava/lang/Boolean;)Z
    .locals 0

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$monitorSubscription$4(Ljava/lang/Boolean;)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->showNotifySnackbar()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runWorker$13(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 2

    .line 577
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method private synthetic lambda$runWorker$14(Ljava/lang/Throwable;)V
    .locals 6

    .line 579
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 580
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "No URL"

    :cond_0
    move-object v3, v1

    iget v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$showNotifySnackbar$12(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 459
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->setNotify(Z)V

    return-void
.end method

.method private synthetic lambda$updateSubscription$7(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 3

    .line 312
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSubscription$8(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/lang/Throwable;)V
    .locals 4

    .line 318
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating subscription for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 318
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private mapOnSubscribe(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/functions/Function;
    .locals 1

    .line 294
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-object v0
.end method

.method private mapOnUnsubscribe(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/functions/Function;
    .locals 1

    .line 301
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-object v0
.end method

.method private monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 6

    .line 328
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 334
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 339
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v2}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 340
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 341
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 342
    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 343
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 344
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method private monitorSubscription(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 4

    .line 259
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 265
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 266
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscriptionFlowable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Flowable;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 271
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 272
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->getSubscribeUpdateMonitor(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 270
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 274
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 275
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Observable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 277
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 278
    invoke-virtual {v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    .line 274
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 280
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 281
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 283
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->skip(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 284
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 285
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 286
    invoke-virtual {v1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 280
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private runWorker(Z)V
    .locals 2

    .line 573
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 574
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 575
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 576
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private setInitialData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 114
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 115
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    return-void
.end method

.method private setNotify(Z)V
    .locals 4

    .line 442
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 445
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 446
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v1, v2, v3, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateNotificationMode(ILjava/lang/String;I)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 448
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 449
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 442
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private showContentNotSupportedIfNeeded()V
    .locals 3

    .line 651
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    if-nez v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v1, "(\ufe36\ufe39\ufe3a)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x2

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNotifySnackbar()V
    .locals 3

    .line 458
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    const v1, 0x7f1204d5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    const v2, 0x7f1201e4

    .line 459
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const/16 v1, -0x100

    .line 460
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 4

    .line 426
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 430
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 433
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    .line 434
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getNotificationMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 433
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 438
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updateRssButton()V
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuRssButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSubscribeButton(Z)V
    .locals 9

    .line 384
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscribeButton() called with: isSubscribed = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x12c

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/16 v2, 0xc8

    .line 394
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v4, 0x7f06034e

    .line 395
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 396
    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v5, 0x7f06034f

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 397
    iget-object v5, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v6, 0x7f040129

    .line 398
    invoke-static {v5, v6}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveColorFromAttr(Landroid/content/Context;I)I

    move-result v5

    const v6, 0x3eb33333    # 0.35f

    .line 397
    invoke-static {v5, v0, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 399
    iget-object v6, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v7, 0x7f06034d

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    if-eqz p1, :cond_4

    .line 402
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    const v7, 0x7f120471

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    int-to-long v7, v3

    invoke-static {p1, v7, v8, v5, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateBackgroundColor(Landroid/view/View;JII)V

    .line 405
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    int-to-long v2, v2

    invoke-static {p1, v2, v3, v6, v4}, Lorg/schabi/newpipe/ktx/TextViewUtils;->animateTextColor(Landroid/widget/TextView;JII)V

    goto :goto_2

    .line 408
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    const v7, 0x7f120470

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 409
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    int-to-long v7, v3

    invoke-static {p1, v7, v8, v0, v5}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateBackgroundColor(Landroid/view/View;JII)V

    .line 411
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    int-to-long v2, v2

    invoke-static {p1, v2, v3, v4, v6}, Lorg/schabi/newpipe/ktx/TextViewUtils;->animateTextColor(Landroid/widget/TextView;JII)V

    .line 415
    :goto_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    const-wide/16 v2, 0x64

    sget-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {p1, v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    return-void
.end method

.method private updateSubscription(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 4

    .line 308
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription() called with: info = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 317
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 321
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateChannelInfo(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 322
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 323
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 324
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 321
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private updateTabs()V
    .locals 8

    .line 470
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->clearAllItems()V

    .line 472
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 475
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 477
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 478
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 479
    invoke-static {v0, v2, v5}, Lorg/schabi/newpipe/util/ChannelTabHelper;->showChannelTab(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    iget v6, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    iget-object v7, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 481
    invoke-static {v6, v4, v7}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->getInstance(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;

    move-result-object v4

    .line 482
    iget-boolean v6, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    invoke-virtual {v4, v6}, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage(Z)V

    .line 483
    iget-object v6, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 484
    invoke-static {v5}, Lorg/schabi/newpipe/util/ChannelTabHelper;->getTranslationKey(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v6, v4, v5}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v3, 0x7f120416

    .line 488
    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/util/ChannelTabHelper;->showChannelTab(Landroid/content/Context;Landroid/content/SharedPreferences;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    new-instance v3, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;-><init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    const v4, 0x7f12007b

    .line 492
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {v2, v3, v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 496
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 498
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 499
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 505
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->startLoading(Z)V

    return-void

    .line 555
    :cond_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method public generateSuffix()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 6

    .line 592
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 593
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 594
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result v0

    const-string v1, "PICASSO_CHANNEL_TAG"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadBanner(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Landroid/widget/ImageView;

    .line 598
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 605
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 606
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 607
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 609
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 612
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 613
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 615
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v2, 0x7f120472

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 618
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v3, 0x7f120079

    .line 620
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 621
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 619
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_2
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateRssButton()V

    .line 629
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 630
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 631
    instance-of v1, v1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz v1, :cond_3

    .line 632
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 633
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->showContentNotSupportedIfNeeded()V

    .line 638
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 639
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_5

    .line 640
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 643
    :cond_5
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateTabs()V

    .line 644
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateSubscription(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 645
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->monitorSubscription(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 216
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    .line 218
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 231
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 202
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 203
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 204
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 206
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 126
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 133
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 134
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 246
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 251
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Landroidx/core/view/MenuProvider;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 237
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 238
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Landroidx/core/view/MenuProvider;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 541
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 542
    const-string v0, "LastTab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 533
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 534
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    const-string v1, "LastTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    new-instance p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Landroidx/core/view/MenuProvider;

    .line 195
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 1

    .line 527
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 528
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 585
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 586
    const-string v0, "PICASSO_CHANNEL_TAG"

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->cancelTag(Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public startLoading(Z)V
    .locals 1

    .line 561
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 564
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateTabs()V

    .line 565
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->runWorker(Z)V

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
