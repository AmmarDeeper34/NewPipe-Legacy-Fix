.class public abstract Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;
.super Ljava/lang/Object;
.source "PlayerSemitoneHelper.java"


# direct methods
.method private static ensureSemitonesInRange(I)I
    .locals 2

    const/16 v0, -0xc

    const/16 v1, 0xc

    .line 38
    invoke-static {p0, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static formatPitchSemitones(D)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->percentToSemitones(D)I

    move-result p0

    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->formatPitchSemitones(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPitchSemitones(I)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    if-lez p0, :cond_0

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    goto :goto_0
.end method

.method public static percentToSemitones(D)I
    .locals 2

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 34
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 33
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->ensureSemitonesInRange(I)I

    move-result p0

    return p0
.end method

.method public static semitonesToPercent(I)D
    .locals 4

    .line 29
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->ensureSemitonesInRange(I)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method
