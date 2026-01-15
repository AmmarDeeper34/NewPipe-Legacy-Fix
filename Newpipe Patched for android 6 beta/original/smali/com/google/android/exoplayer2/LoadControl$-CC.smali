.class public abstract synthetic Lcom/google/android/exoplayer2/LoadControl$-CC;
.super Ljava/lang/Object;
.source "LoadControl.java"


# direct methods
.method public static $default$onTracksSelected(Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 0

    .line 66
    invoke-interface {p0, p3, p4, p5}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public static $default$onTracksSelected(Lcom/google/android/exoplayer2/LoadControl;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 6

    .line 76
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v2, Lcom/google/android/exoplayer2/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public static $default$shouldStartPlayback(Lcom/google/android/exoplayer2/LoadControl;JFZJ)Z
    .locals 9

    .line 178
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v2, Lcom/google/android/exoplayer2/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z

    move-result p0

    return p0
.end method

.method public static $default$shouldStartPlayback(Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z
    .locals 0

    move-wide p1, p3

    move p3, p5

    move p4, p6

    move-wide p5, p7

    .line 168
    invoke-interface/range {p0 .. p6}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p0

    return p0
.end method
