.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;
.super Ljava/lang/Object;
.source "BandcampCommentsInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;


# instance fields
.field private final review:Lcom/grack/nanojson/JsonObject;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->review:Lcom/grack/nanojson/JsonObject;

    .line 22
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic getCommentId()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getCommentId(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->review:Lcom/grack/nanojson/JsonObject;

    const-string v2, "why"

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
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

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

.method public synthetic getStreamPosition()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getStreamPosition(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)I

    move-result v0

    return v0
.end method

.method public synthetic getTextualLikeCount()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getTextualLikeCount(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getTextualUploadDate(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getUploadDate(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->review:Lcom/grack/nanojson/JsonObject;

    const-string v1, "image_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageId(JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->review:Lcom/grack/nanojson/JsonObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getUploaderUrl(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;->url:Ljava/lang/String;

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
