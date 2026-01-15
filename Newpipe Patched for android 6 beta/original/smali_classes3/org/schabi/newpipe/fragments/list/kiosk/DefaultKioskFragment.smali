.class public Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;
.super Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
.source "DefaultKioskFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;-><init>()V

    return-void
.end method

.method private updateSelectedDefaultKiosk()V
    .locals 4

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 41
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getDefaultKioskId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getListLinkHandlerFactoryByType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/KioskTranslator;->getTranslatedKioskName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 49
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Loading default kiosk for selected service"

    invoke-direct {v1, v0, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    if-gez p1, :cond_0

    .line 20
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;->updateSelectedDefaultKiosk()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 26
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->onResume()V

    .line 28
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 32
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;->updateSelectedDefaultKiosk()V

    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->reloadContent()V

    :cond_1
    return-void
.end method
