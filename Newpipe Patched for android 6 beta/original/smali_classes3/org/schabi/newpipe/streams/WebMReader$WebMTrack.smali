.class public Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebMTrack"
.end annotation


# instance fields
.field public bMetadata:[B

.field public codecDelay:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultDuration:J

.field public kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

.field public seekPreRoll:J

.field public trackNumber:J

.field protected trackType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 418
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    .line 419
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    .line 420
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    return-void
.end method
