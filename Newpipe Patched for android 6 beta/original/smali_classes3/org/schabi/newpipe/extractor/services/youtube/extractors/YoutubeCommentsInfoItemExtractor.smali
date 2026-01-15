.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;
.super Ljava/lang/Object;
.source "YoutubeCommentsInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;


# instance fields
.field private final commentRenderer:Lcom/grack/nanojson/JsonObject;

.field private final commentRepliesRenderer:Lcom/grack/nanojson/JsonObject;

.field private final timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRepliesRenderer:Lcom/grack/nanojson/JsonObject;

    .line 40
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    return-void
.end method

.method private getAuthorThumbnails()Ljava/util/List;
    .locals 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "authorThumbnail.thumbnails"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get author thumbnails"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "commentId"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get comment id"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentText"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 192
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeUTF8BOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 199
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get comment text"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLikeCount()I
    .locals 3

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v2, "actionButtons.commentActionButtonsRenderer.likeButton.toggleButtonRenderer.accessibilityData.accessibilityData.label"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :try_start_1
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Unexpected error while parsing like count as Integer"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :catch_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->getTextualLikeCount()Ljava/lang/String;

    move-result-object v1

    .line 124
    :try_start_2
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 128
    :cond_1
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    long-to-int v1, v0

    return v1

    :catch_2
    move-exception v0

    .line 130
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Unexpected error while converting textual like count to like count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "authorText"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 4

    .line 264
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRepliesRenderer:Lcom/grack/nanojson/JsonObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 269
    :cond_0
    :try_start_0
    const-string v2, "contents"

    .line 270
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    .line 269
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method public getReplyCount()I
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "replyCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public synthetic getStreamPosition()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor$-CC;->$default$getStreamPosition(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)I

    move-result v0

    return v0
.end method

.method public getTextualLikeCount()Ljava/lang/String;
    .locals 3

    .line 168
    const-string v0, "voteCount"

    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 172
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 176
    :cond_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get the vote count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publishedTimeText"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get publishedTimeText"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->getAuthorThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 215
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->getAuthorThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "authorText"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 3

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "authorEndpoint.browseEndpoint.browseId"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/channel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 250
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasCreatorReply()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRepliesRenderer:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    const-string v1, "viewRepliesCreatorThumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChannelOwner()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "authorIsChannelOwner"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeartedByUploader()Z
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commentActionButtonsRenderer"

    .line 221
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 222
    const-string v1, "creatorHeart"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;->commentRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "pinnedCommentBadge"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
