.class final Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;
.super Ljava/lang/Object;
.source "FeedViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombineResultEventHolder"
.end annotation


# instance fields
.field private final t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

.field private final t2:Z

.field private final t3:Z

.field private final t4:Z

.field private final t5:J

.field private final t6:Lj$/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLj$/time/OffsetDateTime;)V
    .locals 1

    const-string v0, "t1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 108
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 109
    iput-boolean p3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 110
    iput-boolean p4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 111
    iput-wide p5, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 112
    iput-object p7, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    return-void
.end method


# virtual methods
.method public final component1()Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    return v0
.end method

.method public final component5()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    return-wide v0
.end method

.method public final component6()Lj$/time/OffsetDateTime;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    iget-boolean v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    iget-boolean v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    iget-boolean v3, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

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
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    iget-boolean v2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    iget-boolean v3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    iget-wide v4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    iget-object v6, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CombineResultEventHolder(t1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", t2="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", t3="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", t4="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", t5="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", t6="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
