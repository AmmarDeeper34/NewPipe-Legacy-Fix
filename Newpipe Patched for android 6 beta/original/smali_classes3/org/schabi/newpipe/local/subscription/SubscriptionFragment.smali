.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "SubscriptionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

.field private static final JSON_MIME_TYPE:Ljava/lang/String;


# instance fields
.field private _binding:Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

.field private carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

.field public feedGroupsCarouselState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

.field private final groupAdapter:Lcom/xwray/groupie/GroupAdapter;

.field public itemsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final listenerChannelItem:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;

.field private final requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private final requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field private final subscriptionsSection:Lcom/xwray/groupie/Section;

.field private viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;


# direct methods
.method public static synthetic $r8$lambda$0JaEPl2a6CbsNo4zArGcq-1cbYw(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->buildImportExportMenu$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1zQqaE_V_ekYNpJ3qWVvFja6ap4(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->buildImportExportMenu$lambda$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CeJDN4pdUFEo_YvBMUoiwBdz6-s(Ljava/lang/Runnable;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setClickListenerToMenuItem$lambda$0(Ljava/lang/Runnable;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aAuiy0ko_2Q4OWHEqQl62hFmCoo(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setupInitialLayout$lambda$0$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iXv0a-kilsORf5ep5PGkW-Ou77E(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->initViews$lambda$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mgL4QNAEh7JWd3UbeMIB_BcMxBg(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->deleteChannel$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3q4VeWyJzO3ARGX1XNAvDGgfjs(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->handleFeedGroups$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovs1ZXwjYCpml_VWPG_xtGdYnws(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->buildImportExportMenu$lambda$2(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-pHa-SucIGhHqClEfn1NNROvWA(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setupInitialLayout$lambda$0$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNRxkFSqfrcCDxwg8T52XS6U88E(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->initViews$lambda$2(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$raBOBIURiOh1OJJGLWjj-vKohE0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->showLongTapDialog$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 464
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 465
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    .line 464
    :cond_0
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 75
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 77
    new-instance v0, Lcom/xwray/groupie/GroupAdapter;

    invoke-direct {v0}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 81
    new-instance v0, Lcom/xwray/groupie/Section;

    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    .line 84
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 86
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestImportLauncher$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestImportLauncher$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 374
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->listenerChannelItem:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;

    return-void
.end method

.method public static final synthetic access$getFM(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openReorderDialog(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->openReorderDialog()V

    return-void
.end method

.method public static final synthetic access$requestExportResult(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestExportResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static final synthetic access$requestImportResult(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestImportResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static final synthetic access$showLongTapDialog(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->showLongTapDialog(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method

.method public static final synthetic access$toggleListViewMode(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->toggleListViewMode()V

    return-void
.end method

.method private final addMenuItemToSubmenu(Landroid/view/SubMenu;ILjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .line 173
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "add(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setClickListenerToMenuItem(Landroid/view/MenuItem;Ljava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method private final addMenuItemToSubmenu(Landroid/view/SubMenu;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .line 181
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "add(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setClickListenerToMenuItem(Landroid/view/MenuItem;Ljava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method private final buildImportExportMenu(Landroid/view/Menu;)V
    .locals 5

    const v0, 0x7f120205

    .line 144
    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    const v2, 0x7f120394

    invoke-direct {p0, v0, v2, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->addMenuItemToSubmenu(Landroid/view/SubMenu;ILjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0800e9

    .line 147
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 149
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 150
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->getSupportedSources()Ljava/util/List;

    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-direct {p0, v0, v3, v4}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->addMenuItemToSubmenu(Landroid/view/SubMenu;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v3

    .line 158
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f1201a5

    .line 162
    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    const v1, 0x7f1201dc

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->addMenuItemToSubmenu(Landroid/view/SubMenu;ILjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f08014a

    .line 165
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method private static final buildImportExportMenu$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->onImportPreviousSelected()V

    return-void
.end method

.method private static final buildImportExportMenu$lambda$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 156
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->onImportFromServiceSelected(I)V

    return-void
.end method

.method private static final buildImportExportMenu$lambda$2(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->onExportSelected()V

    return-void
.end method

.method private final deleteChannel(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 365
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    if-nez v1, :cond_0

    const-string v1, "subscriptionManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v3, "getUrl(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->deleteSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 364
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private static final deleteChannel$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 2

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120084

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final handleFeedGroups(Ljava/util/List;Z)V
    .locals 3

    .line 416
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "feedGroupsCarousel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 418
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    .line 421
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final handleFeedGroups$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;ZLjava/util/List;)V
    .locals 6

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    const-string v1, "feedGroupsCarousel"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->setListViewMode(Z)V

    .line 429
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    const-string v3, "feedGroupsSortMenuItem"

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->setShowSortButton(Z)V

    .line 430
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->setListViewMode(Z)V

    .line 431
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xwray/groupie/Item;->notifyChanged(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xwray/groupie/Item;->notifyChanged(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    if-nez v0, :cond_7

    const-string v0, "carouselAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v0

    .line 436
    :goto_1
    invoke-virtual {v2}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 437
    const-string v0, "getString(...)"

    const v1, 0x7f120023

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_8

    .line 438
    new-instance p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;

    invoke-direct {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 439
    new-instance p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->WHATS_NEW:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-direct {p1, v3, v4, p0, v0}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    invoke-virtual {v2, p1}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    goto :goto_2

    .line 441
    :cond_8
    new-instance p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;

    invoke-direct {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 442
    new-instance p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->WHATS_NEW:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-direct {p1, v3, v4, p0, v0}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    invoke-virtual {v2, p1}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 444
    :goto_2
    invoke-virtual {v2, p2}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private static final initViews$lambda$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->handleResult(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViews$lambda$2(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 264
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->handleFeedGroups(Ljava/util/List;Z)V

    .line 266
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onExportSelected()V
    .locals 5

    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newpipe_subscriptions_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 215
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private final onImportFromServiceSelected(I)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 197
    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSubscriptionsImportFragment(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method private final onImportPreviousSelected()V
    .locals 4

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 203
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 201
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private final openReorderDialog()V
    .locals 3

    .line 222
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final requestExportResult(Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 226
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 228
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v3, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "key_file_path"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method private final requestImportResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 238
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v1, "key_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 236
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final setClickListenerToMenuItem(Landroid/view/MenuItem;Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 1

    .line 188
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p1
.end method

.method private static final setClickListenerToMenuItem$lambda$0(Ljava/lang/Runnable;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method private final setupInitialLayout()V
    .locals 14

    .line 272
    new-instance v0, Lcom/xwray/groupie/Section;

    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    .line 273
    new-instance v1, Lcom/xwray/groupie/GroupAdapter;

    invoke-direct {v1}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 275
    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v2}, Lcom/xwray/groupie/GroupAdapter;->setOnItemClickListener(Lcom/xwray/groupie/OnItemClickListener;)V

    .line 287
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    const-string v2, "carouselAdapter"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v4}, Lcom/xwray/groupie/GroupAdapter;->setOnItemLongClickListener(Lcom/xwray/groupie/OnItemLongClickListener;)V

    .line 303
    new-instance v1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 304
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    .line 305
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    const-string v5, "viewModel"

    if-nez v2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    move-result v2

    .line 303
    invoke-direct {v1, v4, v2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;-><init>(Lcom/xwray/groupie/GroupAdapter;Z)V

    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 308
    new-instance v6, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    const v1, 0x7f1201ba

    .line 309
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v8, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$3;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$3;-><init>(Ljava/lang/Object;)V

    .line 311
    new-instance v9, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$4;

    invoke-direct {v9, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$4;-><init>(Ljava/lang/Object;)V

    .line 312
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    if-nez v2, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    invoke-virtual {v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    move-result v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 308
    invoke-direct/range {v6 .. v13}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 315
    new-instance v2, Lcom/xwray/groupie/Section;

    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    if-nez v4, :cond_4

    const-string v4, "feedGroupsCarousel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/xwray/groupie/Section;-><init>(Lcom/xwray/groupie/Group;Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/xwray/groupie/Section;->add(Lcom/xwray/groupie/Group;)V

    .line 316
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {v2}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 317
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {v2, v0}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 320
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    invoke-direct {v2}, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xwray/groupie/Section;->setPlaceholder(Lcom/xwray/groupie/Group;)V

    .line 321
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xwray/groupie/Section;->setHideWhenEmpty(Z)V

    .line 323
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 324
    new-instance v2, Lcom/xwray/groupie/Section;

    .line 325
    new-instance v3, Lorg/schabi/newpipe/local/subscription/item/Header;

    const v4, 0x7f120482

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/local/subscription/item/Header;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 324
    invoke-direct {v2, v3, v1}, Lcom/xwray/groupie/Section;-><init>(Lcom/xwray/groupie/Group;Ljava/util/Collection;)V

    .line 323
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    return-void
.end method

.method private static final setupInitialLayout$lambda$0$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    return-void

    .line 279
    :cond_0
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    return-void

    .line 281
    :cond_1
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 282
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    invoke-static {p1, v1, v2, v0, v3}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance$default(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;JILjava/lang/Object;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_2
    instance-of p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;

    if-eqz p1, :cond_3

    .line 284
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    invoke-static {p1, v1, v2, v0, v3}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance$default(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;JILjava/lang/Object;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final setupInitialLayout$lambda$0$1(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lcom/xwray/groupie/Item;Landroid/view/View;)Z
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    invoke-virtual {v2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->getGroupId()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 289
    :cond_0
    instance-of v2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    if-eqz v2, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    invoke-virtual {v3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->getGroupId()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 296
    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->getGroupId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 298
    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->getGroupId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final showLongTapDialog(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 5

    const v0, 0x7f120407

    .line 337
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120335

    .line 338
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204a5

    .line 339
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogTitleBinding;

    move-result-object v2

    const-string v3, "inflate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 354
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->itemTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 359
    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showLongTapDialog$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->deleteChannel(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 344
    invoke-static {p0, p2, p3, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final toggleListViewMode()V
    .locals 4

    .line 332
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->setListViewMode(Z)V

    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)V
    .locals 9

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 387
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    if-eqz v0, :cond_4

    .line 388
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;->getSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xwray/groupie/Group;

    .line 389
    instance-of v2, v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    if-eqz v2, :cond_0

    .line 390
    check-cast v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->listenerChannelItem:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->setGesturesListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    .line 391
    sget-object v2, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    sget-object v2, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    goto :goto_1

    .line 394
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 391
    :goto_1
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->setItemVersion(Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;->getSubscriptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xwray/groupie/Section;->update(Ljava/util/Collection;)V

    .line 400
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xwray/groupie/Section;->setHideWhenEmpty(Z)V

    .line 402
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    if-eqz p1, :cond_5

    .line 403
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_3
    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    return-void

    .line 407
    :cond_4
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    if-eqz v0, :cond_6

    .line 408
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 409
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->getError()Ljava/lang/Throwable;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v4, "Subscriptions"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_5
    return-void

    .line 386
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public hideLoading()V
    .locals 11

    .line 459
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 460
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "itemsList"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 251
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    .line 253
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    sget-object p2, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/ThemeHelper;->getGridSpanCountChannels(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xwray/groupie/GroupAdapter;->setSpanCount(I)V

    .line 254
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {v1}, Lcom/xwray/groupie/GroupAdapter;->getSpanCount()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {v0}, Lcom/xwray/groupie/GroupAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 254
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 257
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 258
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 260
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 261
    const-string v0, "viewModel"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 262
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getFeedGroupsLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 268
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setupInitialLayout()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 106
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 137
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_1

    const v0, 0x7f120482

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->buildImportExportMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0065

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 120
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 114
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 115
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    if-nez v0, :cond_1

    const-string v0, "feedGroupsCarousel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    return-void
.end method

.method public showLoading()V
    .locals 11

    .line 454
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 455
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "itemsList"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method protected startLoading(Z)V
    .locals 0

    .line 0
    return-void
.end method
