.class public abstract Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.source "PlaylistItemHolder.java"


# instance fields
.field final itemStreamCountView:Landroid/widget/TextView;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemTitleView:Landroid/widget/TextView;

.field public final itemUploaderView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$WQODmzo1SiygNQS1CSD7dP4MqrI(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZnOBgyOr2QDvgB1A_KiKWo1-gqg(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0080

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)Z
    .locals 0

    .line 46
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 47
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
    .locals 0

    .line 38
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
