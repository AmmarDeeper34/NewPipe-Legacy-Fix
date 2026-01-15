.class public Lorg/schabi/newpipe/fragments/MainFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;
    }
.end annotation


# instance fields
.field private binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

.field private hasTabsChanged:Z

.field private mainTabsPositionBottom:Z

.field private mainTabsPositionKey:Ljava/lang/String;

.field private pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

.field private prefs:Landroid/content/SharedPreferences;

.field private final tabsList:Ljava/util/List;

.field private tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

.field private youtubeRestrictedModeEnabled:Z

.field private youtubeRestrictedModeEnabledKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ZW76KMVJ4CVKe7ySzf-HnRxDEWI(Lorg/schabi/newpipe/fragments/MainFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->lambda$onCreate$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    .line 78
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabsManager.SavedTabsChangeListener: onTabsChanged called, isResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->setupTabs()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    return-void
.end method

.method private setupTabs()V
    .locals 5

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->sameTabs(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lorg/schabi/newpipe/fragments/MainFragment-IA;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 198
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 200
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTabsIconAndDescription()V

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    return-void
.end method

.method private updateTabLayoutPosition()V
    .locals 8

    .line 228
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 229
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 230
    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xc

    const/16 v6, 0xa

    if-eqz v2, :cond_0

    const/16 v7, 0xa

    goto :goto_0

    :cond_0
    const/16 v7, 0xc

    .line 236
    :goto_0
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    .line 237
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    .line 238
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    :cond_3
    const v7, 0x7f0a0214

    .line 239
    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 240
    :goto_3
    invoke-virtual {v1, v6}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 243
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v2, :cond_5

    const v3, 0x1010054

    goto :goto_4

    :cond_5
    const v3, 0x7f040129

    :goto_4
    invoke-static {v0, v3}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v2, :cond_6

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1010435

    invoke-static {v0, v2}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    goto :goto_5

    :cond_6
    const/4 v0, -0x1

    .line 254
    :goto_5
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 255
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    return-void
.end method

.method private updateTabsIconAndDescription()V
    .locals 4

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTitleForTab(I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commitPlaylistTabs()V
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->getLocalPlaylistFragments()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/MainFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 224
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    .line 109
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 110
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 112
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->setupTabs()V

    .line 113
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTabLayoutPosition()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getManager(Landroid/content/Context;)Lorg/schabi/newpipe/settings/tabs/TabsManager;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    .line 77
    new-instance v0, Lorg/schabi/newpipe/fragments/MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/MainFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/MainFragment;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->setSavedTabsListener(Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    const p1, 0x7f1204da

    .line 90
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    const p1, 0x7f12024f

    .line 92
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionKey:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 157
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 158
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
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

    :cond_0
    const v0, 0x7f0f000a

    .line 162
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0061

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->unsetSavedTabsListener()V

    .line 138
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 140
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0052

    if-ne v0, v1, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 175
    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v0

    const-string v1, ""

    .line 174
    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    const-string v0, "Opening search fragment"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    const/4 v2, 0x0

    .line 121
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    .line 124
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->setupTabs()V

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    if-eq v1, v0, :cond_2

    .line 129
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 130
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTabLayoutPosition()V

    :cond_2
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 272
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabReselected() called with: tab = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 261
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected() called with: selectedTab = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 0
    return-void
.end method
