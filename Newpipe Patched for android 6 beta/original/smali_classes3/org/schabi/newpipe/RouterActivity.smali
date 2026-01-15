.class public Lorg/schabi/newpipe/RouterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;,
        Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;,
        Lorg/schabi/newpipe/RouterActivity$FetcherService;,
        Lorg/schabi/newpipe/RouterActivity$Choice;,
        Lorg/schabi/newpipe/RouterActivity$PersistentFragment;
    }
.end annotation


# instance fields
.field private alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

.field protected currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private currentService:Lorg/schabi/newpipe/extractor/StreamingService;

.field protected currentServiceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected currentUrl:Ljava/lang/String;

.field private dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field protected final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field protected selectedPreviously:I

.field protected selectedRadioPosition:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private selectionIsAddToPlaylist:Z

.field private selectionIsDownload:Z


# direct methods
.method public static synthetic $r8$lambda$0aRi0oUipm4lm5r-mDTnrZ9gsAc(Lorg/schabi/newpipe/RouterActivity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleChoice$12(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JlXce4hbTzCtuyg77lZLVgoqBM(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/RouterActivity;->lambda$showUnsupportedUrlDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9rgZAOsGIvcN6dF3jcnFh_-ee1g(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleUrl$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxFoLqT0cHHVJUji3qnZVaaHSdU(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity;->lambda$showDialog$9(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IXlENXxZuN7M6DpbcEVNfDL941o(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleUrl$0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ih7AKKDodYQRnXtKHuRT2YHHOJs(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleChoice$13(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Llr_sLC-SMlyLbML0e81YvEM0ws(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/RouterActivity;->lambda$showDialog$10(Landroid/widget/RadioGroup;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OiY_1ZzpYRVAEpJ2XIMalNRc2PI(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/RouterActivity;->lambda$showDialog$6(Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2Qu3DcfvpoHJH5IoWFlE939PdE(Lorg/schabi/newpipe/RouterActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->lambda$showDialog$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUBWQIRmxbN6N52ITGnQyIHGLDI(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity;->lambda$showDialog$8(Landroid/widget/RadioGroup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0YY1xdaWWmjncngBFDlEt2Bx_0(Lorg/schabi/newpipe/RouterActivity;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleChoice$11()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o9MRcESuo3sMXbLvcqzEmLDdk-8(Lorg/schabi/newpipe/RouterActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->lambda$showUnsupportedUrlDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pT6O1dp5PHUO2ZQSmil6sKxn1xg(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/RouterActivity;->lambda$showUnsupportedUrlDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJ-mA5Dg2oZwncuq4nLfvuqDH7A(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity;->lambda$handleUrl$2(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentService(Lorg/schabi/newpipe/RouterActivity;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhandleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 104
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 109
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 111
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectedPreviously:I

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsDownload:Z

    .line 115
    iput-boolean v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsAddToPlaylist:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 117
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method private canHandleChoiceLikeShowInfo(Ljava/lang/String;)Z
    .locals 2

    const v0, 0x7f1204c4

    .line 670
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 681
    :cond_1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v1, 0x7f1204b5

    .line 682
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 689
    :cond_2
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 690
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private getChoicesForService(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/StreamingService$LinkType;)Ljava/util/List;
    .locals 7

    .line 515
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const v1, 0x7f120437

    .line 516
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120436

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08011a

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 518
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const v2, 0x7f1204c4

    .line 519
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1204c3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08013b

    invoke-direct {v1, v2, v3, v4}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    new-instance v2, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const v3, 0x7f120059

    .line 522
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120058

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080112

    invoke-direct {v2, v3, v4, v5}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    new-instance v3, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const v4, 0x7f12037c

    .line 525
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12037b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080136

    invoke-direct {v3, v4, v5, v6}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getMediaCapabilities()Ljava/util/List;

    move-result-object p1

    .line 534
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq p2, v0, :cond_2

    sget-object v5, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-ne p2, v5, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const v0, 0x7f1204b5

    .line 570
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 569
    invoke-interface {p2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v6, 0x7f1204b3

    .line 572
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 571
    invoke-interface {p2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 574
    sget-object v5, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 575
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 579
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    .line 535
    :cond_2
    :goto_0
    sget-object v5, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_3
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 540
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_4
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getQueueSize()I

    move-result p1

    if-lez p1, :cond_5

    .line 547
    new-instance p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const v1, 0x7f12013f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120141

    .line 548
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800de

    invoke-direct {p1, v1, v2, v3}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-ne p2, v0, :cond_6

    .line 554
    new-instance p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const p2, 0x7f120109

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f120103

    .line 555
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08010d

    invoke-direct {p1, p2, v0, v1}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 554
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    const p2, 0x7f120020

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f12001f

    .line 561
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08013e

    invoke-direct {p1, p2, v0, v1}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v4
.end method

.method private getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;
    .locals 3

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 863
    const-string v1, "PERSIST_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    if-nez v2, :cond_0

    .line 865
    new-instance v2, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    invoke-direct {v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;-><init>()V

    .line 866
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 867
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_0
    return-object v2
.end method

.method private getUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 1069
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1072
    :cond_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-static {p1}, Lorg/schabi/newpipe/util/urlfinder/UrlFinder;->firstUrlFromInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleChoice(Ljava/lang/String;)V
    .locals 5

    .line 612
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030021

    .line 613
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 614
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f12038e

    .line 616
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const v0, 0x7f12037c

    .line 621
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-static {p0}, Lorg/schabi/newpipe/util/PermissionHelper;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    return-void

    :cond_1
    const v0, 0x7f120109

    .line 627
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/16 p1, 0x30a

    .line 628
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    iput-boolean v1, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsDownload:Z

    .line 631
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->openDownloadDialog()V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f120020

    .line 636
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    iput-boolean v1, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsAddToPlaylist:Z

    .line 638
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->openAddToPlaylistDialog()V

    return-void

    :cond_4
    const v0, 0x7f120437

    .line 644
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 645
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->canHandleChoiceLikeShowInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 660
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$Choice;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    iget-object v4, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/schabi/newpipe/RouterActivity$Choice;-><init>(ILorg/schabi/newpipe/extractor/StreamingService$LinkType;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string p1, "key_choice"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 666
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    return-void

    .line 646
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 647
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 648
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 649
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    new-instance v2, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 650
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 646
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private static handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 2

    .line 263
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getRecaptchaUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f1203a9

    .line 264
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    const-string v1, "recaptcha_url_extra"

    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getRecaptchaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-static {p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/error/ErrorInfo;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    instance-of p1, p0, Lorg/schabi/newpipe/RouterActivity;

    if-eqz p1, :cond_2

    .line 279
    check-cast p0, Lorg/schabi/newpipe/RouterActivity;

    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    :cond_2
    return-void
.end method

.method private handleText()V
    .locals 5

    .line 603
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_service_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 605
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/schabi/newpipe/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 606
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 608
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->openSearch(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private handleUrl(Ljava/lang/String;)V
    .locals 4

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 244
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 245
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    new-instance v3, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 225
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private synthetic lambda$handleChoice$11()Landroid/content/Intent;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getIntentByLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$handleChoice$12(Landroid/content/Intent;)V
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 652
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleChoice$13(Ljava/lang/Throwable;)V
    .locals 6

    .line 653
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting info activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$handleUrl$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 228
    :try_start_0
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 230
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 231
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 232
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 238
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 241
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$handleUrl$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 247
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->onSuccess()V

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->showUnsupportedUrlDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleUrl$2(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 252
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting service from url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$showDialog$10(Landroid/widget/RadioGroup;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 457
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget p3, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    iput p3, p0, Lorg/schabi/newpipe/RouterActivity;->selectedPreviously:I

    .line 463
    iput p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    if-ne p3, p1, :cond_1

    .line 466
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showDialog$6(Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 425
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 424
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 426
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 428
    iget-object p2, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p5, p2, :cond_0

    .line 432
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const p3, 0x7f12038d

    .line 433
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 434
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDialog$7(Landroid/content/DialogInterface;)V
    .locals 0

    .line 445
    iget-boolean p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsDownload:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsAddToPlaylist:Z

    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDialog$8(Landroid/widget/RadioGroup;Landroid/content/DialogInterface;)V
    .locals 1

    .line 451
    iget-object p2, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 452
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 451
    :goto_0
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/RouterActivity;->setDialogButtonsState(Landroidx/appcompat/app/AlertDialog;Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$9(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 455
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity;->setDialogButtonsState(Landroidx/appcompat/app/AlertDialog;Z)V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 290
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 292
    const-string p2, ""

    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$5(Landroid/content/DialogInterface;)V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    return-void
.end method

.method private openAddToPlaylistDialog()V
    .locals 3

    .line 853
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->-$$Nest$mopenAddToPlaylistDialog(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;ILjava/lang/String;)V

    return-void
.end method

.method private openDownloadDialog()V
    .locals 3

    .line 857
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->-$$Nest$mopenDownloadDialog(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;ILjava/lang/String;)V

    return-void
.end method

.method private setDialogButtonsState(Landroidx/appcompat/app/AlertDialog;Z)V
    .locals 2

    const/4 v0, -0x2

    .line 592
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x1

    .line 593
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 599
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDialog(Ljava/util/List;)V
    .locals 14

    .line 414
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/content/Context;

    move-result-object v1

    .line 417
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 420
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;

    move-result-object v3

    .line 421
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->list:Landroid/widget/RadioGroup;

    .line 423
    new-instance v5, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v4, p1, v0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;)V

    .line 438
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f120391

    .line 439
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 440
    invoke-virtual {v3}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 441
    invoke-virtual {v3, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v7, 0x7f120217

    .line 442
    invoke-virtual {v3, v7, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v7, 0x7f120026

    .line 443
    invoke-virtual {v3, v7, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 444
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 449
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 451
    new-instance v5, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v4}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 454
    new-instance v3, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 456
    new-instance v3, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v4, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;)V

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v7, 0x3039

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 472
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    move-result-object v12

    .line 473
    invoke-virtual {v12}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->getRoot()Landroid/widget/RadioButton;

    move-result-object v12

    .line 474
    iget-object v13, v8, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->description:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget v8, v8, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->icon:I

    .line 476
    invoke-static {v1, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 475
    invoke-virtual {v12, v8, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 478
    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    add-int/lit8 v8, v7, 0x1

    .line 479
    invoke-virtual {v12, v7}, Landroid/view/View;->setId(I)V

    .line 480
    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v10, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v7, v8

    goto :goto_0

    .line 486
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    if-ne v1, v10, :cond_2

    const v1, 0x7f12038e

    .line 488
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 491
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 492
    iget-object v1, v1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iput v9, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 500
    :cond_2
    :goto_2
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-static {v0, v10, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    if-eq p1, v10, :cond_3

    .line 502
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 504
    :cond_3
    iget p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    iput p1, p0, Lorg/schabi/newpipe/RouterActivity;->selectedPreviously:I

    .line 506
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 508
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 509
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroid/app/Dialog;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected getThemeWrapperContext()Landroid/content/Context;
    .locals 2

    .line 587
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f130177

    goto :goto_0

    :cond_0
    const v1, 0x7f130149

    .line 588
    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->setDayNightMode(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1301c5

    goto :goto_0

    :cond_0
    const v0, 0x7f1301c4

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$1;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 167
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/RouterActivity;->getUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->handleText()V

    .line 172
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 207
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 209
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 877
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 878
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 880
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x30a

    if-ne p1, p2, :cond_2

    .line 885
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity;->openDownloadDialog()V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 181
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onSuccess()V
    .locals 11

    .line 300
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 303
    invoke-direct {p0, v2, v3}, Lorg/schabi/newpipe/RouterActivity;->getChoicesForService(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/StreamingService$LinkType;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f12038d

    .line 304
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12038c

    .line 305
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/util/List;Ljava/lang/String;)V

    const v2, 0x7f120109

    const v3, 0x7f120020

    const v4, 0x7f120437

    .line 308
    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->isAvailableAndSelected([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v1}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->getSelectedChoiceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void

    :cond_0
    const v2, 0x7f1204c4

    const v3, 0x7f120059

    const v5, 0x7f12037c

    const v6, 0x7f12013f

    .line 316
    filled-new-array {v2, v3, v5, v6}, [I

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->isAvailableAndSelected([I)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_a

    .line 322
    invoke-virtual {v1}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->getSelectedChoiceKey()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f1204b5

    .line 325
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const v10, 0x7f1204b3

    .line 327
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    .line 332
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 334
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 336
    iget-object v5, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    sget-object v6, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq v5, v6, :cond_5

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    :cond_4
    const v0, 0x7f1201a7

    .line 340
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 347
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getMediaCapabilities()Ljava/util/List;

    move-result-object v0

    if-eqz v9, :cond_6

    .line 350
    sget-object v5, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    if-eqz v2, :cond_7

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 352
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 353
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 354
    :cond_8
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_9
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_a
    invoke-virtual {v1}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->getAvailableChoices()Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c

    if-eq v1, v8, :cond_b

    .line 371
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->showDialog(Ljava/util/List;)V

    return-void

    .line 365
    :cond_b
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    iget-object v0, v0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_c
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    return-void
.end method

.method protected showUnsupportedUrlDialog(Ljava/lang/String;)V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1204a7

    .line 286
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204a8

    .line 287
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080152

    .line 288
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    const v2, 0x7f120335

    .line 289
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    const p1, 0x7f120407

    .line 291
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120070

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 294
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
