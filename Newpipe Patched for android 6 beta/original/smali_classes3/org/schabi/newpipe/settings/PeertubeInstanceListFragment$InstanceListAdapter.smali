.class Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "PeertubeInstanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstanceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private lastChecked:Landroid/widget/RadioButton;

.field final synthetic this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Landroid/widget/RadioButton;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1

    .line 328
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 329
    new-instance p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment-IA;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 330
    iput-object p3, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 331
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;I)Ljava/lang/Object;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 322
    check-cast p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;I)V
    .locals 0

    .line 351
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->bind(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;
    .locals 2

    .line 344
    new-instance p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Lorg/schabi/newpipe/databinding/ItemInstanceBinding;)V

    return-object p2
.end method

.method public swapItems(II)V
    .locals 2

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 337
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
