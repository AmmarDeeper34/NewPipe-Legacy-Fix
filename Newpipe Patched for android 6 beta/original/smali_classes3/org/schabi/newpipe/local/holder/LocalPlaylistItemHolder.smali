.class public Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;
.source "LocalPlaylistItemHolder.java"


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
    .locals 5

    .line 33
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getStreamCount()J

    move-result-wide v3

    .line 39
    invoke-static {v2, v3, v4}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadPlaylistThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 45
    instance-of v1, v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 46
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getTimesStreamIsContained()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V

    return-void
.end method
