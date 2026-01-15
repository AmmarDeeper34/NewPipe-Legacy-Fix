.class public abstract synthetic Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(JJ)J
    .locals 9

    .line 0
    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    const/16 v4, 0x20

    shr-long/2addr p0, v4

    and-long v5, p2, v0

    shr-long/2addr p2, v4

    mul-long v7, v2, v5

    ushr-long/2addr v7, v4

    mul-long v5, v5, p0

    add-long/2addr v5, v7

    and-long/2addr v0, v5

    shr-long/2addr v5, v4

    mul-long v2, v2, p2

    add-long/2addr v2, v0

    shr-long v0, v2, v4

    mul-long p0, p0, p2

    add-long/2addr p0, v5

    add-long/2addr p0, v0

    return-wide p0
.end method
