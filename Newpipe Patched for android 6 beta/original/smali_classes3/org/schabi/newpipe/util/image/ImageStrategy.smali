.class public abstract Lorg/schabi/newpipe/util/image/ImageStrategy;
.super Ljava/lang/Object;
.source "ImageStrategy.java"


# static fields
.field private static preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;


# direct methods
.method public static synthetic $r8$lambda$2H8wdOublfyvNOYsOnrbCvuKxb4(Lorg/schabi/newpipe/extractor/Image;)Ljava/lang/Boolean;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qii5Ng2NxPaDX7LY9_09b3AbW6c(Lorg/schabi/newpipe/extractor/Image;)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$VCv0Og3XjD89LoGs1mT99feE-Bc(Lorg/schabi/newpipe/extractor/Image;)D
    .locals 4

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Xm86KZFZqDfRhA_s-XFLIq656pA(DLorg/schabi/newpipe/extractor/Image;)D
    .locals 4

    .line 101
    invoke-static {p2, p0, p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    move-result-wide v0

    const-wide v2, 0x40ee848000000000L    # 62500.0

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$kgLdFDnQrCFsYI_z4DSP7gfDzEM(Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;Lorg/schabi/newpipe/extractor/Image;)I
    .locals 2

    .line 75
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object p0

    sget-object p1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static synthetic $r8$lambda$u6egPaV75xXnmutWq2a60fGtHxg(DLorg/schabi/newpipe/extractor/Image;)D
    .locals 0

    .line 106
    invoke-static {p2, p0, p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$yrXh9R8c8rAUMoYQIihsuOA8qNk(DLorg/schabi/newpipe/extractor/Image;)D
    .locals 4

    .line 97
    invoke-static {p2, p0, p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    move-result-wide v0

    const-wide v2, 0x40b5f90000000000L    # 5625.0

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sput-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-void
.end method

.method public static choosePreferredImage(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda1;-><init>()V

    .line 67
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->findFirst()Lj$/util/OptionalDouble;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 69
    invoke-virtual {v0, v1, v2}, Lj$/util/OptionalDouble;->orElse(D)D

    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->toResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v2

    .line 72
    new-instance v3, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 74
    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda3;-><init>()V

    .line 87
    invoke-static {v2, v3}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    .line 94
    sget-object v3, Lorg/schabi/newpipe/util/image/ImageStrategy$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 104
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;-><init>(D)V

    invoke-static {v2, p1}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    goto :goto_0

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    .line 100
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;-><init>(D)V

    invoke-static {v2, p1}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda4;-><init>(D)V

    invoke-static {v2, p1}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 109
    :cond_3
    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 112
    invoke-interface {p0, v2}, Lj$/util/stream/Stream;->min(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda7;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    .line 0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 192
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result p0

    mul-int v0, v0, p0

    int-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    int-to-double v0, v0

    mul-double v0, v0, p1

    return-wide v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result p0

    mul-int p1, p1, p0

    int-to-double p0, p1

    return-wide p0
.end method

.method public static imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 165
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 171
    :goto_0
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setPreferredImageQuality(Lorg/schabi/newpipe/util/image/PreferredImageQuality;)V
    .locals 0

    .line 27
    sput-object p0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-void
.end method

.method public static shouldLoadImages()Z
    .locals 2

    .line 31
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
