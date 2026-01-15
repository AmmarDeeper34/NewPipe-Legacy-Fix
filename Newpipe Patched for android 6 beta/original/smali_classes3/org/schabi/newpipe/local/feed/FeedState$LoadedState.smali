.class public final Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;
.super Lorg/schabi/newpipe/local/feed/FeedState;
.source "FeedState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadedState"
.end annotation


# instance fields
.field private final items:Ljava/util/List;

.field private final itemsErrors:Ljava/util/List;

.field private final notLoadedCount:J

.field private final oldestUpdate:Lj$/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Ljava/util/List;Lj$/time/OffsetDateTime;JLjava/util/List;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsErrors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/FeedState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    .line 16
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    .line 17
    iput-wide p3, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    .line 18
    iput-object p5, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getItemsErrors()Ljava/util/List;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    return-object v0
.end method

.method public final getNotLoadedCount()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    return-wide v0
.end method

.method public final getOldestUpdate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadedState(items="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", oldestUpdate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", notLoadedCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", itemsErrors="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
