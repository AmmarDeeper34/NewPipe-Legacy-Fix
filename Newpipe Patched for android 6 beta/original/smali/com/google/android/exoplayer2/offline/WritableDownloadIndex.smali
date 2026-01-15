.class public interface abstract Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;
.super Ljava/lang/Object;
.source "WritableDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadIndex;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
.end method

.method public abstract removeDownload(Ljava/lang/String;)V
.end method

.method public abstract setDownloadingStatesToQueued()V
.end method

.method public abstract setStatesToRemoving()V
.end method

.method public abstract setStopReason(I)V
.end method

.method public abstract setStopReason(Ljava/lang/String;I)V
.end method
