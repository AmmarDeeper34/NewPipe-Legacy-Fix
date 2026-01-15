.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Moof"
.end annotation


# instance fields
.field mfhdSequenceNumber:I

.field public traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
