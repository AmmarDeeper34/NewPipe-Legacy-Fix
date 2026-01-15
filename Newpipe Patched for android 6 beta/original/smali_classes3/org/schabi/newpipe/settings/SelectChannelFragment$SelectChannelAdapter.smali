.class final Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectChannelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/SelectChannelFragment;


# direct methods
.method public static synthetic $r8$lambda$y7oTEUdm6y_vpxdzxFS6cNu_klk(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/settings/SelectChannelFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectChannelFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/SelectChannelFragment;Lorg/schabi/newpipe/settings/SelectChannelFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectChannelFragment;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 192
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectChannelFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/SelectChannelFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectChannelFragment;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectChannelFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectChannelFragment;->-$$Nest$fgetsubscriptions(Lorg/schabi/newpipe/settings/SelectChannelFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 177
    check-cast p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;I)V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectChannelFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectChannelFragment;->-$$Nest$fgetsubscriptions(Lorg/schabi/newpipe/settings/SelectChannelFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 191
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->view:Landroid/view/View;

    new-instance v2, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;
    .locals 2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00f2

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 185
    new-instance p2, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;-><init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;Landroid/view/View;)V

    return-object p2
.end method
