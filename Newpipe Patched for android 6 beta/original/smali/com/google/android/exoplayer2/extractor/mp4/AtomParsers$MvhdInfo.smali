.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MvhdInfo"
.end annotation


# instance fields
.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final timescale:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/Metadata;J)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 100
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    return-void
.end method
