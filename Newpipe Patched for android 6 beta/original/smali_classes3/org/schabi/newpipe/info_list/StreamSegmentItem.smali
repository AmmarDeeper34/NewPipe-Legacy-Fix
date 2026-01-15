.class public final Lorg/schabi/newpipe/info_list/StreamSegmentItem;
.super Lcom/xwray/groupie/Item;
.source "StreamSegmentItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;


# instance fields
.field private isSelected:Z

.field private final item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

.field private final onClick:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;


# direct methods
.method public static synthetic $r8$lambda$bP4nYRd5r02t6kRLXIC6n6joo-U(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->bind$lambda$1(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zIWAbi04ol9XCKlgBskP0eBJgFs(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->bind$lambda$2(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->Companion:Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamSegment;Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 15
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->onClick:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    return-void
.end method

.method private static final bind$lambda$1(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->onClick:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;->onItemClick(Lorg/schabi/newpipe/info_list/StreamSegmentItem;I)V

    return-void
.end method

.method private static final bind$lambda$2(Lorg/schabi/newpipe/info_list/StreamSegmentItem;Landroid/view/View;)Z
    .locals 1

    .line 44
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->onClick:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;->onItemLongClick(Lorg/schabi/newpipe/info_list/StreamSegmentItem;I)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bind(Lcom/xwray/groupie/GroupieViewHolder;I)V
    .locals 2

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getPreviewUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 26
    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a03d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getChannelName()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0a03d7

    if-nez p2, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a03d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/info_list/StreamSegmentItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/info_list/StreamSegmentItem$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 45
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xwray/groupie/Item;->bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d0072

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    return-void
.end method
