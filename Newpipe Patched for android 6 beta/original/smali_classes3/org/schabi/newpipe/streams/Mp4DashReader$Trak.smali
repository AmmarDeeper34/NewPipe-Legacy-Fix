.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trak"
.end annotation


# instance fields
.field public edstElst:Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;

.field public mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

.field public tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
