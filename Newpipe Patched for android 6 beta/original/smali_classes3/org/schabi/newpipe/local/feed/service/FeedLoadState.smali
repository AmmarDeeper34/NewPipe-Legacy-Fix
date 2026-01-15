.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadState;
.super Ljava/lang/Object;
.source "FeedLoadState.kt"


# instance fields
.field private final currentProgress:I

.field private final maxProgress:I

.field private final updateDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "updateDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    .line 5
    iput p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    .line 6
    iput p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    iget p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrentProgress()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    return v0
.end method

.method public final getMaxProgress()I
    .locals 1

    .line 5
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    return v0
.end method

.method public final getUpdateDescription()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->updateDescription:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->maxProgress:I

    iget v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;->currentProgress:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeedLoadState(updateDescription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxProgress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentProgress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
