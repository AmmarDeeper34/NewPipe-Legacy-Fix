.class public final Lorg/schabi/newpipe/extractor/stream/Frameset;
.super Ljava/lang/Object;
.source "Frameset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    .line 40
    iput p4, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    .line 41
    iput p5, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    .line 42
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 43
    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 44
    iput p6, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 45
    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    return-void
.end method


# virtual methods
.method public getDurationPerFrame()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    return v0
.end method

.method public getFrameBoundsAt(J)[I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 113
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v4, v3

    mul-long v1, v1, v4

    cmp-long v4, p1, v1

    if-lez v4, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    mul-int v1, v1, v2

    int-to-long v2, v3

    .line 119
    div-long/2addr p1, v2

    long-to-int p2, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 121
    rem-int p2, p1, v1

    .line 123
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    invoke-static {p2, v0}, Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    .line 124
    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    rem-int/2addr p2, v2

    .line 127
    invoke-static {p1, v1}, Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    mul-int v2, p2, v1

    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    mul-int v4, v0, v3

    mul-int p2, p2, v1

    add-int/2addr p2, v1

    mul-int v0, v0, v3

    add-int/2addr v0, v3

    filled-new-array {p1, v2, v4, p2, v0}, [I

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    :goto_0
    iget p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    iget p2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public getFrameHeight()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    return v0
.end method

.method public getFramesPerPageX()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    return v0
.end method

.method public getFramesPerPageY()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    return v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    return-object v0
.end method
