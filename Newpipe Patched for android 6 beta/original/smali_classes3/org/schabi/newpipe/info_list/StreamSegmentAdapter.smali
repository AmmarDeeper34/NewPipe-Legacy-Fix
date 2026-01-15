.class public final Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;
.super Lcom/xwray/groupie/GroupieAdapter;
.source "StreamSegmentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;
    }
.end annotation


# instance fields
.field private currentIndex:I

.field private final listener:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/xwray/groupie/GroupieAdapter;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->listener:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    return-void
.end method

.method private final unSelectCurrentSegment()V
    .locals 3

    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget v1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    invoke-virtual {p0, v1}, Lcom/xwray/groupie/GroupAdapter;->getGroupAtAdapterPosition(I)Lcom/xwray/groupie/Group;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.schabi.newpipe.info_list.StreamSegmentItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    .line 51
    iput v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 52
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->setSelected(Z)V

    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xwray/groupie/Item;->notifyChanged(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 57
    iput v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unSelectCurrentSegment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamSegmentAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V
    .locals 2

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->unSelectCurrentSegment()V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Item;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->setSelected(Z)V

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xwray/groupie/Item;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectSegmentAt(I)V
    .locals 2

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getGroupAtAdapterPosition(I)Lcom/xwray/groupie/Group;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.schabi.newpipe.info_list.StreamSegmentItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->currentIndex:I

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectSegmentAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreamSegmentAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setItems(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getStreamSegments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 24
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamSegments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 24
    new-instance v2, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->listener:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamSegment;Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
