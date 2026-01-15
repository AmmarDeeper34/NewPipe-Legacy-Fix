.class public Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultKioskTab"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    return-void
.end method

.method private getDefaultKioskId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 511
    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v0

    .line 515
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getDefaultKioskId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 518
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Loading default kiosk for selected service"

    invoke-direct {v1, v0, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 521
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 486
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;
    .locals 0

    .line 507
    new-instance p1, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;-><init>()V

    return-object p1
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;->getDefaultKioskId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/KioskTranslator;->getKioskIcon(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/4 v0, 0x7

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 496
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;->getDefaultKioskId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/KioskTranslator;->getTranslatedKioskName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
