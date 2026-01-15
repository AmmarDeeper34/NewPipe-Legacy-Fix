.class Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Moov"
.end annotation


# instance fields
.field mvexTrex:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

.field mvhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

.field trak:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
