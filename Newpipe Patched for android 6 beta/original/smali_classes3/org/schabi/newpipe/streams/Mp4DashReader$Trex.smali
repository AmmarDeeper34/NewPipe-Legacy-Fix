.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trex"
.end annotation


# instance fields
.field defaultSampleDescriptionIndex:I

.field defaultSampleDuration:I

.field defaultSampleFlags:I

.field defaultSampleSize:I

.field private trackId:I


# direct methods
.method static bridge synthetic -$$Nest$fgettrackId(Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->trackId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputtrackId(Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->trackId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
