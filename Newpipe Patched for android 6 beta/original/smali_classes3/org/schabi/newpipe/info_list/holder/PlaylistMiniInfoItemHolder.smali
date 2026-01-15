.class public Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "PlaylistMiniInfoItemHolder.java"


# instance fields
.field private final itemStreamCountView:Landroid/widget/TextView;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemTitleView:Landroid/widget/TextView;

.field public final itemUploaderView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ImvJaCnDOymjsXBeG2Y0hfaMj70(Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtuNNoilLnhtCnsW26kwl2Rm2fA(Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0080

    .line 33
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnPlaylistSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnPlaylistSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 59
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnPlaylistSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 60
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnPlaylistSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 3

    .line 39
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    if-nez p2, :cond_0

    return-void

    .line 42
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 44
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getStreamCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadPlaylistThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 51
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 58
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
