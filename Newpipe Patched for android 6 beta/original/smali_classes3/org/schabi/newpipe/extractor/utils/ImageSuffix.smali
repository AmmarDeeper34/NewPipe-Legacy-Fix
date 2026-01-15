.class public final Lorg/schabi/newpipe/extractor/utils/ImageSuffix;
.super Ljava/lang/Object;
.source "ImageSuffix.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final height:I

.field private final resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field private final suffix:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    .line 49
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    .line 50
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    .line 51
    const-string p1, "estimatedResolutionLevel is null"

    invoke-static {p4, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    return v0
.end method

.method public getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageSuffix {suffix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resolutionLevel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
