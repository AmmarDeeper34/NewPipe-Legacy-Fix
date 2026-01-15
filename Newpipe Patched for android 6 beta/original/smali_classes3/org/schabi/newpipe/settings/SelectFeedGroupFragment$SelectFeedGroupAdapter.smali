.class final Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectFeedGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectFeedGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;


# direct methods
.method public static synthetic $r8$lambda$-EKYgrkc73t9pX7GGM-9dqsnyD8(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;Lorg/schabi/newpipe/settings/SelectFeedGroupFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 193
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->-$$Nest$fgetfeedGroups(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 178
    check-cast p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;I)V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->-$$Nest$fgetfeedGroups(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 192
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->view:Landroid/view/View;

    new-instance v2, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableResource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00f7

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 186
    new-instance p2, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;-><init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method
