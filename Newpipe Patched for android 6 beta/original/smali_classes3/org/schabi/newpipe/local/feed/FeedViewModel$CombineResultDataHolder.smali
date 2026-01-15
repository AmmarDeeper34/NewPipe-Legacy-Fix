.class final Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;
.super Ljava/lang/Object;
.source "FeedViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombineResultDataHolder"
.end annotation


# instance fields
.field private final t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

.field private final t2:Ljava/util/List;

.field private final t3:J

.field private final t4:Lj$/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;Ljava/util/List;JLj$/time/OffsetDateTime;)V
    .locals 1

    const-string v0, "t1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 117
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    .line 118
    iput-wide p3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    .line 119
    iput-object p5, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    return-void
.end method


# virtual methods
.method public final component1()Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    return-wide v0
.end method

.method public final component4()Lj$/time/OffsetDateTime;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CombineResultDataHolder(t1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", t2="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", t3="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", t4="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
