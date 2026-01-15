.class public final Lorg/schabi/newpipe/local/feed/FeedFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "FeedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;,
        Lorg/schabi/newpipe/local/feed/FeedFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/local/feed/FeedState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;


# instance fields
.field private _feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isRefreshing:Z

.field private lastNewItemsCount:I

.field public listState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

.field private oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

.field private onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private updateListViewModeOnResume:Z

.field private viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;


# direct methods
.method public static synthetic $r8$lambda$2eRVNjDtM-8TISS_TVNMeEXkfU4(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->onCreate$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BF2MoZWdAWdfU8DDOGUcvHGhDh8(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors$lambda$0$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D7hJQC_9iwKXFrMvghTpr_FF65o(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/schabi/newpipe/databinding/ListStreamItemBinding;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->highlightNewItemsAfter$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/schabi/newpipe/databinding/ListStreamItemBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIPB_HDY1No361azQowhvbBPqYE(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->initListeners$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K95pkgPAOEQOkiXt4o5mAfgBID8(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYA-35aNW-gKP0rP9GfxmNxR8DE(Lorg/schabi/newpipe/local/feed/FeedFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showStreamVisibilityDialog$lambda$1(Lorg/schabi/newpipe/local/feed/FeedFragment;[ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L_byAGiP-ATK6GRH42o1TiyJSDk(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/local/feed/FeedState;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->onViewCreated$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/local/feed/FeedState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lek1pzhYrD98Sqm3li07xiqSw04(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->initListeners$lambda$2(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpCD1aHtQERrAJyTTH1CO6YgDEw(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->highlightNewItemsAfter$lambda$0(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YJZp5bDsx4DnUTMw1IWSWIKZvWk(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleFeedNotAvailable$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zsp22QEr9SgK_AH4rcMCjZWmnZg(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/feed/FeedFragment;->onOptionsItemSelected$lambda$0(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_tkSeYUssRimjsvNslOYX9ZmjhU([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showStreamVisibilityDialog$lambda$0([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kFRgix75CmNKSu9r7A1wFnBUO8g(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->highlightNewItemsAfter$lambda$1(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kGanrJL79fkg3vUjBJ20C_17kxI(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleLoadedState$lambda$1(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lc22bzEiHWLmxnQMGcvaS8Mn0Qg(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showNewItemsLoaded$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$loXR8UuleQ6h3ki5Oi5rNKlgohQ(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleFeedNotAvailable$lambda$1(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8eaQa05Lo3FUt8YlvZgfCndcaM(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->initListeners$lambda$1(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 91
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 385
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    return-void
.end method

.method public static final synthetic access$getFM(Lorg/schabi/newpipe/local/feed/FeedFragment;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p$s-973077970(Lorg/schabi/newpipe/local/feed/FeedFragment;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$handleFeedNotAvailable(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleFeedNotAvailable(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Throwable;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$isRefreshing$p(Lorg/schabi/newpipe/local/feed/FeedFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    return p0
.end method

.method public static final synthetic access$showInfoItemDialog(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static final synthetic access$tryGetNewItemsLoadedButton(Lorg/schabi/newpipe/local/feed/FeedFragment;)Landroid/widget/Button;
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private final getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final handleErrorState(Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;)Z
    .locals 8

    .line 453
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideLoading()V

    const/4 p1, 0x0

    return p1

    .line 457
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;->getError()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const-string v3, "Loading feed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final handleFeedNotAvailable(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 5

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1201d4

    .line 503
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 502
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 506
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1201bc

    .line 507
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 508
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p1, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;)V

    const p3, 0x7f1204a5

    invoke-virtual {v3, p3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v3, 0x7f120070

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p3, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 516
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const p1, 0x7f1201bd

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    instance-of v2, p2, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    const-string v3, "\n"

    if-eqz v2, :cond_0

    const p2, 0x7f1201bf

    .line 518
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 519
    :cond_0
    instance-of v2, p2, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const p2, 0x7f1201be

    .line 521
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 522
    new-instance p2, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;

    invoke-direct {p2, v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda15;-><init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    const v0, 0x7f1201d1

    invoke-virtual {p3, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 527
    :cond_1
    check-cast p2, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 528
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    :cond_2
    :goto_0
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final handleFeedNotAvailable$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 509
    new-instance p3, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "requireContext(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result p4

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p4, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->deleteSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    .line 512
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors(Ljava/util/List;)V

    return-void
.end method

.method private static final handleFeedNotAvailable$lambda$1(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 523
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const p2, 0x7f1201d4

    .line 524
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final handleItemsErrors(Ljava/util/List;)V
    .locals 9

    .line 1879
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Ljava/lang/Throwable;

    .line 464
    instance-of v4, v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    if-eqz v4, :cond_1

    .line 465
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    if-eqz v4, :cond_1

    .line 467
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 468
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v3

    .line 472
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v3

    .line 473
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v3

    .line 474
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;

    invoke-direct {v4, p0, v2, p1, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;Ljava/util/List;I)V

    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    invoke-virtual {v3, v4, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 467
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    .line 490
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 492
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_3
    return-void
.end method

.method private static final handleItemsErrors$lambda$0$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 2

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object p0

    .line 470
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->getSubscriptionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscription(J)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object p0

    return-object p0
.end method

.method private final handleLoadedState(Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;)V
    .locals 7

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/schabi/newpipe/local/feed/FeedFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 410
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    goto :goto_1

    .line 409
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->CARD:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    goto :goto_1

    .line 408
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 412
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getItems()Ljava/util/List;

    move-result-object v2

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 412
    invoke-virtual {v3, v0}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->setItemVersion(Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;)V

    goto :goto_2

    .line 415
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 417
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const-string v2, "groupAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getItems()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;-><init>(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0, v5}, Lcom/xwray/groupie/GroupAdapter;->updateAsync(Ljava/util/List;ZLcom/xwray/groupie/OnAsyncUpdateListener;)V

    .line 423
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    if-eqz v2, :cond_6

    .line 424
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 425
    :cond_5
    iput-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 428
    :cond_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getNotLoadedCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 429
    :goto_3
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v4, "refreshSubtitleText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    const/16 v4, 0x8

    .line 257
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_9

    .line 431
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 433
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getNotLoadedCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const v0, 0x7f1201cb

    .line 431
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_9
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getOldestUpdate()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getOldestUpdate()Lj$/time/OffsetDateTime;

    move-result-object v0

    if-nez v0, :cond_b

    .line 441
    :cond_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getItemsErrors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors(Ljava/util/List;)V

    .line 443
    :cond_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getOldestUpdate()Lj$/time/OffsetDateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 445
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 446
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showEmptyState()V

    return-void

    .line 448
    :cond_c
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideLoading()V

    return-void
.end method

.method private static final handleLoadedState$lambda$1(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 419
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->highlightNewItemsAfter(Lj$/time/OffsetDateTime;)V

    :cond_0
    return-void
.end method

.method private final handleProgressState(Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;)V
    .locals 7

    .line 357
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showLoading()V

    .line 359
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getCurrentProgress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 360
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getMaxProgress()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getCurrentProgress()I

    move-result v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getMaxProgress()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getProgressMessage()I

    move-result v4

    if-lez v4, :cond_2

    .line 365
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getProgressMessage()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 367
    :cond_2
    const-string v4, "\u221e/\u221e"

    .line 362
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    .line 371
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getMaxProgress()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getCurrentProgress()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 370
    :cond_4
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 372
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 374
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->getMaxProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method private final hideNewItemsLoaded(ZJ)V
    .locals 11

    .line 634
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    if-eqz p1, :cond_1

    .line 636
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v8, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-wide v6, p2

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void

    .line 647
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic hideNewItemsLoaded$default(Lorg/schabi/newpipe/local/feed/FeedFragment;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 633
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded(ZJ)V

    return-void
.end method

.method private static final hideNewItemsLoaded$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 1

    .line 643
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 257
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final highlightNewItemsAfter(Lj$/time/OffsetDateTime;)V
    .locals 11

    .line 558
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    const/4 v1, 0x0

    const-string v2, "groupAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/xwray/groupie/GroupAdapter;->getItemCount()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 559
    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v7, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_1
    invoke-virtual {v7, v5}, Lcom/xwray/groupie/GroupAdapter;->getItem(I)Lcom/xwray/groupie/Item;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type org.schabi.newpipe.local.feed.item.StreamItem"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 561
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 562
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    invoke-direct {v10}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>()V

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 567
    invoke-virtual {v7}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamWithState()Lorg/schabi/newpipe/database/stream/StreamWithState;

    move-result-object v10

    invoke-virtual {v10}, Lorg/schabi/newpipe/database/stream/StreamWithState;->getStream()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10, p1}, Lj$/time/OffsetDateTime;->isAfter(Lj$/time/OffsetDateTime;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 570
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v10, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 571
    new-instance v10, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda11;

    invoke-direct {v10}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda11;-><init>()V

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 590
    :cond_3
    :goto_1
    new-instance v10, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;

    invoke-direct {v10, v9, v8}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v7, v10}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->setExecBindEnd(Ljava/util/function/Consumer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 600
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 602
    :cond_5
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->lastNewItemsCount:I

    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Lcom/xwray/groupie/GroupAdapter;->getItemCount()I

    move-result v1

    invoke-static {v6, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 600
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    if-lez v6, :cond_7

    .line 606
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showNewItemsLoaded()V

    .line 609
    :cond_7
    iput v6, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->lastNewItemsCount:I

    return-void
.end method

.method private static final highlightNewItemsAfter$lambda$0(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x101030e

    .line 563
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static final highlightNewItemsAfter$lambda$1(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f040184

    .line 575
    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x101030e

    .line 576
    invoke-static {p0, v2}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    .line 573
    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static final highlightNewItemsAfter$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/schabi/newpipe/databinding/ListStreamItemBinding;)V
    .locals 2

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 592
    iget-object v1, p2, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object p0, p2, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private static final initListeners$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->reloadContent()V

    return-void
.end method

.method private static final initListeners$lambda$1(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->reloadContent()V

    return-void
.end method

.method private static final initListeners$lambda$2(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p0

    .line 196
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded$default(Lorg/schabi/newpipe/local/feed/FeedFragment;ZJILjava/lang/Object;)V

    .line 197
    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object p0

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static final newInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/feed/FeedFragment;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;->newInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/feed/FeedFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120232

    .line 120
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateListViewModeOnResume:Z

    :cond_0
    return-void
.end method

.method private static final onOptionsItemSelected$lambda$0(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 229
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const p3, 0x7f1201d4

    .line 230
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/local/feed/FeedState;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setupListViewMode()V
    .locals 6

    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    const/4 v1, 0x0

    const-string v2, "groupAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ThemeHelper;->shouldUseGridLayout(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ThemeHelper;->getGridSpanCountStreams(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xwray/groupie/GroupAdapter;->setSpanCount(I)V

    .line 186
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_2
    invoke-virtual {v5}, Lcom/xwray/groupie/GroupAdapter;->getSpanCount()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 187
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Lcom/xwray/groupie/GroupAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 186
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    invoke-direct {v2, v1, v0, p0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-virtual {v2}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showNewItemsLoaded()V
    .locals 10

    .line 613
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 614
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    new-instance v7, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x64

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->slideUp$default(Landroid/view/View;JJFLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final showNewItemsLoaded$lambda$0(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 3

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->hasAnimationsAnimatorDurationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-wide/16 v1, 0x2710

    .line 626
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded(ZJ)V

    :cond_0
    return-void
.end method

.method private final showStreamVisibilityDialog()V
    .locals 7

    const v0, 0x7f1201c9

    .line 245
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1201c6

    .line 246
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1201c8

    .line 247
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    const-string v2, "viewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getShowPlayedItemsFromPreferences()Z

    move-result v1

    .line 252
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    invoke-virtual {v4}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getShowPartiallyPlayedItemsFromPreferences()Z

    move-result v4

    .line 253
    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    invoke-virtual {v5}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getShowFutureItemsFromPreferences()Z

    move-result v2

    const/4 v5, 0x3

    new-array v5, v5, [Z

    const/4 v6, 0x0

    aput-boolean v1, v5, v6

    const/4 v1, 0x1

    aput-boolean v4, v5, v1

    const/4 v1, 0x2

    aput-boolean v2, v5, v1

    .line 256
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201bb

    .line 257
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 258
    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v5}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda8;-><init>([Z)V

    invoke-virtual {v1, v0, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;[Z)V

    const v2, 0x7f120332

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    .line 266
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showStreamVisibilityDialog$lambda$0([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    .line 259
    aput-boolean p3, p0, p2

    return-void
.end method

.method private static final showStreamVisibilityDialog$lambda$1(Lorg/schabi/newpipe/local/feed/FeedFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 2

    .line 262
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    const/4 p3, 0x0

    const-string v0, "viewModel"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p3

    :cond_0
    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {p2, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->setSaveShowPlayedItems(Z)V

    .line 263
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p3

    :cond_1
    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-virtual {p2, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->setSaveShowPartiallyPlayedItems(Z)V

    .line 264
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p3, p0

    :goto_0
    const/4 p0, 0x2

    aget-boolean p0, p1, p0

    invoke-virtual {p3, p0}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->setSaveShowFutureItems(Z)V

    return-void
.end method

.method private final tryGetNewItemsLoadedButton()Landroid/widget/Button;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final updateRefreshViewState()V
    .locals 4

    .line 544
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 546
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/schabi/newpipe/util/Localization;->relativeTime(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "\u2014"

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v1, 0x7f1201c2

    .line 544
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateRelativeTimeViews()V
    .locals 4

    .line 536
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateRefreshViewState()V

    .line 537
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    const/4 v1, 0x0

    const-string v2, "groupAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 538
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/xwray/groupie/GroupAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    .line 539
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 537
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleError()V
    .locals 11

    .line 348
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 349
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "itemsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 350
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    const-string v0, "refreshRootView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 351
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v0, "loadingProgressText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 352
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 353
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleProgressState(Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;)V

    goto :goto_0

    .line 340
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleLoadedState(Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;)V

    goto :goto_0

    .line 341
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleErrorState(Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 344
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateRefreshViewState()V

    return-void

    .line 338
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public hideLoading()V
    .locals 11

    .line 321
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 322
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "itemsList"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 323
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    const-string v0, "refreshRootView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 324
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v0, "loadingProgressText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 325
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 326
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 192
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    .line 193
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 195
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    const-string v2, "ARG_GROUP_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "ARG_GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 119
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 124
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f1201e0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0f0006

    .line 212
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 282
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 285
    iput-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 288
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 291
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 3

    .line 271
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 273
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 300
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 302
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 303
    iput-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 304
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0239

    if-ne v0, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f1201d4

    .line 220
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f1201d1

    goto :goto_0

    :cond_0
    const v1, 0x7f1201d2

    .line 226
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1201d3

    .line 227
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 228
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Z)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    .line 236
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a023a

    if-ne v0, v1, :cond_2

    .line 237
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showStreamVisibilityDialog()V

    .line 240
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 165
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 166
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 170
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 171
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateRelativeTimeViews()V

    .line 173
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateListViewModeOnResume:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateListViewModeOnResume:Z

    .line 176
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->setupListViewMode()V

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lorg/schabi/newpipe/local/feed/FeedState;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 135
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    invoke-virtual {p1, p2, v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getFactory(Landroid/content/Context;J)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p1

    .line 138
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 139
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->getStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    new-instance p1, Lcom/xwray/groupie/GroupieAdapter;

    invoke-direct {p1}, Lcom/xwray/groupie/GroupieAdapter;-><init>()V

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    invoke-virtual {p1, v0}, Lcom/xwray/groupie/GroupAdapter;->setOnItemClickListener(Lcom/xwray/groupie/OnItemClickListener;)V

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    invoke-virtual {p1, v0}, Lcom/xwray/groupie/GroupAdapter;->setOnItemLongClickListener(Lcom/xwray/groupie/OnItemLongClickListener;)V

    .line 141
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 146
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 160
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v0, :cond_1

    const-string v0, "groupAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->setupListViewMode()V

    return-void
.end method

.method public reloadContent()V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    .line 667
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded$default(Lorg/schabi/newpipe/local/feed/FeedFragment;ZJILjava/lang/Object;)V

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 670
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    const-string v3, "FeedLoadService.EXTRA_GROUP_ID"

    iget-wide v4, v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 669
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const/4 v1, 0x0

    .line 674
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    return-void
.end method

.method public showEmptyState()V
    .locals 11

    .line 330
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showEmptyState()V

    .line 331
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "itemsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 332
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    const-string v0, "refreshRootView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 333
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v0, "loadingProgressText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 334
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showLoading()V
    .locals 11

    .line 312
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 313
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "itemsList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 314
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    const-string v0, "refreshRootView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 315
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v0, "loadingProgressText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->getFeedBinding()Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 317
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    return-void
.end method
