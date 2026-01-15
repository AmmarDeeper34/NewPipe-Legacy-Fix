.class Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrunEntry"
.end annotation


# instance fields
.field hasCompositionTimeOffset:Z

.field isKeyframe:Z

.field sampleCompositionTimeOffset:I

.field sampleDuration:I

.field sampleFlags:I

.field sampleSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
