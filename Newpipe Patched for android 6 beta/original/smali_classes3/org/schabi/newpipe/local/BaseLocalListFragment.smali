.class public abstract Lorg/schabi/newpipe/local/BaseLocalListFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "BaseLocalListFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "TI;>;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private footerRootBinding:Landroidx/viewbinding/ViewBinding;

.field private headerRootBinding:Landroidx/viewbinding/ViewBinding;

.field protected itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

.field protected itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field private updateFlags:I


# direct methods
.method public static synthetic $r8$lambda$HCaCx2whySzi1KxRaV8qv4w9Pr8(Lorg/schabi/newpipe/local/BaseLocalListFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->lambda$showListFooter$0(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    return-void
.end method

.method private synthetic lambda$showListFooter$0(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter(Z)V

    :cond_0
    return-void
.end method

.method private refreshItemViewMode()V
    .locals 3

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne v0, v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->getGridLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->getListLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 92
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setItemViewMode(Lorg/schabi/newpipe/info_list/ItemViewMode;)V

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getGridLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070392

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 115
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    .line 116
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 117
    iget-object v2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getSpanSizeLookup(I)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v1
.end method

.method protected getListFooter()Landroidx/viewbinding/ViewBinding;
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/PignateFooterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PignateFooterBinding;

    move-result-object v0

    return-object v0
.end method

.method protected getListHeader()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getListLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 122
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public handleError()V
    .locals 1

    .line 242
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 243
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showListFooter(Z)V

    .line 247
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 248
    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hideLoading()V
    .locals 4

    .line 201
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    .line 203
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_0
    return-void
.end method

.method protected initListeners()V
    .locals 0

    .line 146
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    new-instance p2, Lorg/schabi/newpipe/local/LocalItemListAdapter;

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    const p2, 0x7f0a01fb

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->refreshItemViewMode()V

    .line 134
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->getListHeader()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->headerRootBinding:Landroidx/viewbinding/ViewBinding;

    if-eqz p1, :cond_0

    .line 136
    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setHeader(Landroid/view/View;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->getListFooter()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->footerRootBinding:Landroidx/viewbinding/ViewBinding;

    .line 139
    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setFooter(Landroid/view/View;)V

    .line 141
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 66
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 156
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 157
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() called with: menu = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], inflater = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 167
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 176
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    iput-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 79
    iget v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    if-eqz v0, :cond_1

    and-int/lit8 v0, v0, 0x32

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->refreshItemViewMode()V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120232

    .line 255
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    or-int/lit8 p1, p1, 0x32

    iput p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    :cond_0
    return-void
.end method

.method protected resetFragment()V
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    :cond_0
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .line 209
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showEmptyState()V

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showListFooter(Z)V

    return-void
.end method

.method public showListFooter(Z)V
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/BaseLocalListFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 193
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 194
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 188
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    return-void
.end method
