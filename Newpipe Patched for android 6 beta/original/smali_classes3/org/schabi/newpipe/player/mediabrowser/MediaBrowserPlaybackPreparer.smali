.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;,
        Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clearMediaSessionError:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final onPrepare:Ljava/util/function/Consumer;

.field private final setMediaSessionError:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

    .line 260
    const-class v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setMediaSessionError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearMediaSessionError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPrepare"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Ljava/util/function/BiConsumer;

    .line 53
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->clearMediaSessionError:Ljava/lang/Runnable;

    .line 54
    iput-object p4, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepare:Ljava/util/function/Consumer;

    .line 56
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    return-void
.end method

.method public static final synthetic access$getClearMediaSessionError$p(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->clearMediaSessionError:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onPrepareError(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;Ljava/lang/Throwable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepareError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final extractLocalPlayQueue(JI)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 129
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 130
    new-instance p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;

    invoke-direct {p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;-><init>(I)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final extractPlayQueueFromHistoryMediaId(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 217
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 218
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getHistory()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;-><init>(J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 214
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1
.end method

.method private final extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 5

    .line 234
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 238
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 239
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->infoItemTypeFromString(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object p2

    sget-object v4, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const-string v4, "map(...)"

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 246
    invoke-static {v2, p3, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 247
    new-instance p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;

    invoke-direct {p2, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;-><init>(I)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 254
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 243
    :cond_1
    invoke-static {v2, p3, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 244
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$2;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 240
    :cond_2
    invoke-static {v2, p3, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 241
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$1;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 235
    :cond_3
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1
.end method

.method private final extractPlayQueueFromMediaId(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 6

    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, -0x6f36471f

    const-string v5, "url"

    if-eq v3, v4, :cond_2

    const v4, 0x317b13

    if-eq v3, v4, :cond_0

    const v0, 0x373fe494

    if-ne v3, v0, :cond_3

    :try_start_1
    const-string v0, "history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromHistoryMediaId(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 149
    :cond_0
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 161
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 149
    :cond_2
    const-string v3, "playlists"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromPlaylistMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 164
    :cond_3
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 146
    :cond_4
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string v0, "error(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final extractPlayQueueFromPlaylistMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 6

    .line 177
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 181
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x37b507ba

    const/4 v4, 0x1

    const-string v5, "local"

    if-eq v2, v3, :cond_2

    const v3, 0x1c56f

    if-eq v2, v3, :cond_0

    const p3, 0x625df6b

    if-ne v2, p3, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_0
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-eqz p3, :cond_1

    .line 199
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 200
    invoke-static {p1, p3, v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 201
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromPlaylistMediaId$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromPlaylistMediaId$1;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 200
    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 196
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 181
    :cond_2
    const-string p3, "remote"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 183
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_4

    .line 186
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 187
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 188
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 189
    invoke-direct {p0, v2, v3, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractLocalPlayQueue(JI)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 191
    :cond_3
    invoke-direct {p0, v2, v3, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractRemotePlayQueue(JI)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1

    .line 184
    :cond_4
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 204
    :cond_5
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1

    .line 178
    :cond_6
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserCommonKt;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    move-result-object p1

    throw p1
.end method

.method private final extractRemotePlayQueue(JI)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 134
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 135
    sget-object p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$1;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 138
    new-instance p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;

    invoke-direct {p2, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractRemotePlayQueue$2;-><init>(I)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final onPrepareError(Ljava/lang/Throwable;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Ljava/util/function/BiConsumer;

    .line 121
    sget-object v1, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object p1

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final onUnsupportedError()V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Ljava/util/function/BiConsumer;

    .line 114
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Landroid/content/Context;

    const v2, 0x7f1200b1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public getSupportedPrepareActions()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x400

    return-wide v0
.end method

.method public onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 0
    const-string p3, "player"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "command"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepare(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepare:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 3

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareFromMediaId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 78
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromMediaId(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p3

    .line 79
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p3

    .line 80
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p3

    .line 81
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;Z)V

    new-instance p2, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;

    invoke-direct {p2, p1, p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$onPrepareFromMediaId$2;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;)V

    invoke-virtual {p3, v0, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 78
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    const-string p2, "query"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onUnsupportedError()V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onUnsupportedError()V

    return-void
.end method
