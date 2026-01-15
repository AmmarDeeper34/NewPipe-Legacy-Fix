.class public Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "MediaSessionPlayerUi.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final ignoreHardwareMediaButtonsKey:Ljava/lang/String;

.field private final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private prevNotificationActions:Ljava/util/List;

.field private final sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

.field private shouldIgnoreHardwareMediaButtons:Z


# direct methods
.method public static synthetic $r8$lambda$-JQW4YzOY1GUrGczA4d8BovI-SQ(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;
    .locals 4

    .line 164
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$34Bsr-hVwnpExJbAarlUhqdydQM(I)[Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;
    .locals 0

    .line 218
    new-array p0, p0, [Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;

    return-object p0
.end method

.method public static synthetic $r8$lambda$8PsM_NxoWMM-3Y3BDdf8-a4iu3M(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;Landroid/content/Intent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->lambda$initPlayer$0(Lcom/google/android/exoplayer2/Player;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BOusX0-AzHTLS4q2IExjEKkzhwk(Landroid/support/v4/media/MediaMetadataCompat$Builder;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 174
    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 175
    const-string v0, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    return-void
.end method

.method public static synthetic $r8$lambda$DlOY3ZcN9lo_D6lHJaZpxlrbkRo(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->lambda$initPlayer$1(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LOZEg8KS8h_YGdaME0sxiEUtRw8(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lorg/schabi/newpipe/player/notification/NotificationActionData;)Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->lambda$updateMediaSessionActions$8(Lorg/schabi/newpipe/player/notification/NotificationActionData;)Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MpRrmZ9x8FDkDm3mCbxFiPeQB-s(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->lambda$updateMediaSessionActions$7(I)Lorg/schabi/newpipe/player/notification/NotificationActionData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZIBDEoo2sv3HCpz2XKbEPT1HHks(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z
    .locals 0

    .line 163
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Zwg34ttDlwngqmQVk0mgoqKjx6I(ZLandroid/graphics/Bitmap;)Z
    .locals 0

    .line 0
    return p0
.end method

.method public static synthetic $r8$lambda$mPWe7f00X-YO--MLGTtYSs--2L0(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->lambda$updateMediaSessionActions$6(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 58
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 59
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const p2, 0x7f1201f0

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    return-object p0
.end method

.method static synthetic access$100(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    return-object p0
.end method

.method static synthetic access$200(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    return-object p0
.end method

.method private buildMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 4

    .line 152
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "MediaSessUi"

    const-string v1, "buildMediaMetadata called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 158
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 159
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda8;-><init>()V

    .line 163
    invoke-virtual {v1, v2}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda9;-><init>()V

    .line 164
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 166
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 169
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v3, 0x7f12044c

    .line 170
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 169
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda10;-><init>(Z)V

    .line 172
    invoke-virtual {v2, v3}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda11;-><init>(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V

    .line 173
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method private getForwardingPlayer()Lcom/google/android/exoplayer2/ForwardingPlayer;
    .locals 2

    .line 136
    new-instance v0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)V

    return-object v0
.end method

.method private synthetic lambda$initPlayer$0(Lcom/google/android/exoplayer2/Player;Landroid/content/Intent;)Z
    .locals 0

    .line 76
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    return p1
.end method

.method private synthetic lambda$initPlayer$1(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->buildMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$updateMediaSessionActions$6(I)I
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 205
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    aget p1, v2, p1

    .line 204
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$updateMediaSessionActions$7(I)Lorg/schabi/newpipe/player/notification/NotificationActionData;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 208
    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->fromNotificationActionEnum(Lorg/schabi/newpipe/player/Player;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$updateMediaSessionActions$8(Lorg/schabi/newpipe/player/notification/NotificationActionData;)Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;
    .locals 2

    .line 217
    new-instance v0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;-><init>(Lorg/schabi/newpipe/player/notification/NotificationActionData;Landroid/content/Context;)V

    return-object v0
.end method

.method private updateMediaSessionActions()V
    .locals 3

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 203
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 204
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 207
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda3;-><init>()V

    .line 209
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 210
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 215
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 216
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 217
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda5;-><init>()V

    .line 218
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 215
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomActionProviders([Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroyPlayer()V
    .locals 2

    .line 92
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroyPlayer()V

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 98
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    return-void
.end method

.method public getSessionToken()Lj$/util/Optional;
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public handleMediaButtonIntent(Landroid/content/Intent;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {v0, p1}, Landroidx/media/session/MediaButtonReceiver;->handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;

    return-void
.end method

.method public initPlayer()V
    .locals 5

    .line 65
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayer()V

    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->destroyPlayer()V

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;

    iget-object v3, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->getForwardingPlayer()Lcom/google/android/exoplayer2/ForwardingPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateShouldIgnoreHardwareMediaButtons(Landroid/content/SharedPreferences;)V

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMetadataDeduplicationEnabled(Z)V

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaMetadataProvider(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;)V

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onBlocked()V
    .locals 0

    .line 224
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBlocked()V

    .line 225
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1

    .line 272
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 273
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    :cond_0
    return-void
.end method

.method public onBuffering()V
    .locals 0

    .line 236
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBuffering()V

    .line 237
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 254
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCompleted()V

    .line 255
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 282
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onPaused()V
    .locals 0

    .line 242
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPaused()V

    .line 243
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onPausedSeek()V
    .locals 0

    .line 248
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPausedSeek()V

    .line 249
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 0

    .line 287
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlayQueueEdited()V

    .line 288
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onPlaying()V
    .locals 0

    .line 230
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaying()V

    .line 231
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRepeatModeChanged(I)V

    .line 261
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 113
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateShouldIgnoreHardwareMediaButtons(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 266
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onShuffleModeEnabledChanged(Z)V

    .line 267
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    return-void
.end method

.method public onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    return-void
.end method

.method public updateShouldIgnoreHardwareMediaButtons(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 119
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    return-void
.end method
