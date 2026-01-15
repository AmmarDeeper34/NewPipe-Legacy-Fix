.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mdia"
.end annotation


# instance fields
.field public hdlr:Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

.field public mdhd:[B

.field public mdhdTimeScale:I

.field public minf:Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
