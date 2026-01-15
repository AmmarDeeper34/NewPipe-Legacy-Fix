.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tkhd"
.end annotation


# instance fields
.field bAlternateGroup:S

.field bHeight:I

.field bLayer:S

.field bVolume:S

.field bWidth:I

.field duration:J

.field matrix:[B

.field trackId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
