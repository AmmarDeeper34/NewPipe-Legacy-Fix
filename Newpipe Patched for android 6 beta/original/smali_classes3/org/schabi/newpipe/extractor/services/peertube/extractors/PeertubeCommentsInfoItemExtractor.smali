.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;
.super Ljava/lang/Object;
.source "PeertubeCommentsInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final children:Lcom/grack/nanojson/JsonArray;

.field private final isReply:Z

.field private final item:Lcom/grack/nanojson/JsonObject;

.field private replyCount:Ljava/lang/Integer;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    .line 46
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->children:Lcom/grack/nanojson/JsonArray;

    .line 47
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->baseUrl:Ljava/lang/String;

    .line 49
    iput-boolean p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->isReply:Z

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

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
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 83
    :try_start_0
    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v3, v2, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 87
    :catch_0
    const-string v2, "(?s)<[^>]*>(\\s*<[^>]*>)*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v2
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

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.displayName"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 5

    .line 120
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->getReplyCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "threadId"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getNumber(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-boolean v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->isReply:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->children:Lcom/grack/nanojson/JsonArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    new-instance v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2}, Lcom/grack/nanojson/JsonObject;-><init>()V

    .line 130
    const-string v3, "children"

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->children:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v3, Lorg/schabi/newpipe/extractor/Page;

    .line 132
    invoke-static {v2}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v3, v1, v0, v2}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v3

    .line 134
    :cond_1
    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReplyCount()I
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->replyCount:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->children:Lcom/grack/nanojson/JsonArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->children:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->replyCount:Ljava/lang/Integer;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "totalReplies"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getNumber(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->replyCount:Ljava/lang/Integer;

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->replyCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "createdAt"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromInstant(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getAvatarsFromOwnerAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    .line 106
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 5

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->baseUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->getCommentId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCreatorReply()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "totalRepliesFromVideoAuthor"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    .line 154
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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
