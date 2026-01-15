.class public abstract synthetic Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(II)I
    .locals 2

    .line 0
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-gez p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method
