.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;
.super Ljava/lang/Object;
.source "SoundcloudCommentsInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;


# instance fields
.field private final json:Lcom/grack/nanojson/JsonObject;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 35
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "body"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public synthetic getLikeCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getLikeCount(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "permalink"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getReplies(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplyCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getReplyCount(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)I

    move-result v0

    return v0
.end method

.method public getStreamPosition()I
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public synthetic getTextualLikeCount()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getTextualLikeCount(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatar_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->parseDate(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatar_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "permalink_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic hasCreatorReply()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$hasCreatorReply(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isChannelOwner()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$isChannelOwner(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isHeartedByUploader()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$isHeartedByUploader(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isPinned()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$isPinned(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Z

    move-result v0

    return v0
.end method
