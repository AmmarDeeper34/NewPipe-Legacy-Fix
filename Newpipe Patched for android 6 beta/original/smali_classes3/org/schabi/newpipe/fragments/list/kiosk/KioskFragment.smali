.class public Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "KioskFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field kioskId:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field kioskTranslatedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
    .locals 2

    .line 78
    new-instance v0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;-><init>()V

    .line 79
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getListLinkHandlerFactoryByType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v1

    .line 83
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, p0, v1, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 60
    check-cast p1, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->handleResult(Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 153
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreKioskItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 148
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getKioskInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/KioskTranslator;->getTranslatedKioskName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 135
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-boolean p2, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005f

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 107
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->reloadContent()V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Setting kiosk title"

    invoke-direct {v1, v0, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_1
    return-void
.end method

.method public showEmptyState()V
    .locals 2

    .line 171
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->showEmptyState()V

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v0, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    .line 173
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v1, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120303

    .line 174
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->setEmptyStateMessage(I)V

    :cond_0
    return-void
.end method
