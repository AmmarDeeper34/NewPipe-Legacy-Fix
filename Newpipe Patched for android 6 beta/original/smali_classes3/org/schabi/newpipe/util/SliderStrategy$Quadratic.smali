.class public final Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;
.super Ljava/lang/Object;
.source "SliderStrategy.java"

# interfaces
.implements Lorg/schabi/newpipe/util/SliderStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/SliderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quadratic"
.end annotation


# instance fields
.field private final center:D

.field private final centerProgress:I

.field private final leftGap:D

.field private final rightGap:D


# direct methods
.method public constructor <init>(DDDI)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpg-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpl-double v0, p5, p3

    if-gtz v0, :cond_0

    sub-double/2addr p1, p5

    .line 53
    iput-wide p1, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    sub-double/2addr p3, p5

    .line 54
    iput-wide p3, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    .line 55
    iput-wide p5, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->center:D

    .line 57
    div-int/lit8 p7, p7, 0x2

    iput p7, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Center must be in between minimum and maximum"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public progressOf(D)I
    .locals 3

    .line 62
    iget-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->center:D

    sub-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 63
    iget-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    goto :goto_0

    .line 64
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    neg-double p1, p1

    .line 65
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    .line 67
    iget v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public valueOf(I)D
    .locals 5

    .line 72
    iget v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    sub-int/2addr p1, v0

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 73
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    if-ltz p1, :cond_0

    .line 74
    iget-wide v2, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    :goto_0
    mul-double v0, v0, v2

    .line 76
    iget-wide v2, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->center:D

    add-double/2addr v0, v2

    return-wide v0
.end method
