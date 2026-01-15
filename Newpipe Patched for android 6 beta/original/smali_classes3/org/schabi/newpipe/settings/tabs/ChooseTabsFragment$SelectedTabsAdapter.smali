.class Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChooseTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedTabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 338
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 339
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 332
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;I)V
    .locals 0

    .line 359
    invoke-virtual {p1, p2, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->bind(ILorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;
    .locals 2

    .line 351
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0077

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 352
    new-instance p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public swapItems(II)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 344
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method
