.class public final Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;
.super Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
.source "FeedEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressEvent"
.end annotation


# instance fields
.field private final currentProgress:I

.field private final maxProgress:I

.field private final progressMessage:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, v0, v0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    iput p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    iput p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, -0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    iget p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrentProgress()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    return v0
.end method

.method public final getMaxProgress()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    return v0
.end method

.method public final getProgressMessage()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    iget v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProgressEvent(currentProgress="

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
