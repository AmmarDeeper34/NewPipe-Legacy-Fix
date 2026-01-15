.class public Lorg/schabi/newpipe/fragments/detail/TabAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TabAdapter.java"


# instance fields
.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mFragmentList:Ljava/util/List;

.field private final mFragmentTitleList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllItems()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getItemPositionByTitle(Ljava/lang/String;)I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyDataSetUpdate()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItem(ILandroidx/fragment/app/Fragment;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateItem(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->updateItem(ILandroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
