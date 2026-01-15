.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FeedGroupReorderDialog.kt"


# instance fields
.field private _binding:Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

.field private final groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field public groupOrderedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;


# direct methods
.method public static synthetic $r8$lambda$6aA7lf6Yb3AWmgtqbKARNHxWajU(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->onViewCreated$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PSoZKK58nYFE0jW2yZLEf81P-pU(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->onViewCreated$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/xwray/groupie/GroupieAdapter;

    invoke-direct {v0}, Lcom/xwray/groupie/GroupieAdapter;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 37
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$getGroupAdapter$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)Lcom/xwray/groupie/GroupieAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    return-object p0
.end method

.method public static final synthetic access$handleGroups(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Ljava/util/List;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->handleGroups(Ljava/util/List;)V

    return-void
.end method

.method private final disableInput()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->confirmButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private final getBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 1

    .line 101
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    return-object v0
.end method

.method private final handleGroups(Ljava/util/List;)V
    .locals 6

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 87
    invoke-virtual {v4}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1056
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 92
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 92
    new-instance v3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v3, v1, v4}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;-><init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 1635
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->update(Ljava/util/Collection;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;)Lkotlin/Unit;
    .locals 1

    .line 58
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$ProcessingEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->disableInput()V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 61
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 57
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final onViewCreated$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    if-nez p1, :cond_0

    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->updateOrder(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getMinWidthDialogTheme(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0036

    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    .line 54
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    const/4 p2, 0x0

    .line 55
    const-string v0, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->getGroupsLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$onViewCreated$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$onViewCreated$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 56
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->getDialogEventLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->feedGroupsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->feedGroupsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->feedGroupsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupReorderBinding;->confirmButton:Landroid/widget/Button;

    new-instance p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
