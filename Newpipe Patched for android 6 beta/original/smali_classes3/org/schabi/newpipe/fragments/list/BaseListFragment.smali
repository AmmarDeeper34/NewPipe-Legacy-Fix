.class public abstract Lorg/schabi/newpipe/fragments/list/BaseListFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "BaseListFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/StateSaver$WriteRead;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "TI;>;",
        "Lorg/schabi/newpipe/util/StateSaver$WriteRead;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private focusedPosition:I

.field protected infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

.field protected itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field protected savedState:Lorg/schabi/newpipe/util/SavedState;

.field private updateFlags:I

.field private useDefaultStateSaving:Z


# direct methods
.method public static synthetic $r8$lambda$8lDbMtf8iHs3avN9aEn4_Fe908E(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->lambda$showListFooter$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1V0ekiciy7kKEW3togE9EYpQOg(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->lambda$initListeners$2(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_5q1Ce6ye_U_DCFMzdI4WRq_ho(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->lambda$restoreFocus$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$siSEanNQisbJxIGt2KK4BAfs_9o(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->lambda$initListeners$1(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStreamSelected(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onStreamSelected(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->updateFlags:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->focusedPosition:I

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 41
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getFocusedPosition()I
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method private synthetic lambda$initListeners$1(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 3

    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V

    .line 271
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    .line 272
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 274
    const-string v0, "Opening channel fragment"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$initListeners$2(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;)V
    .locals 3

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V

    .line 281
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    .line 282
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    const-string v0, "Opening playlist fragment"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$restoreFocus$0(Ljava/lang/Integer;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showListFooter$3(Z)V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter(Z)V

    :cond_0
    return-void
.end method

.method private onStreamSelected(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 7

    .line 377
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 379
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 378
    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private refreshItemViewMode()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne v0, v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getGridLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getListLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 226
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 228
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setItemViewMode(Lorg/schabi/newpipe/info_list/ItemViewMode;)V

    .line 229
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private restoreFocus(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public generateSuffix()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGridLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070392

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    .line 216
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 217
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getSpanSizeLookup(I)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v1
.end method

.method protected getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 1

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    return-object v0
.end method

.method protected getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getListLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 208
    new-instance v0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public handleError()V
    .locals 1

    .line 469
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 471
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    return-void
.end method

.method public handleNextItems(Ljava/lang/Object;)V
    .locals 1

    .line 464
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected abstract hasMoreItems()Z
.end method

.method public hideLoading()V
    .locals 4

    .line 442
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 443
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 255
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setOnStreamSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    .line 268
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setOnChannelSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setOnPlaylistSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    .line 288
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setOnCommentsSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    .line 291
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a01fb

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 237
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->refreshItemViewMode()V

    .line 239
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getListHeaderSupplier()Ljava/util/function/Supplier;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setHeaderSupplier(Ljava/util/function/Supplier;)V

    .line 244
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected abstract loadMoreItems()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lorg/schabi/newpipe/info_list/InfoListAdapter;

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 75
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 76
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 404
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() called with: menu = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], inflater = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 409
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 411
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 412
    iget-boolean v0, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 82
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    invoke-static {v0}, Lorg/schabi/newpipe/util/StateSaver;->onDestroy(Lorg/schabi/newpipe/util/SavedState;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 3

    .line 248
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() called with: selectedItem = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1, p0}, Lorg/schabi/newpipe/util/StateSaver;->tryToRestore(Landroid/os/Bundle;Lorg/schabi/newpipe/util/StateSaver$WriteRead;)Lorg/schabi/newpipe/util/SavedState;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 93
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->updateFlags:I

    if-eqz v0, :cond_1

    and-int/lit8 v0, v0, 0x32

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->refreshItemViewMode()V

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->updateFlags:I

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    invoke-static {v0, v1, p1, p0}, Lorg/schabi/newpipe/util/StateSaver;->tryToSave(ZLorg/schabi/newpipe/util/SavedState;Landroid/os/Bundle;Lorg/schabi/newpipe/util/StateSaver$WriteRead;)Lorg/schabi/newpipe/util/SavedState;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    :cond_0
    return-void
.end method

.method protected onScrollToBottom()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hasMoreItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->loadMoreItems()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120232

    .line 477
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->updateFlags:I

    or-int/lit8 p1, p1, 0x32

    iput p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->updateFlags:I

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 195
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->focusedPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->restoreFocus(Ljava/lang/Integer;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 188
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getFocusedPosition()I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->focusedPosition:I

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->restoreFocus(Ljava/lang/Integer;)V

    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .line 448
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showEmptyState()V

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 450
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    return-void
.end method

.method protected showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 391
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 393
    invoke-static {v0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V

    return-void
.end method

.method public showListFooter(Z)V
    .locals 2

    .line 455
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 436
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 437
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    return-void
.end method

.method protected startLoading(Z)V
    .locals 0

    .line 422
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useInitialItemListLoadScrollListener()V

    .line 423
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    return-void
.end method

.method protected useInitialItemListLoadScrollListener()V
    .locals 2

    .line 323
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "useInitialItemListLoadScrollListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 327
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected useNormalItemListScrollListener()V
    .locals 2

    .line 298
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "useNormalItemListScrollListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 302
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useDefaultStateSaving:Z

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getFocusedPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
