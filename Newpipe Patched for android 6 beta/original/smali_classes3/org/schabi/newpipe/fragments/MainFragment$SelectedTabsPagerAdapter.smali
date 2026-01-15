.class public final Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/fragments/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectedTabsPagerAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final internalTabsList:Ljava/util/List;

.field private final localPlaylistFragments:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, p2, v0}, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/List;

    .line 295
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->context:Landroid/content/Context;

    .line 296
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lorg/schabi/newpipe/fragments/MainFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 302
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    instance-of v0, p1, Lorg/schabi/newpipe/BaseFragment;

    if-eqz v0, :cond_0

    .line 313
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/BaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage(Z)V

    .line 316
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    .line 308
    new-instance v1, Lorg/schabi/newpipe/fragments/BlankFragment;

    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tab "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v3, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 0
    const/4 p1, -0x2

    return p1
.end method

.method public getLocalPlaylistFragments()Ljava/util/List;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/List;

    return-object v0
.end method

.method public sameTabs(Ljava/util/List;)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
