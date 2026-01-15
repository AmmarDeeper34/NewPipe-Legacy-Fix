.class public Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;
.source "RemotePlaylistItemHolder.java"


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
    .locals 5

    .line 32
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getStreamCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 38
    invoke-static {v2, v3, v4}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUploader()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadPlaylistThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V

    return-void
.end method
