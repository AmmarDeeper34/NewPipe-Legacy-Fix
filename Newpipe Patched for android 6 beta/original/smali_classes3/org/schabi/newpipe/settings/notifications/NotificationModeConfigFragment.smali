.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotificationModeConfigFragment.kt"


# instance fields
.field private _binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

.field private adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private loader:Lio/reactivex/rxjava3/disposables/Disposable;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$GbWQNHBfFQcCesez1OGznrb9zPg(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->onViewCreated$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private final getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V

    return-void
.end method

.method private final toggleAll()V
    .locals 5

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v3, "getCurrentList(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v4, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 101
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final updateNotificationMode(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 106
    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    if-nez v1, :cond_0

    const-string v1, "subscriptionManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getServiceId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateNotificationMode(ILjava/lang/String;I)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 107
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f000b

    .line 82
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 51
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 71
    iput-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->_binding:Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0059

    if-ne v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->toggleAll()V

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    new-instance p2, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;)V

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;)V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 61
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->getBinding()Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelsNotificationsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    const-string v0, "adapter"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 63
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    if-nez p1, :cond_2

    const-string p1, "subscriptionManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptions()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 64
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->adapter:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    new-instance p2, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;

    invoke-direct {p2, v1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
