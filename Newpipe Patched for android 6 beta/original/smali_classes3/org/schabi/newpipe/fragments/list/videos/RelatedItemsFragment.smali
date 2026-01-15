.class public Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "RelatedItemsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

.field private relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;


# direct methods
.method public static synthetic $r8$lambda$787UPXVqln5Ss9K8hHwX8-b619w(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->lambda$getListHeaderSupplier$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xu92_J9m8mQjapMw8rh-AiQRjSY(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->lambda$loadResult$1()Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    return-void
.end method

.method public static getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;
    .locals 1

    .line 46
    new-instance v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;-><init>()V

    .line 47
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->setInitialData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-object v0
.end method

.method private synthetic lambda$getListHeaderSupplier$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const v0, 0x7f12004c

    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$loadResult$1()Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    return-object v0
.end method

.method private setInitialData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 141
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 3

    .line 172
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    .line 174
    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-eq v0, v1, :cond_0

    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12004c

    .line 83
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->autoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->autoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->handleResult(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;)V
    .locals 7

    .line 116
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 118
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v4, 0x60

    const v6, 0x3d75c28f    # 0.06f

    const-wide/16 v2, 0x78

    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/ktx/ViewUtils;->slideUp(Landroid/view/View;JJF)V

    return-void
.end method

.method protected loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 94
    new-instance v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method protected loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 0

    .line 103
    new-instance p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0063

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    .line 69
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "related_info_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 157
    instance-of v0, p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "related_info_key"

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    if-eqz v0, :cond_0

    const v0, 0x7f12004c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->autoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 4

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 190
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 193
    invoke-virtual {v1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V

    return-void

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 108
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
