.class public abstract Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
.super Lorg/schabi/newpipe/extractor/ListExtractor;
.source "PlaylistExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 59
    sget-object v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object v0
.end method

.method public abstract getStreamCount()J
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public abstract getThumbnails()Ljava/util/List;
.end method

.method public abstract getUploaderAvatars()Ljava/util/List;
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method
