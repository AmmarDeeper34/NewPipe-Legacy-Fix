.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;,
        Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final packageValidator:Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 411
    const-class v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyChildrenChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->packageValidator:Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;

    .line 53
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 54
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 59
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;

    invoke-direct {v1, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static final synthetic access$createHistoryMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createHistoryMediaItem(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createInfoItemMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createInfoItemMediaItem(Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createLocalPlaylistStreamMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;JLorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createLocalPlaylistStreamMediaItem(JLorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPlaylistMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createPlaylistMediaItem(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createRemotePlaylistStreamMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;JLorg/schabi/newpipe/extractor/stream/StreamInfoItem;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createRemotePlaylistStreamMediaItem(JLorg/schabi/newpipe/extractor/stream/StreamInfoItem;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final buildInfoItemMediaId(Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/net/Uri$Builder;
    .locals 3

    .line 254
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildMediaId()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 255
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v1

    const-string v2, "getInfoType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->infoItemTypeToString(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 258
    const-string v1, "url"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 256
    const-string v0, "appendQueryParameter(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final buildLocalPlaylistItemMediaId(ZJ)Landroid/net/Uri$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 249
    const-string p1, "remote"

    goto :goto_0

    :cond_0
    const-string p1, "local"

    :goto_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildPlaylistMediaId(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 250
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "appendPath(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final buildMediaId()Landroid/net/Uri$Builder;
    .locals 2

    .line 239
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "org.schabi.newpipe"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "authority(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildPlaylistMediaId(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 243
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildMediaId()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 244
    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "appendPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createHistoryMediaItem(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 325
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 326
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildMediaId()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 327
    const-string v2, "history"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 328
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->getStreamId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 333
    sget-object v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 335
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 336
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    const/4 v1, 0x2

    .line 335
    invoke-direct {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final createInfoItemMediaItem(Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 217
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 218
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createMediaIdForInfoItem(Lorg/schabi/newpipe/extractor/InfoItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 221
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_1
    const-string v1, "null cannot be cast to non-null type org.schabi.newpipe.extractor.channel.ChannelInfoItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_1

    .line 223
    :cond_2
    const-string v1, "null cannot be cast to non-null type org.schabi.newpipe.extractor.playlist.PlaylistInfoItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_1

    .line 222
    :cond_3
    const-string v1, "null cannot be cast to non-null type org.schabi.newpipe.extractor.stream.StreamInfoItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 228
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    sget-object v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 232
    :cond_4
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 233
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 232
    invoke-direct {p1, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final createLocalPlaylistStreamMediaItem(JLorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    .line 271
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, v1, p1, p2, p4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createMediaIdForPlaylistIndex(ZJI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p1

    .line 275
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 277
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 278
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    const/4 p3, 0x2

    .line 277
    invoke-direct {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final createMediaIdForInfoItem(Lorg/schabi/newpipe/extractor/InfoItem;)Ljava/lang/String;
    .locals 1

    .line 314
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildInfoItemMediaId(Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createMediaIdForInfoItem(ZJ)Ljava/lang/String;
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildLocalPlaylistItemMediaId(ZJ)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createMediaIdForPlaylistIndex(ZJI)Ljava/lang/String;
    .locals 0

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildLocalPlaylistItemMediaId(ZJ)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 309
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createPlaylistMediaItem(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 198
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 200
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getUid()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createMediaIdForInfoItem(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 201
    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 202
    sget-object v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 204
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 207
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 210
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 210
    invoke-direct {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final createRemotePlaylistStreamMediaItem(JLorg/schabi/newpipe/extractor/stream/StreamInfoItem;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    .line 288
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const/4 v1, 0x1

    .line 289
    invoke-direct {p0, v1, p1, p2, p4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createMediaIdForPlaylistIndex(ZJI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 293
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 297
    :cond_0
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 298
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    const/4 p3, 0x2

    .line 297
    invoke-direct {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final createRootMediaItem(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    .line 172
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 174
    invoke-virtual {v0, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 175
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 177
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    const-string v1, "android.resource"

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 179
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 180
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 181
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 185
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 188
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    const p3, 0x7f120034

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 186
    const-string p3, "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 191
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 192
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    const/4 p3, 0x1

    .line 191
    invoke-direct {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private final getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    .line 343
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 344
    new-instance v1, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iget-object v2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 342
    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->getMergedOrderedPlaylists(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const-string v1, "getMergedOrderedPlaylists(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final onLoadChildren(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 9

    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "history"

    const-string v6, "playlists"

    if-eqz v0, :cond_0

    .line 128
    :try_start_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12047f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0800eb

    .line 126
    invoke-direct {p0, v6, p1, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createRootMediaItem(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080117

    .line 131
    invoke-direct {p0, v5, v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createRootMediaItem(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    new-array v1, v3, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    aput-object p1, v1, v4

    aput-object v0, v1, v2

    .line 125
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "just(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x6f36471f

    if-eq v7, v8, :cond_1

    const v1, 0x373fe494

    if-ne v7, v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateHistory()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateBookmarks()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 148
    const-string v3, "local"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateLocalPlaylist(J)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 150
    :cond_3
    const-string v3, "remote"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateRemotePlaylist(J)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 154
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown playlist URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 160
    :cond_5
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "error(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final populateBookmarks()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 349
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    const-string v1, "firstOrError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateBookmarks$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateBookmarks$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final populateHistory()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 318
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getHistory()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    const-string v1, "firstOrError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final populateLocalPlaylist(J)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 356
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    const-string v1, "firstOrError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateLocalPlaylist$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateLocalPlaylist$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final populateRemotePlaylist(J)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 365
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 366
    sget-object v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 367
    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final searchMusicBySongTitle(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v0

    .line 406
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, p1, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->searchFor(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "searchFor(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 3

    const-string v0, "clientPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRoot("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->packageValidator:Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->isKnownCaller(Ljava/lang/String;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const/4 p1, 0x1

    if-eqz p3, :cond_2

    .line 84
    const-string v0, "android.service.media.extra.RECENT"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-ne p3, p1, :cond_2

    return-object p2

    .line 90
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string p3, "android.media.browse.SEARCH_SUPPORTED"

    .line 91
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p3, "//org.schabi.newpipe"

    invoke-direct {p1, p3, p2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 4

    const-string v0, "parentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 106
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onLoadChildren(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 107
    new-instance v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onLoadChildren$1;

    invoke-direct {v2, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onLoadChildren$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$Result;)V

    new-instance v3, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onLoadChildren$2;

    invoke-direct {v3, p2, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onLoadChildren$2;-><init>(Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final onSearch(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 4

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 388
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->searchMusicBySongTitle(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 391
    new-instance v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 392
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 393
    new-instance v2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$2;

    invoke-direct {v2, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$2;-><init>(Landroidx/media/MediaBrowserServiceCompat$Result;)V

    new-instance v3, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;

    invoke-direct {v3, p2, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;-><init>(Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 387
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
