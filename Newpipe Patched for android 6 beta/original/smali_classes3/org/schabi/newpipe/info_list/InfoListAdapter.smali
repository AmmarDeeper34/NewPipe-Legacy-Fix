.class public Lorg/schabi/newpipe/info_list/InfoListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InfoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/info_list/InfoListAdapter$HFHolder;
    }
.end annotation


# instance fields
.field private headerSupplier:Ljava/util/function/Supplier;

.field private final infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

.field private final infoItemList:Ljava/util/List;

.field private itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field private showFooter:Z

.field private useMiniVariant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 89
    iput-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    .line 91
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 97
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 98
    new-instance v0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    return-void
.end method

.method private sizeConsideringHeaderOffset()I
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->hasHeader()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addInfoItemList(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    move-result v0

    .line 136
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 146
    iget-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    move-result p1

    .line 148
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearStreamItemList()V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_0
    iget-boolean v1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 231
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    if-eqz v0, :cond_2

    return v1

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 240
    sget-object v0, Lorg/schabi/newpipe/info_list/InfoListAdapter$2;->$SwitchMap$org$schabi$newpipe$extractor$InfoItem$InfoType:[I

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/16 p1, 0x400

    return p1

    .line 262
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_5

    const/16 p1, 0x303

    return p1

    .line 264
    :cond_5
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_6

    const/16 p1, 0x302

    return p1

    .line 266
    :cond_6
    iget-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x300

    return p1

    :cond_7
    const/16 p1, 0x301

    return p1

    .line 252
    :cond_8
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_9

    const/16 p1, 0x203

    return p1

    .line 254
    :cond_9
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_a

    const/16 p1, 0x202

    return p1

    .line 256
    :cond_a
    iget-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x200

    return p1

    :cond_b
    const/16 p1, 0x201

    return p1

    .line 242
    :cond_c
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_d

    const/16 p1, 0x103

    return p1

    .line 244
    :cond_d
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_e

    const/16 p1, 0x102

    return p1

    .line 246
    :cond_e
    iget-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    if-eqz p1, :cond_f

    const/16 p1, 0x100

    return p1

    :cond_f
    const/16 p1, 0x101

    return p1
.end method

.method public getItemsList()Ljava/util/List;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    return-object v0
.end method

.method public getSpanSizeLookup(I)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 344
    new-instance v0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;-><init>(Lorg/schabi/newpipe/info_list/InfoListAdapter;I)V

    return-object v0
.end method

.method protected hasHeader()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 336
    instance-of v0, p1, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;

    if-eqz v0, :cond_1

    .line 337
    check-cast p1, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/List;

    .line 339
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/InfoItem;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 337
    invoke-virtual {p1, p2, v0}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x400

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 324
    new-instance p2, Lorg/schabi/newpipe/util/FallbackViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/util/FallbackViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 320
    :pswitch_0
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistCardInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistCardInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 318
    :pswitch_1
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistGridInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistGridInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 316
    :pswitch_2
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 314
    :pswitch_3
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/PlaylistMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 310
    :pswitch_4
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelCardInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelCardInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 312
    :pswitch_5
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelGridInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelGridInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 308
    :pswitch_6
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 306
    :pswitch_7
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 304
    :pswitch_8
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamCardInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamCardInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 302
    :pswitch_9
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamGridInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamGridInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 300
    :pswitch_a
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 298
    :pswitch_b
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 322
    :cond_0
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 293
    :cond_1
    new-instance p2, Lorg/schabi/newpipe/info_list/InfoListAdapter$HFHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 294
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/databinding/PignateFooterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PignateFooterBinding;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PignateFooterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter$HFHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 291
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/info_list/InfoListAdapter$HFHolder;

    iget-object p2, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/info_list/InfoListAdapter$HFHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x200
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x300
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeaderSupplier(Ljava/util/function/Supplier;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setItemViewMode(Lorg/schabi/newpipe/info_list/ItemViewMode;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-void
.end method

.method public setOnChannelSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->setOnChannelSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method public setOnCommentsSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->setOnCommentsSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method public setOnPlaylistSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->setOnPlaylistSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method public setOnStreamSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->setOnStreamSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method public setUseMiniVariant(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    return-void
.end method

.method public showFooter(Z)V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method
