.class final Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectPlaylistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;


# direct methods
.method public static synthetic $r8$lambda$R2PDvOhz7QVbiCY3mTxrM7q5j5U(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YA9nwHwLLZYIFLR6-IfVmsNjN-A(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;Lorg/schabi/newpipe/settings/SelectPlaylistFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 161
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .locals 0

    .line 169
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$fgetplaylists(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 141
    check-cast p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$fgetplaylists(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    .line 157
    instance-of v1, v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 160
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->view:Landroid/view/View;

    new-instance v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadPlaylistThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void

    .line 165
    :cond_0
    instance-of v1, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v1, :cond_1

    .line 166
    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 168
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->view:Landroid/view/View;

    new-instance v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadPlaylistThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0080

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    new-instance p2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;Landroid/view/View;)V

    return-object p2
.end method
