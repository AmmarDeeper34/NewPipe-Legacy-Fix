.class public final Lorg/schabi/newpipe/player/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playback/PlaybackListener;
.implements Lcom/google/android/exoplayer2/Player$Listener;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "Player"


# instance fields
.field private final UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

.field private activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

.field private audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

.field private final audioResolver:Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field private currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

.field private currentState:I

.field private currentThumbnail:Landroid/graphics/Bitmap;

.field private final currentThumbnailTarget:Lcom/squareup/picasso/Target;

.field private final databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

.field private intentFilter:Landroid/content/IntentFilter;

.field private isAudioOnly:Z

.field private isPrepared:Z

.field private final loadController:Lorg/schabi/newpipe/player/helper/LoadController;

.field private playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private playQueueManager:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

.field private playerType:Lorg/schabi/newpipe/player/PlayerType;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

.field private final recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field private final renderFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

.field private final service:Lorg/schabi/newpipe/player/PlayerService;

.field private simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;


# direct methods
.method public static synthetic $r8$lambda$1V6mp2HNGz5AZ0lxhHVUZvskar4(ZLorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    .line 1341
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMuteUnmuteChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7raUWl7S18Z4cWDiiML-7Q-xYc(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->lambda$handleIntent$2(Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D_qaQyM01kTb2R0zqj_IGG7Bo54(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->lambda$useVideoSource$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$Edad98hXMHwozF0ckoMI9K6BEtc(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 1

    .line 2049
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSortedVideoStreams()Ljava/util/List;

    move-result-object v0

    .line 2050
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSelectedVideoStreamIndex()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Es5CdDAzKEeoNCA--LqRomzmWrA(Lorg/schabi/newpipe/player/Player;)Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->lambda$initUIsForCurrentPlayerType$5()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HRdd8gx_C092aye61ADVk9ufirI(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->lambda$handleIntent$0(Lorg/schabi/newpipe/player/TimestampChangeData;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L2BmLCWXtg95Yly3ev5KNuSTElo(Lcom/google/android/exoplayer2/Tracks;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1421
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5kntxaYnBMZ6ikF0UVR2jJylM8(Lorg/schabi/newpipe/player/Player;JLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->lambda$saveStreamProgressState$22(JLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MP_61_8QmV2cq7u4WDhV4gAxC2E(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1924
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4SdVc2EDJUqOufVImOnmRmMeFE(Lcom/google/android/exoplayer2/text/CueGroup;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1487
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1vNexNrTFcHw4ZuDZF4ODGzNuk(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->lambda$handleIntent$1(Lorg/schabi/newpipe/player/TimestampChangeData;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TtdK3HuUJr82Wm6ta79LcLTyOtA(Lorg/schabi/newpipe/player/Player;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->lambda$getProgressUpdateDisposable$9(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGh2TcnuUkDho2zOrCphSgd1mSs(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;)Z
    .locals 1

    .line 2045
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSelectedVideoStreamIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2047
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSortedVideoStreams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$UhU8R-7grbmNuAJcrE1tpklx2J4(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->lambda$notifyMetadataUpdateToListeners$28(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vr8xp7X1KFagsHRH_60zHCleESo(Lcom/google/android/exoplayer2/PlaybackParameters;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1430
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VtQA2MLkxnwHcSuNoUVIAy9LG1g(Ljava/lang/Throwable;)V
    .locals 2

    .line 1039
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "Progress update failure: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$WQPNrebNuzWCVGw_sVKVDG6G9lo(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->lambda$saveStreamProgressStateCompleted$23(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCiUNy9b8BRjJE_vBlIbG1m64jQ(ILorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1296
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRepeatModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOsIFq1Ly2gKvnyOdP-Z8Q-TeWQ(ZLorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1315
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXd4lGZrcuY96PzWjyqRxXzqWM4(Landroid/graphics/Bitmap;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 942
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_13mFzuJfQS7JvR9DjfhqtNCmbE(Landroid/content/Intent;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 852
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$agXgOgTJ9bROHLYIZgIlJBf_GvI(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->lambda$registerStreamViewed$20(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axAkjYCHg1GylYvXSb8zoEbvF3s(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/player/Player;->lambda$onEvents$15(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5pV3WlcumFnFOn39AudY5UIaRc(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->lambda$handleIntent$4(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$d7qBQHBVdS7UEH2WNBAx68LA9q0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1872
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$eoGHsnvmVujpwbSBn1aA410bTN4(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->lambda$getVideoRendererIndex$31(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i4JIeiX3zRjRj1ltH3DPHa4exoM(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)Ljava/lang/Boolean;
    .locals 0

    .line 1406
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getSelectedAudioStreamIndex()I

    move-result p1

    .line 1407
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getSelectedAudioStreamIndex()I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1406
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rdMzvcoSlkHwCRE0uKTISAyn_0Q(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->lambda$onEvents$16(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sc_gzUxT06XTEOfr2b0RgX8SSzA(Lcom/google/android/exoplayer2/video/VideoSize;Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 2097
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vG1fIpCBr8y0wxvy3EpwnEv9XNA(IIILorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 1008
    invoke-virtual {p3, p0, p1, p2}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onUpdateProgress(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLOoAN-YP_E-J6lLfjBRToze9Og(Lorg/schabi/newpipe/player/Player;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->lambda$useVideoSource$29(ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z862Enoy6HhaPYKAAfILZywqAGM(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLjava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->lambda$handleIntent$3(Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLjava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lorg/schabi/newpipe/player/Player;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBroadcastReceived(Lorg/schabi/newpipe/player/Player;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->onBroadcastReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monThumbnailLoaded(Lorg/schabi/newpipe/player/Player;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 144
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V
    .locals 5

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    const/4 v0, -0x1

    .line 229
    iput v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 234
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 247
    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 250
    new-instance v1, Lio/reactivex/rxjava3/disposables/SerialDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    .line 252
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 254
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 290
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 291
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    .line 292
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 293
    new-instance v2, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 295
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->setupBroadcastReceiver()V

    .line 297
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getQualitySelector()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    iput-object v2, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 298
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 300
    new-instance v3, Lorg/schabi/newpipe/player/helper/LoadController;

    invoke-direct {v3}, Lorg/schabi/newpipe/player/helper/LoadController;-><init>()V

    iput-object v3, p0, Lorg/schabi/newpipe/player/Player;->loadController:Lorg/schabi/newpipe/player/helper/LoadController;

    const v3, 0x7f120029

    .line 303
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    new-instance v3, Lorg/schabi/newpipe/player/helper/CustomRenderersFactory;

    invoke-direct {v3, p1}, Lorg/schabi/newpipe/player/helper/CustomRenderersFactory;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, p0, Lorg/schabi/newpipe/player/Player;->renderFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    const v4, 0x7f1204b0

    .line 309
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 307
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 312
    new-instance v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->getQualityResolver()Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    .line 313
    new-instance v1, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

    invoke-direct {v1, p1, v2}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/player/helper/PlayerDataSource;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

    .line 315
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentThumbnailTarget()Lcom/squareup/picasso/Target;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnailTarget:Lcom/squareup/picasso/Target;

    .line 321
    new-instance p1, Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-direct {v1, p0, p2, p3}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    new-instance p2, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    const/4 p3, 0x2

    new-array p3, p3, [Lorg/schabi/newpipe/player/ui/PlayerUi;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    aput-object p2, p3, v0

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/player/ui/PlayerUiList;-><init>([Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    return-void
.end method

.method private cancelLoadingCurrentThumbnail()V
    .locals 1

    .line 933
    const-string v0, "PICASSO_PLAYER_THUMBNAIL_TAG"

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method private createErrorNotification(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 9

    .line 1601
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    const-string v1, "Player error[type="

    if-nez v0, :cond_0

    .line 1602
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] occurred, currentMetadata is null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] occurred while playing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1608
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1609
    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getServiceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, v3

    .line 1611
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private destroyPlayer()V
    .locals 2

    .line 666
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 667
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "destroyPlayer() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 671
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 673
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 674
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 676
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->stopProgressLoop()V

    .line 679
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_3

    .line 680
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->dispose()V

    .line 682
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/AudioReactor;->dispose()V

    .line 685
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueueManager:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    if-eqz v0, :cond_5

    .line 686
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->dispose()V

    :cond_5
    return-void
.end method

.method private getCurrentThumbnailTarget()Lcom/squareup/picasso/Target;
    .locals 1

    .line 881
    new-instance v0, Lorg/schabi/newpipe/player/Player$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/Player$3;-><init>(Lorg/schabi/newpipe/player/Player;)V

    return-object v0
.end method

.method private static getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 3

    .line 564
    const-string v0, "play_queue_key"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 568
    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/util/SerializedCache;->getInstance()Lorg/schabi/newpipe/util/SerializedCache;

    move-result-object v1

    const-class v2, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1, p0, v2}, Lorg/schabi/newpipe/util/SerializedCache;->take(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private getProgressUpdateDisposable()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 4

    .line 1035
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1036
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 1035
    invoke-static {v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 1037
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/player/Player;)V

    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda19;-><init>()V

    .line 1038
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private getQualityResolver()Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;
    .locals 1

    .line 328
    new-instance v0, Lorg/schabi/newpipe/player/Player$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/Player$1;-><init>(Lorg/schabi/newpipe/player/Player;)V

    return-object v0
.end method

.method private getVideoRendererIndex()I
    .locals 4

    .line 2446
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 2447
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2454
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    invoke-static {v2, v3}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;-><init>(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)V

    .line 2456
    invoke-interface {v2, v3}, Lj$/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 2459
    invoke-interface {v0}, Lj$/util/stream/IntStream;->findFirst()Lj$/util/OptionalInt;

    move-result-object v0

    .line 2461
    invoke-virtual {v0, v1}, Lj$/util/OptionalInt;->orElse(I)I

    move-result v0

    return v0
.end method

.method private initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 2

    .line 609
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->destroyPlayer()V

    .line 610
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/player/Player;->initPlayer(Z)V

    .line 611
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120368

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    move-result v1

    .line 611
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 613
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrievePlaybackParametersFromPrefs(Lorg/schabi/newpipe/player/Player;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 614
    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-virtual {p0, v1, v0, p2}, Lorg/schabi/newpipe/player/Player;->setPlaybackParameters(FFZ)V

    .line 616
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 617
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->init()V

    .line 618
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 620
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda36;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda36;-><init>()V

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 622
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 623
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyQueueUpdateToListeners()V

    return-void
.end method

.method private initPlayer(Z)V
    .locals 4

    .line 627
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayer() called with: playOnReady = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->renderFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 632
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->loadController:Lorg/schabi/newpipe/player/helper/LoadController;

    .line 633
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 634
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUsePlatformDiagnostics(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 636
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 637
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 638
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getSeekParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 639
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setWakeMode(I)V

    .line 640
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setHandleAudioBecomingNoisy(Z)V

    .line 642
    new-instance p1, Lorg/schabi/newpipe/player/helper/AudioReactor;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p1, v2, v3}, Lorg/schabi/newpipe/player/helper/AudioReactor;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 644
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->registerBroadcastReceiver()V

    .line 647
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 650
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    const v3, 0x7f1200f8

    .line 651
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 652
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    :cond_1
    return-void
.end method

.method private initUIsForCurrentPlayerType()V
    .locals 6

    .line 576
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v2, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 577
    const-class v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v3, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    const-class v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v4, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda37;

    invoke-direct {v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda37;-><init>()V

    invoke-virtual {v0, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v4, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;

    invoke-direct {v4, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 584
    invoke-virtual {v0, v4}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 592
    sget-object v4, Lorg/schabi/newpipe/player/Player$4;->$SwitchMap$org$schabi$newpipe$player$PlayerType:[I

    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v2, 0x2

    if-eq v4, v2, :cond_4

    const/4 v0, 0x3

    if-eq v4, v0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    return-void

    .line 598
    :cond_4
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 599
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    return-void

    .line 594
    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 595
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    return-void
.end method

.method private isLive()Z
    .locals 4

    const/4 v0, 0x0

    .line 2338
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemDynamic()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return v0

    .line 2341
    :goto_0
    sget-boolean v2, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2342
    sget-object v2, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v3, "player.isCurrentWindowDynamic() failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method private synthetic lambda$getProgressUpdateDisposable$9(Ljava/lang/Long;)V
    .locals 0

    .line 1038
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method private synthetic lambda$getVideoRendererIndex$31(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z
    .locals 0

    .line 2456
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 2457
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$handleIntent$0(Lorg/schabi/newpipe/player/TimestampChangeData;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 5

    .line 414
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 415
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p3, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStartPosition(J)V

    .line 416
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v1, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    const/4 p3, 0x1

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 426
    iget-object p3, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 428
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 429
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getSeconds()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 428
    invoke-interface {p3, v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 430
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 437
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {v0, v1, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V

    .line 443
    invoke-virtual {v0, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    .line 446
    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$handleIntent$1(Lorg/schabi/newpipe/player/TimestampChangeData;Ljava/lang/Throwable;)V
    .locals 6

    .line 453
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

    .line 454
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 455
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$2(Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 3

    .line 523
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isFinished(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 526
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->getProgressMillis()J

    move-result-wide v1

    .line 525
    invoke-virtual {p1, v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V

    .line 528
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$handleIntent$3(Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZLjava/lang/Throwable;)V
    .locals 2

    .line 531
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start playback"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$handleIntent$4(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 0

    .line 539
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$initUIsForCurrentPlayerType$5()Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 2

    .line 585
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$notifyMetadataUpdateToListeners$28(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 2158
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_0

    .line 2159
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-interface {v0, p1, v1}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 2161
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    .line 2162
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-interface {v0, p1, v1}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onEvents$15(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 1398
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1399
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onEvents() update stream info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    .line 1401
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 1405
    invoke-interface {p3}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    move-result-object p1

    new-instance p3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    invoke-direct {p3, p2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V

    .line 1406
    invoke-virtual {p1, p3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    .line 1408
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 1409
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyAudioTrackUpdateToListeners()V

    return-void

    .line 1403
    :cond_4
    :goto_1
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/Player;->updateMetadataWith(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method private synthetic lambda$onEvents$16(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V
    .locals 9

    .line 1375
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-ne p1, v0, :cond_0

    return-void

    .line 1378
    :cond_0
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda34;-><init>()V

    .line 1379
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1380
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1381
    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 1382
    invoke-virtual {v2, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 1383
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1385
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1387
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1388
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getErrors()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading failed for ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1390
    invoke-interface {v6}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1391
    invoke-interface {v6}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1392
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1393
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1394
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 1397
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeStreamInfo()Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V

    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$registerStreamViewed$20(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 1855
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 1856
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->onViewed(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Maybe;->onErrorComplete()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private synthetic lambda$saveStreamProgressState$22(JLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 1861
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    const v2, 0x7f12013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1864
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1865
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveStreamProgressState() called with: progressMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentMetadata=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1865
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {v1, p3, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->saveStreamState(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 1870
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda39;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda39;-><init>()V

    .line 1871
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 1876
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->onErrorComplete()Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 1877
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 1869
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private synthetic lambda$saveStreamProgressStateCompleted$23(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 4

    .line 1898
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState(J)V

    return-void
.end method

.method private synthetic lambda$useVideoSource$29(ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 2208
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->getStreamSourceType()Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 2209
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 2211
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->getVideoRendererIndex()I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lorg/schabi/newpipe/player/Player;->playQueueManagerReloadingNeeded(Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;Lorg/schabi/newpipe/extractor/stream/StreamInfo;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2212
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 2215
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 2218
    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x3

    .line 2219
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x2

    xor-int/lit8 p1, p1, 0x1

    .line 2220
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 2218
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    return-void
.end method

.method private synthetic lambda$useVideoSource$30()V
    .locals 0

    .line 2229
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 2230
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    return-void
.end method

.method private loadCurrentThumbnail(Ljava/util/List;)V
    .locals 3

    .line 910
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 911
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail - loadCurrentThumbnail() called with thumbnails = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->cancelLoadingCurrentThumbnail()V

    const/4 v0, 0x0

    .line 920
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 921
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadScaledDownThumbnail(Landroid/content/Context;Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const-string v0, "PICASSO_PLAYER_THUMBNAIL_TAG"

    .line 927
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnailTarget:Lcom/squareup/picasso/Target;

    .line 928
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method

.method private maybeAutoQueueNextStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 1974
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1975
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    .line 1976
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoQueueEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1980
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 1981
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    .line 1980
    invoke-static {p1, v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->autoQueueOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1983
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyAudioTrackUpdateToListeners()V
    .locals 1

    .line 2190
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_0

    .line 2191
    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onAudioTrackUpdate()V

    .line 2193
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    .line 2194
    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onAudioTrackUpdate()V

    :cond_1
    return-void
.end method

.method private notifyMetadataUpdateToListeners()V
    .locals 2

    .line 2157
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyPlaybackUpdateToListeners()V
    .locals 5

    .line 2168
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    iget v1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2170
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    move-result v3

    iget-object v4, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    .line 2169
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 2172
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    .line 2173
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    iget v1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2174
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    move-result v3

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    .line 2173
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_1
    return-void
.end method

.method private notifyProgressUpdateToListeners(III)V
    .locals 1

    .line 2181
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_0

    .line 2182
    invoke-interface {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onProgressUpdate(III)V

    .line 2184
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    .line 2185
    invoke-interface {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onProgressUpdate(III)V

    :cond_1
    return-void
.end method

.method private notifyQueueUpdateToListeners()V
    .locals 2

    .line 2148
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v1, :cond_0

    .line 2149
    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 2151
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v1, :cond_1

    .line 2152
    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_1
    return-void
.end method

.method private onBlocked()V
    .locals 2

    .line 1192
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onBlocked() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->startProgressLoop()V

    .line 1199
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onBroadcastReceived(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_d

    .line 809
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 813
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 814
    sget-object v1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBroadcastReceived() called with: intent = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 840
    :pswitch_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->cycleNextRepeatMode()V

    goto :goto_1

    .line 834
    :pswitch_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->fastRewind()V

    goto :goto_1

    .line 837
    :pswitch_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->fastForward()V

    goto :goto_1

    .line 843
    :pswitch_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->toggleShuffleModeEnabled()V

    goto :goto_1

    :pswitch_4
    if-eqz v0, :cond_c

    .line 847
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_CONFIGURATION_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    :pswitch_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    goto :goto_1

    .line 822
    :pswitch_6
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    goto :goto_1

    .line 819
    :pswitch_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->pause()V

    goto :goto_1

    .line 825
    :pswitch_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPause()V

    goto :goto_1

    .line 831
    :pswitch_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playNext()V

    .line 852
    :cond_c
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    :cond_d
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47dd0651 -> :sswitch_9
        -0x4518581b -> :sswitch_8
        -0x20bccddb -> :sswitch_7
        -0xe9f8483 -> :sswitch_6
        -0xb199c4d -> :sswitch_5
        0x9780086 -> :sswitch_4
        0x165523aa -> :sswitch_3
        0x2cba0391 -> :sswitch_2
        0x57712e4f -> :sswitch_1
        0x7aa46975 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onBuffering()V
    .locals 2

    .line 1214
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1215
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onBuffering() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onCompleted()V
    .locals 3

    .line 1241
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1242
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleted() called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez v2, :cond_0

    const-string v2, ". playQueue is null"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez v0, :cond_2

    goto :goto_1

    .line 1248
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 1250
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 1251
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    .line 1253
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1254
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->stopProgressLoop()V

    :cond_4
    :goto_1
    return-void
.end method

.method private onPaused()V
    .locals 2

    .line 1222
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1223
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPaused() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->stopProgressLoop()V

    .line 1230
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onPausedSeek()V
    .locals 2

    .line 1234
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1235
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPausedSeek() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onPlaying()V
    .locals 2

    .line 1203
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1204
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPlaying() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->startProgressLoop()V

    .line 1210
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onPrepared(Z)V
    .locals 3

    .line 1180
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1181
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() called with: playWhenReady = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_1

    .line 1186
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1187
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->requestAudioFocus()V

    :cond_1
    return-void
.end method

.method private onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 940
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 941
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnail:Landroid/graphics/Bitmap;

    .line 942
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda43;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda43;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private onUpdateProgress(III)V
    .locals 2

    .line 1007
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;-><init>(III)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 1009
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->notifyProgressUpdateToListeners(III)V

    :cond_0
    return-void
.end method

.method private playQueueManagerReloadingNeeded(Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;Lorg/schabi/newpipe/extractor/stream/StreamInfo;I)Z
    .locals 4

    .line 2265
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    .line 2266
    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isAudio(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    if-nez v1, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_4

    .line 2275
    sget-object p3, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, p3, :cond_1

    sget-object p3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    if-ne p1, p3, :cond_1

    goto :goto_1

    .line 2285
    :cond_1
    sget-object p3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    if-eq p1, p3, :cond_3

    sget-object p3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    if-ne p1, p3, :cond_2

    .line 2287
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    .line 2290
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isVideo(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .line 857
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->unregisterBroadcastReceiver()V

    .line 858
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerStreamViewed()V
    .locals 2

    .line 1855
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private saveStreamProgressState(J)V
    .locals 2

    .line 1860
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/player/Player;J)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private seekBy(J)V
    .locals 3

    .line 1724
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1725
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBy() called with: offsetMillis = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    return-void
.end method

.method private setRecovery(IJ)V
    .locals 3

    .line 724
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 729
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting recovery, queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .line 775
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 776
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "setupBroadcastReceiver() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/Player$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/Player$2;-><init>(Lorg/schabi/newpipe/player/Player;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 785
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    .line 787
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private stopProgressLoop()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .line 864
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 866
    sget-object v1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast receiver already unregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMetadataWith(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 1910
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1911
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playback - onMetadataChanged() called, playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1917
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->maybeAutoQueueNextStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1919
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/Player;->loadCurrentThumbnail(Ljava/util/List;)V

    .line 1920
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->registerStreamViewed()V

    .line 1922
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyMetadataUpdateToListeners()V

    .line 1923
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyAudioTrackUpdateToListeners()V

    .line 1924
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda50;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda50;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updatePlaybackState(ZI)V
    .locals 4

    .line 1072
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1073
    sget-object v1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExoPlayer - updatePlaybackState() called with: playWhenReady = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], playbackState = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_7

    .line 1080
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string p2, "updatePlaybackState() is currently blocked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x80

    .line 1102
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 1103
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressStateCompleted()V

    .line 1104
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    return-void

    .line 1095
    :cond_3
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    if-nez p2, :cond_4

    .line 1096
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    .line 1097
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->onPrepared(Z)V

    :cond_4
    if-eqz p1, :cond_5

    const/16 p1, 0x7c

    goto :goto_0

    :cond_5
    const/16 p1, 0x7e

    .line 1099
    :goto_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    return-void

    .line 1090
    :cond_6
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x7d

    .line 1091
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    :cond_7
    :goto_1
    return-void

    .line 1087
    :cond_8
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    return-void
.end method


# virtual methods
.method public UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;
    .locals 1

    .line 2433
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    return-object v0
.end method

.method public audioPlayerSelected()Z
    .locals 2

    .line 2380
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public changeState(I)V
    .locals 3

    .line 1152
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1153
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() called with: state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1173
    :pswitch_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onCompleted()V

    goto :goto_0

    .line 1170
    :pswitch_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onPausedSeek()V

    goto :goto_0

    .line 1167
    :pswitch_2
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onPaused()V

    goto :goto_0

    .line 1164
    :pswitch_3
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onBuffering()V

    goto :goto_0

    .line 1161
    :pswitch_4
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onPlaying()V

    goto :goto_0

    .line 1158
    :pswitch_5
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onBlocked()V

    .line 1176
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cycleNextRepeatMode()V
    .locals 2

    .line 1272
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1286
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 691
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "destroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 696
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 697
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->stopActivityBinding()V

    .line 699
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->destroyPlayer()V

    .line 700
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->unregisterBroadcastReceiver()V

    .line 702
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 703
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 704
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 705
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->cancelLoadingCurrentThumbnail()V

    .line 707
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    return-void
.end method

.method public disablePreloadingOfCurrentTrack()V
    .locals 1

    .line 2038
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->loadController:Lorg/schabi/newpipe/player/helper/LoadController;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/LoadController;->disablePreloadingOfCurrentTrack()V

    return-void
.end method

.method public exoPlayerIsNull()Z
    .locals 1

    .line 2313
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fastForward()V
    .locals 2

    .line 1831
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1832
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "fastRewind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->seekBy(J)V

    .line 1835
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public fastRewind()V
    .locals 2

    .line 1839
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1840
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "fastRewind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->seekBy(J)V

    .line 1843
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public getAudioReactor()Lorg/schabi/newpipe/player/helper/AudioReactor;
    .locals 1

    .line 2398
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    return-object v0
.end method

.method public getCaptionRendererIndex()I
    .locals 4

    .line 2068
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2072
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2073
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 2366
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 1

    .line 2421
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-object v0
.end method

.method public getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
    .locals 1

    .line 2416
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 2309
    iget v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    return v0
.end method

.method public getCurrentStreamInfo()Lj$/util/Optional;
    .locals 2

    .line 2305
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .line 2317
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getFragmentListener()Lj$/util/Optional;
    .locals 1

    .line 2425
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 2394
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 2329
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 971
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0

    .line 974
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackPitch()F
    .locals 1

    .line 963
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    return v0
.end method

.method public getPlaybackSkipSilence()Z
    .locals 1

    .line 967
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getSkipSilenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 955
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public getPlayerType()Lorg/schabi/newpipe/player/PlayerType;
    .locals 1

    .line 2376
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    return-object v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 2371
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1268
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSelectedAudioStream()Lj$/util/Optional;
    .locals 2

    .line 2054
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 2055
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>()V

    .line 2056
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedVideoStream()Lj$/util/Optional;
    .locals 2

    .line 2042
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda47;-><init>()V

    .line 2043
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>()V

    .line 2044
    invoke-virtual {v0, v1}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda49;-><init>()V

    .line 2049
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/schabi/newpipe/player/PlayerService;
    .locals 1

    .line 2402
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1962
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 1

    .line 2411
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 1955
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    const v1, 0x7f1204a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1957
    :cond_0
    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 2

    .line 1948
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-nez v0, :cond_0

    .line 1949
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    const v1, 0x7f1204a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1950
    :cond_0
    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 2

    .line 1929
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-nez v0, :cond_0

    .line 1930
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    const v1, 0x7f1204a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_0
    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoUrlAtCurrentTime()Ljava/lang/String;
    .locals 6

    .line 1936
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1937
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 1938
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->isLive()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-eqz v3, :cond_0

    .line 1939
    invoke-interface {v3}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getServiceId()I

    move-result v3

    sget-object v4, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&t="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 10

    .line 356
    const-string v0, "player_intent_type"

    const-class v1, Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {p1, v0, v1}, Landroidx/core/content/IntentCompat;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 364
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    if-eq v0, v1, :cond_1

    .line 365
    const-string v1, "player_type"

    const-class v2, Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p1, v1, v2}, Landroidx/core/content/IntentCompat;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/PlayerType;

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 367
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->initUIsForCurrentPlayerType()V

    .line 368
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->audioPlayerSelected()Z

    move-result v1

    iput-boolean v1, p0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 370
    const-string v1, "playback_quality"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->setPlaybackQuality(Ljava/lang/String;)V

    .line 374
    :cond_2
    const-string v1, "play_when_ready"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 376
    sget-object v3, Lorg/schabi/newpipe/player/Player$4;->$SwitchMap$org$schabi$newpipe$player$PlayerIntentType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 407
    :cond_3
    const-string v0, "player_intent_data"

    const-class v2, Lorg/schabi/newpipe/player/TimestampChangeData;

    invoke-static {p1, v0, v2}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/TimestampChangeData;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/TimestampChangeData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 411
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 412
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;Z)V

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;)V

    .line 413
    invoke-virtual {v0, v3, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 411
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_8

    .line 393
    invoke-static {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 398
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p1, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V

    return-void

    .line 378
    :cond_6
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_8

    .line 379
    invoke-static {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 383
    :cond_7
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    return-void

    .line 464
    :cond_8
    :goto_0
    invoke-static {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_1
    return-void

    .line 470
    :cond_9
    iget-object v4, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 482
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v5

    const-wide/high16 v6, -0x8000000000000000L

    if-nez v5, :cond_c

    .line 483
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v5

    if-ne v5, v2, :cond_c

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v5, :cond_c

    .line 484
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v5

    if-ne v5, v2, :cond_c

    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 485
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v5

    iget-object v8, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v8}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 486
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_c

    .line 489
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 491
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 493
    :cond_b
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 494
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    .line 496
    :cond_c
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v5

    if-nez v5, :cond_e

    if-eqz v4, :cond_e

    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v5, :cond_e

    .line 499
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isDisposed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 503
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 505
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 507
    :cond_d
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    .line 509
    :cond_e
    const-string v2, "resume_playback"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    .line 510
    invoke-static {p1}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz p1, :cond_f

    .line 512
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 513
    :cond_f
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 514
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 515
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    move-result-wide v2

    cmp-long p1, v2, v6

    if-nez p1, :cond_10

    .line 516
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->loadStreamState(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v2

    .line 517
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    new-instance v4, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    new-instance v5, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 521
    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    :cond_10
    if-eqz v4, :cond_11

    .line 545
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    :cond_11
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method public handleIntentPost(Lorg/schabi/newpipe/player/PlayerType;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 558
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 559
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->sendPlayerStartedEvent(Landroid/content/Context;)V

    return-void
.end method

.method public isApproachingPlaybackEdge(J)Z
    .locals 6

    .line 1626
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->isLive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1630
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    .line 1631
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, p1

    if-gez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public isAudioOnly()Z
    .locals 1

    .line 2406
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    return v0
.end method

.method public isLiveEdge()Z
    .locals 6

    .line 1642
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1646
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1647
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 1648
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-ltz v2, :cond_2

    .line 1649
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 1653
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1654
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1655
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v2

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isLoading()Z
    .locals 1

    .line 2333
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMuted()Z
    .locals 2

    .line 1346
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 2325
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressLoopRunning()Z
    .locals 1

    .line 1022
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->get()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStopped()Z
    .locals 2

    .line 2321
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 2

    .line 1487
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/text/CueGroup;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    .line 1373
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    .line 1374
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1111
    iget v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->stopProgressLoop()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1113
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1114
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->startProgressLoop()V

    :cond_1
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 2

    .line 2007
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 2008
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda33;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 3

    .line 1051
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1052
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onPlayWhenReadyChanged() called with: playWhenReady = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], reason = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p2

    .line 1059
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/Player;->updatePlaybackState(ZI)V

    return-void
.end method

.method public onPlaybackBlock()V
    .locals 2

    .line 1120
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1123
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1124
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "Playback - onPlaybackBlock() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 1127
    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 1128
    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 1129
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    const/4 v0, 0x0

    .line 1130
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    const/16 v0, 0x7b

    .line 1132
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 1426
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1427
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - playbackParameters(), speed = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], pitch = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPlaybackShutdown()V
    .locals 2

    .line 746
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPlaybackShutdown() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    .line 1064
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1065
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onPlaybackStateChanged() called with: playbackState = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayWhenReady()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/player/Player;->updatePlaybackState(ZI)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlaybackSynchronize(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V
    .locals 7

    .line 1660
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    const-string v1, "]"

    if-eqz v0, :cond_0

    .line 1661
    sget-object v2, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playback - onPlaybackSynchronize(was blocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") called with item=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], url=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1661
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v2, :cond_c

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-ne v3, p1, :cond_1

    goto/16 :goto_2

    .line 1668
    :cond_1
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v2

    .line 1669
    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v3

    .line 1670
    iget-object v4, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    .line 1671
    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-eqz v5, :cond_3

    .line 1672
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v5

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 1673
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 1675
    :goto_1
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 1677
    iget-object v6, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v6}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v6

    if-eq v2, v6, :cond_4

    .line 1680
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Playback - Play Queue may be not in sync: item index=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], queue index=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 1681
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1680
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-lez v4, :cond_5

    if-ge v2, v4, :cond_6

    :cond_5
    if-gez v2, :cond_7

    .line 1686
    :cond_6
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Playback - Trying to seek to invalid index=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] with playlist length=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-nez p2, :cond_8

    if-ne v3, v2, :cond_8

    .line 1689
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_8
    if-eqz v0, :cond_9

    .line 1693
    sget-object p2, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playback - Rewinding to correct index=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], from=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], size=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v5, :cond_a

    const/4 p2, 0x0

    .line 1699
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 1703
    :cond_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    move-result-wide v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p2, v0, v3

    if-eqz p2, :cond_b

    .line 1704
    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    move-result-wide v0

    invoke-interface {p2, v2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 1705
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->unsetRecovery(I)V

    return-void

    .line 1707
    :cond_b
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onPlaybackUnblock(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2

    .line 1137
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1138
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "Playback - onPlaybackUnblock() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1144
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7d

    .line 1145
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 1147
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 1148
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    .line 1546
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "ExoPlayer - onPlayerError() called with:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1548
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 1551
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1586
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->onPlaybackShutdown()V

    goto :goto_0

    .line 1571
    :pswitch_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_2

    .line 1572
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->error()V

    goto :goto_0

    .line 1554
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition()V

    .line 1555
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 1558
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->onBuffering()V

    const/4 v0, 0x1

    goto :goto_1

    .line 1581
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 1582
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 1591
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/Player;->createErrorNotification(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 1594
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v1, :cond_4

    .line 1595
    invoke-interface {v1, p1, v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 5

    .line 1437
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1438
    sget-object v1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExoPlayer - onPositionDiscontinuity() called with oldPositionIndex = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], oldPositionMs = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], newPositionIndex = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], newPositionMs = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], discontinuityReason = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1450
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    const/4 p2, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p2, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    const/4 v1, 0x4

    if-eq p3, v1, :cond_2

    const/4 p2, 0x5

    if-eq p3, p2, :cond_5

    goto :goto_0

    .line 1456
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result p3

    if-ne p3, p2, :cond_3

    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 1457
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->registerStreamViewed()V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 1462
    sget-object p2, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string p3, "ExoPlayer - onSeekProcessed() called"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_4
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    if-eqz p2, :cond_5

    .line 1465
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 1470
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p2

    const/16 p3, 0x7b

    if-eq p2, p3, :cond_6

    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 1471
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressStateCompleted()V

    .line 1472
    iget-object p2, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onPrepare()V
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1482
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 3

    .line 1292
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1293
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onRepeatModeChanged() called with: repeatMode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 1297
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 1302
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1303
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onShuffleModeEnabledChanged() called with: mode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1309
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->shuffle()V

    goto :goto_0

    .line 1311
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->unshuffle()V

    .line 1315
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 1316
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 3

    .line 1417
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1418
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayer - onTracksChanged(), track group size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1418
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda30;-><init>(Lcom/google/android/exoplayer2/Tracks;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 4

    .line 2089
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2090
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged() called with: width / height = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], unappliedRotationDegrees = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], pixelWidthHeightRatio = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1769
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1770
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "pause() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/AudioReactor;->abandonAudioFocus()V

    .line 1777
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 1778
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1745
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1746
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "play() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1752
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1753
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/AudioReactor;->requestAudioFocus()V

    .line 1756
    :cond_2
    iget v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    .line 1757
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 1758
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->seekToDefault()V

    goto :goto_0

    .line 1760
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V

    .line 1764
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 1765
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public playNext()V
    .locals 2

    .line 1818
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1819
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPlayNext() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez v0, :cond_1

    return-void

    .line 1825
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 1826
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    .line 1827
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 1782
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1783
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPlayPause() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 1789
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->pause()V

    return-void

    .line 1791
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->play()V

    return-void
.end method

.method public playPrevious()V
    .locals 5

    .line 1796
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1797
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "onPlayPrevious() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez v0, :cond_1

    goto :goto_2

    .line 1806
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 1807
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1811
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 1812
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    goto :goto_1

    .line 1808
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->seekToDefault()V

    .line 1809
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    .line 1814
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    :cond_4
    :goto_2
    return-void
.end method

.method public popupPlayerSelected()Z
    .locals 2

    .line 2388
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reloadPlayQueueManager()V
    .locals 2

    .line 735
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueueManager:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->dispose()V

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    .line 740
    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;-><init>(Lorg/schabi/newpipe/player/playback/PlaybackListener;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueueManager:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    :cond_1
    return-void
.end method

.method removeActivityListener(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V
    .locals 1

    .line 2131
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2132
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    :cond_0
    return-void
.end method

.method public removeFragmentListener(Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;)V
    .locals 1

    .line 2117
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2118
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    :cond_0
    return-void
.end method

.method public saveStreamProgressState()V
    .locals 4

    .line 1882
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    .line 1883
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V

    .line 1892
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveStreamProgressStateCompleted()V
    .locals 2

    .line 1897
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 7

    .line 1713
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1714
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBy() called with: position = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1718
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v3, 0x0

    .line 1719
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v5

    move-wide v1, p1

    .line 1718
    invoke-static/range {v1 .. v6}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public seekToDefault()V
    .locals 1

    .line 1731
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition()V

    :cond_0
    return-void
.end method

.method public selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 1

    .line 1988
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1992
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1997
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 1998
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->seekToDefault()V

    goto :goto_0

    .line 2000
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 2002
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method setActivityListener(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V
    .locals 0

    .line 2123
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 2125
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyMetadataUpdateToListeners()V

    .line 2126
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 2127
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 1

    .line 2356
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 2357
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 2358
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->setAudioTrack(Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->setAudioTrack(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    return-void
.end method

.method public setFragmentListener(Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;)V
    .locals 1

    .line 2108
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 2109
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 2110
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyQueueUpdateToListeners()V

    .line 2111
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyMetadataUpdateToListeners()V

    .line 2112
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 2113
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public setPlaybackParameters(FFZ)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 987
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float p2, p2, v0

    .line 988
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 990
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->savePlaybackParametersToPrefs(Lorg/schabi/newpipe/player/Player;FFZ)V

    .line 991
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 993
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setPlaybackQuality(Ljava/lang/String;)V
    .locals 1

    .line 2349
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 2350
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 2351
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->setPlaybackQuality(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 959
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackPitch()F

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/player/Player;->setPlaybackParameters(FFZ)V

    return-void
.end method

.method public setRecovery()V
    .locals 8

    .line 711
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 716
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    .line 717
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    .line 720
    invoke-static/range {v2 .. v7}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/player/Player;->setRecovery(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public smoothStopForImmediateReusing()V
    .locals 2

    .line 755
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 756
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 757
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public sourceOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    .line 2014
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->audioPlayerSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2015
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 2018
    :cond_0
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->getStreamSourceType()Lj$/util/Optional;

    move-result-object p1

    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    .line 2024
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 2034
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public startProgressLoop()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->getProgressUpdateDisposable()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method stopActivityBinding()V
    .locals 2

    .line 2137
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2138
    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onServiceStopped()V

    .line 2139
    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 2141
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    if-eqz v0, :cond_1

    .line 2142
    invoke-interface {v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onServiceStopped()V

    .line 2143
    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    :cond_1
    return-void
.end method

.method public toggleMute()V
    .locals 3

    .line 1334
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result v0

    .line 1335
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    if-eqz v0, :cond_1

    .line 1337
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->requestAudioFocus()V

    goto :goto_1

    .line 1339
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->abandonAudioFocus()V

    .line 1341
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda29;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 1342
    invoke-direct {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    return-void
.end method

.method public toggleShuffleModeEnabled()V
    .locals 2

    .line 1320
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public triggerProgressUpdate()V
    .locals 3

    .line 1026
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 1031
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getBufferedPercentage()I

    move-result v1

    .line 1030
    invoke-direct {p0, v0, v2, v1}, Lorg/schabi/newpipe/player/Player;->onUpdateProgress(III)V

    return-void
.end method

.method public useVideoSource(Z)V
    .locals 2

    .line 2199
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->audioPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 2203
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 2205
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;-><init>(Lorg/schabi/newpipe/player/Player;Z)V

    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {v0, v1, p1}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public videoPlayerSelected()Z
    .locals 2

    .line 2384
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
