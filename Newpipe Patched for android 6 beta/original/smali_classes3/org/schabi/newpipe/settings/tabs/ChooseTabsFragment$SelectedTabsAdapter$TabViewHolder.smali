.class Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChooseTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabViewHolder"
.end annotation


# instance fields
.field private final handle:Landroid/widget/ImageView;

.field private final tabIconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private final tabNameView:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;


# direct methods
.method public static synthetic $r8$lambda$4nz15XJB5kZmtN040qxwjikapoQ(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->lambda$getOnTouchListener$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;Landroid/view/View;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 373
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03b7

    .line 375
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabNameView:Landroid/widget/TextView;

    const p1, 0x7f0a03b5

    .line 376
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabIconView:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a01b3

    .line 377
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->handle:Landroid/widget/ImageView;

    return-void
.end method

.method private getOnTouchListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 423
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object v0
.end method

.method private getTabName(Lorg/schabi/newpipe/settings/tabs/Tab$Type;Lorg/schabi/newpipe/settings/tabs/Tab;)Ljava/lang/String;
    .locals 3

    .line 396
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$3;->$SwitchMap$org$schabi$newpipe$settings$tabs$Tab$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "/"

    packed-switch p1, :pswitch_data_0

    .line 417
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 400
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    const p2, 0x7f1200d0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 398
    :pswitch_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    const p2, 0x7f12005f

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object v1, v1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    const v2, 0x7f1201ba

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    .line 415
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->getFeedGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_3
    move-object p1, p2

    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->getPlaylistServiceId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 410
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    const v1, 0x7f120237

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object p1

    .line 412
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p2

    check-cast v1, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->getChannelServiceId()I

    move-result v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 406
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 402
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p2

    check-cast v1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->getKioskServiceId()I

    move-result v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 403
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

.method private synthetic lambda$getOnTouchListener$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 424
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 425
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 426
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method bind(ILorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->handle:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->getOnTouchListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View$OnTouchListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object p2, p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 385
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result p2

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/Tab;->typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabNameView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->getTabName(Lorg/schabi/newpipe/settings/tabs/Tab$Type;Lorg/schabi/newpipe/settings/tabs/Tab;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->tabIconView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
