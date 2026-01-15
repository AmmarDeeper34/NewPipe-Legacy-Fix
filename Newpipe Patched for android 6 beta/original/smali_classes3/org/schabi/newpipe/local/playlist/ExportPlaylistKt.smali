.class public abstract Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;
.super Ljava/lang/Object;
.source "ExportPlaylist.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final linkHandler:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;


# direct methods
.method public static synthetic $r8$lambda$0CRvlmmrZIEZpjdRmnajQOebbhs(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportAsYoutubeTempPlaylist$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K6IfdVXAiipoxEDD2afALNq1e6M(Landroid/content/Context;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportWithTitles$lambda$1(Landroid/content/Context;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YlYh6vDPsazScx68EgmzhLk6fVM(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportJustUrls$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fhQy2DFdre09BM8ZOgnlOgKAC8M(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportWithTitles$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->linkHandler:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    return-void
.end method

.method public static final export(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "shareMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    .line 20
    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportAsYoutubeTempPlaylist(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 19
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportJustUrls(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_2
    invoke-static {p1, p2}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->exportWithTitles(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final exportAsYoutubeTempPlaylist(Ljava/util/List;)Ljava/lang/String;
    .locals 9

    const-string v0, "playlist"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda1;-><init>()V

    .line 51
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 52
    sget-object v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$exportAsYoutubeTempPlaylist$videoIDs$2;->INSTANCE:Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$exportAsYoutubeTempPlaylist$videoIDs$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    const/16 v0, 0x32

    .line 53
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 56
    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch_videos?video_ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final exportAsYoutubeTempPlaylist$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final exportJustUrls(Ljava/util/List;)Ljava/lang/String;
    .locals 10

    const-string v0, "playlist"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 45
    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final exportJustUrls$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final exportWithTitles(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "playlist"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda2;-><init>()V

    .line 30
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 31
    new-instance v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 38
    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final exportWithTitles$lambda$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p0

    return-object p0
.end method

.method private static final exportWithTitles$lambda$1(Landroid/content/Context;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)Ljava/lang/String;
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const p1, 0x7f1204c1

    .line 32
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getYouTubeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->linkHandler:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
