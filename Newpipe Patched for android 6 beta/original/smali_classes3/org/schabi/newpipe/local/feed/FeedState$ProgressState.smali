.class public final Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;
.super Lorg/schabi/newpipe/local/feed/FeedState;
.source "FeedState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressState"
.end annotation


# instance fields
.field private final currentProgress:I

.field private final maxProgress:I

.field private final progressMessage:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/FeedState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput p1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    .line 10
    iput p2, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    .line 11
    iput p3, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

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
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    iget p1, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrentProgress()I
    .locals 1

    .line 9
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    return v0
.end method

.method public final getMaxProgress()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    return v0
.end method

.method public final getProgressMessage()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    iget v1, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    iget v2, p0, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProgressState(currentProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxProgress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progressMessage="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
