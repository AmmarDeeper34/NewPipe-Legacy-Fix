.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4Track"
.end annotation


# instance fields
.field public kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

.field public trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

.field public trex:Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
