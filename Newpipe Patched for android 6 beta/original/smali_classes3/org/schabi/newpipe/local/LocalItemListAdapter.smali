.class public Lorg/schabi/newpipe/local/LocalItemListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocalItemListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalItemListAdapter"


# instance fields
.field private final dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

.field private footer:Landroid/view/View;

.field private header:Landroid/view/View;

.field private itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field private final localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

.field private final localItems:Ljava/util/ArrayList;

.field private final recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field private showFooter:Z

.field private useItemHandle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    .line 92
    iput-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    .line 93
    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    iput-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 94
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    .line 97
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 98
    new-instance v0, Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/LocalItemBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 100
    sget-object v0, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private adapterOffsetWithoutHeader(I)I
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p1, v0

    return p1
.end method

.method private sizeConsideringHeader()I
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    move-result v0

    .line 122
    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 132
    iget-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-eqz p1, :cond_1

    .line 133
    invoke-direct {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    move-result p1

    .line 134
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearStreamItemList()V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-eqz v0, :cond_2

    return v1

    .line 266
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 267
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$2;->$SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I

    invoke-interface {p1}, Lorg/schabi/newpipe/database/LocalItem;->getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 305
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No holder type has been considered for item: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-interface {p1}, Lorg/schabi/newpipe/database/LocalItem;->getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 297
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x1003

    return p1

    .line 299
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_5

    const/16 p1, 0x1002

    return p1

    :cond_5
    const/16 p1, 0x1000

    return p1

    .line 289
    :cond_6
    iget-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x1005

    return p1

    .line 291
    :cond_7
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_8

    const/16 p1, 0x1004

    return p1

    :cond_8
    const/16 p1, 0x1001

    return p1

    .line 279
    :cond_9
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x3003

    return p1

    .line 281
    :cond_a
    iget-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_b

    const/16 p1, 0x3002

    return p1

    .line 283
    :cond_b
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_c

    const/16 p1, 0x3001

    return p1

    :cond_c
    const/16 p1, 0x3000

    return p1

    .line 269
    :cond_d
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    if-eqz p1, :cond_e

    const/16 p1, 0x2003

    return p1

    .line 271
    :cond_e
    iget-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_f

    const/16 p1, 0x2002

    return p1

    .line 273
    :cond_f
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_10

    const/16 p1, 0x2001

    return p1

    :cond_10
    const/16 p1, 0x2000

    return p1
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpanSizeLookup(I)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 402
    new-instance v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter$1;-><init>(Lorg/schabi/newpipe/local/LocalItemListAdapter;I)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 367
    instance-of v0, p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 373
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/LocalItem;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {p1, p2, v0, v1}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V

    return-void

    .line 375
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 376
    check-cast p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    iput-object v1, p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;->view:Landroid/view/View;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 377
    invoke-direct {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-eqz v0, :cond_3

    .line 379
    check-cast p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    iput-object p2, p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;->view:Landroid/view/View;

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 386
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    if-eqz v0, :cond_5

    .line 387
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 388
    instance-of v1, v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    if-eqz v1, :cond_2

    .line 389
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 390
    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-nez v2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 389
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateState(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    goto :goto_0

    .line 391
    :cond_2
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 392
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 393
    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-nez v2, :cond_3

    move v2, p2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 392
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateState(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    goto :goto_0

    :cond_4
    return-void

    .line 397
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 353
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view type has been considered for holder: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance p2, Lorg/schabi/newpipe/util/FallbackViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/util/FallbackViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 339
    :pswitch_0
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 337
    :pswitch_1
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemotePlaylistCardItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/RemotePlaylistCardItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 335
    :pswitch_2
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemotePlaylistGridItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/RemotePlaylistGridItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 333
    :pswitch_3
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 331
    :pswitch_4
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 329
    :pswitch_5
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistCardItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistCardItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 327
    :pswitch_6
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistGridItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistGridItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 325
    :pswitch_7
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 345
    :pswitch_8
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamCardItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamCardItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 343
    :pswitch_9
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamGridItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamGridItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 351
    :pswitch_a
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamCardItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamCardItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 349
    :pswitch_b
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamGridItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamGridItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 341
    :pswitch_c
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 347
    :pswitch_d
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V

    return-object p2

    .line 323
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    iget-object p2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/HeaderFooterHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 321
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    iget-object p2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/HeaderFooterHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2000
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeItem(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFooter(Landroid/view/View;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setItemViewMode(Lorg/schabi/newpipe/info_list/ItemViewMode;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-void
.end method

.method public setSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemBuilder;->setOnItemSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method public setUseItemHandle(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    return-void
.end method

.method public showFooter(Z)V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 212
    :cond_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->showFooter:Z

    if-eqz p1, :cond_1

    .line 214
    invoke-direct {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 216
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public swapItems(II)Z
    .locals 4

    .line 161
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->adapterOffsetWithoutHeader(I)I

    move-result v0

    .line 162
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->adapterOffsetWithoutHeader(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    if-gez v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public unsetSelectedListener()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/LocalItemBuilder;->setOnItemSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method
