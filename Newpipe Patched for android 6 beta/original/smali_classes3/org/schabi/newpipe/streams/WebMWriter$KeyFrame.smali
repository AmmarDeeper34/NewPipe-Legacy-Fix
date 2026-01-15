.class Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyFrame"
.end annotation


# instance fields
.field final clusterPosition:J

.field final duration:J

.field final relativePosition:I


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-long p1, p3, p1

    .line 728
    iput-wide p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->clusterPosition:J

    sub-long/2addr p5, p3

    const-wide/16 p1, 0x8

    sub-long/2addr p5, p1

    long-to-int p1, p5

    .line 729
    iput p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->relativePosition:I

    .line 730
    iput-wide p7, p0, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->duration:J

    return-void
.end method
