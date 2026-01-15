.class public final Lorg/schabi/newpipe/about/LicenseFragment;
.super Landroidx/fragment/app/Fragment;
.source "LicenseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/about/LicenseFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/about/LicenseFragment$Companion;

.field private static final NEWPIPE_SOFTWARE_COMPONENT:Lorg/schabi/newpipe/about/SoftwareComponent;


# instance fields
.field private activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private softwareComponents:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$13Lq9uAQtKOjY4xDxV47jYF7AL0(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->onCreateView$lambda$0(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J-SnJbVYseilH5MjkRXnnxkQpio(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->showLicense$lambda$0(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uespLpOx1v1uiM_nFOLfModeOsE(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/about/LicenseFragment;->onCreateView$lambda$1(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/schabi/newpipe/about/LicenseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/about/LicenseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/about/LicenseFragment;->Companion:Lorg/schabi/newpipe/about/LicenseFragment$Companion;

    .line 126
    new-instance v2, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 131
    sget-object v7, Lorg/schabi/newpipe/about/StandardLicenses;->GPL3:Lorg/schabi/newpipe/about/License;

    .line 132
    const-string v8, "0.28.1"

    .line 126
    const-string v3, "NewPipe"

    const-string v4, "2014-2023"

    const-string v5, "Team NewPipe"

    const-string v6, "https://newpipe.net/"

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;)V

    sput-object v2, Lorg/schabi/newpipe/about/LicenseFragment;->NEWPIPE_SOFTWARE_COMPONENT:Lorg/schabi/newpipe/about/SoftwareComponent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getNEWPIPE_SOFTWARE_COMPONENT$cp()Lorg/schabi/newpipe/about/SoftwareComponent;
    .locals 1

    .line 28
    sget-object v0, Lorg/schabi/newpipe/about/LicenseFragment;->NEWPIPE_SOFTWARE_COMPONENT:Lorg/schabi/newpipe/about/SoftwareComponent;

    return-object v0
.end method

.method public static final synthetic access$setActiveSoftwareComponent$p(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment;->activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    return-void
.end method

.method private static final onCreateView$lambda$0(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 55
    sget-object v0, Lorg/schabi/newpipe/about/LicenseFragment;->NEWPIPE_SOFTWARE_COMPONENT:Lorg/schabi/newpipe/about/SoftwareComponent;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/about/LicenseFragment;->showLicense(Lorg/schabi/newpipe/about/SoftwareComponent;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private static final onCreateView$lambda$1(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p2, p0, Lorg/schabi/newpipe/about/LicenseFragment;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 72
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->showLicense(Lorg/schabi/newpipe/about/SoftwareComponent;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    .line 71
    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final showLicense(Lorg/schabi/newpipe/about/SoftwareComponent;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 3

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->empty()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment;->activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 95
    new-instance v1, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 96
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 97
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 98
    new-instance v2, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;

    invoke-direct {v2, v0, p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static final showLicense$lambda$0(Landroid/content/Context;Lorg/schabi/newpipe/about/SoftwareComponent;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-virtual {p1}, Lorg/schabi/newpipe/about/SoftwareComponent;->getLicense()Lorg/schabi/newpipe/about/License;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragmentHelperKt;->getFormattedLicense(Landroid/content/Context;Lorg/schabi/newpipe/about/License;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lorg/schabi/newpipe/about/SoftwareComponent;

    if-eqz v0, :cond_0

    const-string v3, "components"

    .line 8
    invoke-static {v0, v3, v2}, Landroidx/core/os/BundleCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 35
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1056
    new-instance v3, Lorg/schabi/newpipe/about/LicenseFragment$onCreate$$inlined$sortedBy$1;

    invoke-direct {v3}, Lorg/schabi/newpipe/about/LicenseFragment$onCreate$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment;->softwareComponents:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 38
    const-string v0, "ACTIVE_SOFTWARE_COMPONENT"

    invoke-static {p1, v0, v2}, Landroidx/core/os/BundleCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 37
    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment;->activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 52
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v2, v0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->licensesAppReadLicense:Landroid/widget/Button;

    new-instance v3, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/about/LicenseFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lorg/schabi/newpipe/about/LicenseFragment;->softwareComponents:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "softwareComponents"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "getRoot(...)"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 60
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/ItemSoftwareComponentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemSoftwareComponentBinding;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v6, v5, Lorg/schabi/newpipe/databinding/ItemSoftwareComponentBinding;->name:Landroid/widget/TextView;

    invoke-virtual {v3}, Lorg/schabi/newpipe/about/SoftwareComponent;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v6, v5, Lorg/schabi/newpipe/databinding/ItemSoftwareComponentBinding;->copyright:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v3}, Lorg/schabi/newpipe/about/SoftwareComponent;->getYears()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v3}, Lorg/schabi/newpipe/about/SoftwareComponent;->getCopyrightOwner()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v3}, Lorg/schabi/newpipe/about/SoftwareComponent;->getLicense()Lorg/schabi/newpipe/about/License;

    move-result-object v9

    invoke-virtual {v9}, Lorg/schabi/newpipe/about/License;->getAbbreviation()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, p3

    const/4 v7, 0x1

    aput-object v8, v10, v7

    const/4 v7, 0x2

    aput-object v9, v10, v7

    const v7, 0x7f1200ba

    .line 62
    invoke-virtual {p0, v7, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v5}, Lorg/schabi/newpipe/databinding/ItemSoftwareComponentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    new-instance v4, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lorg/schabi/newpipe/about/LicenseFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->licensesSoftwareComponents:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment;->activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/schabi/newpipe/about/LicenseFragment;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->showLicense(Lorg/schabi/newpipe/about/SoftwareComponent;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 79
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 44
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment;->activeSoftwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    if-eqz v0, :cond_0

    const-string v1, "ACTIVE_SOFTWARE_COMPONENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
