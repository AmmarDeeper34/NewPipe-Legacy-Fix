.class public Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChooseTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;
    }
.end annotation


# instance fields
.field private selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

.field private final tabList:Ljava/util/List;

.field private tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;


# direct methods
.method public static synthetic $r8$lambda$1BNnDnxLsLJM2_-V7UTXpS5djeA(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3bwhBQ6ZSVSTRufD_lE8214-hdo(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$initButton$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WOrGeRALjJzWP-vFooffwhaTdG8(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$initButton$2([Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WjgCdE2Qi-6G66jSiauojkMpKaI(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$addTab$6(Ljava/lang/Long;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nnNHIIha28fMVk4uoVWfNVY6pxA(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$addTab$4(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqvTjqKU9_nbOWOxmRmQkeSjeQY(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$restoreDefaults$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpFohDPcs8oIcV01HhOCNGd1C0U(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->lambda$addTab$5(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetselectedTabsAdapter(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddTab(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Lorg/schabi/newpipe/settings/tabs/Tab;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    return-void
.end method

.method private addTab(I)V
    .locals 4

    .line 168
    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab id not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Choosing tabs on settings"

    invoke-direct {v0, v1, p1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void

    .line 177
    :cond_0
    sget-object p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$3;->$SwitchMap$org$schabi$newpipe$settings$tabs$Tab$Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 216
    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void

    .line 208
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;-><init>()V

    .line 210
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;)V

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "select_feed_group"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;-><init>()V

    .line 192
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "select_playlist"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectChannelFragment;-><init>()V

    .line 186
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/SelectChannelFragment;->setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectChannelFragment$OnSelectedListener;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "select_channel"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/settings/SelectKioskFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment;-><init>()V

    .line 180
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/SelectKioskFragment;->setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "select_kiosk"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getAvailableTabs(Landroid/content/Context;)[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;
    .locals 9

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 225
    invoke-virtual {v5}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object v6

    .line 226
    sget-object v7, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$3;->$SwitchMap$org$schabi$newpipe$settings$tabs$Tab$Type:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const v7, 0x7f080167

    packed-switch v5, :pswitch_data_0

    .line 262
    iget-object v5, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-direct {v5, p1, v6}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/settings/tabs/Tab;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 245
    :pswitch_0
    iget-object v5, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v6

    const v8, 0x7f1200d0

    .line 247
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8, v7}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 246
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 228
    :pswitch_1
    iget-object v5, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v7

    const v8, 0x7f12005f

    .line 230
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-virtual {v6, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v7, v8, v6}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 229
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :pswitch_2
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v7

    const v8, 0x7f1201b8

    .line 258
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-virtual {v6, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v7, v8, v6}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :pswitch_3
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v7

    const v8, 0x7f120378

    .line 253
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-virtual {v6, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v7, v8, v6}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 252
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :pswitch_4
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v7

    const v8, 0x7f12007a

    .line 241
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {v6, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v7, v8, v6}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 240
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :pswitch_5
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v6}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v6

    const v8, 0x7f120218

    .line 236
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8, v7}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    .line 235
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 269
    :cond_1
    new-array p1, v3, [Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 3

    .line 277
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;

    const/4 v1, 0x3

    const/16 v2, 0x30

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;II)V

    return-object v0
.end method

.method private initButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a005e

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 144
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$addTab$4(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 181
    new-instance p3, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    invoke-direct {p3, p1, p2}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method

.method private synthetic lambda$addTab$5(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method

.method private synthetic lambda$addTab$6(Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 1

    .line 212
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Ljava/lang/Long;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method

.method private synthetic lambda$initButton$2([Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 153
    aget-object p1, p1, p3

    .line 154
    iget p1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(I)V

    return-void
.end method

.method private synthetic lambda$initButton$3(Landroid/view/View;)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->getAvailableTabs(Landroid/content/Context;)[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    move-result-object p1

    .line 147
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;)V

    .line 157
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog;-><init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog;->show()V

    return-void
.end method

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->restoreDefaults()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$restoreDefaults$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 135
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->resetTabs()V

    .line 136
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->updateTabList()V

    .line 137
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private restoreDefaults()V
    .locals 3

    .line 130
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203c1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1203c2

    .line 132
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    const v2, 0x7f120332

    .line 134
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private saveChanges()V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->saveTabs(Ljava/util/List;)V

    return-void
.end method

.method private updateTabList()V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getManager(Landroid/content/Context;)Lorg/schabi/newpipe/settings/tabs/TabsManager;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    .line 60
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->updateTabList()V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0005

    .line 109
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0241

    .line 110
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0058

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 98
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->saveChanges()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12024b

    .line 92
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ThemeHelper;->setTitleToAppCompatActivity(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->initButton(Landroid/view/View;)V

    const p2, 0x7f0a0359

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 82
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 84
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 85
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
