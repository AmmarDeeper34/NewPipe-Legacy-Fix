.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "YoutubeCommentsExtractor.java"


# instance fields
.field private ajaxJson:Lcom/grack/nanojson/JsonObject;

.field private commentsDisabled:Z


# direct methods
.method public static synthetic $r8$lambda$GbKZYXB7uZxR50Z_aZhNvr4dnbA(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 97
    :try_start_0
    const-string v0, "itemSectionRenderer"

    .line 99
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    .line 100
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    .line 97
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LMiHmPNhYHhvRsEN7EAJ8kTlzE4(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 132
    const-string v0, "entityKey"

    .line 133
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S0KGDsWwgEpyKYZVyWepxgeb6gU()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 135
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment entity payload mutation"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$vVPrhl4cisvibY571r0SFbR_YoI(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 87
    :try_start_0
    const-string v0, "comments-section"

    const-string v1, "itemSectionRenderer.targetId"

    .line 88
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private collectCommentItem(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 13

    move-object/from16 v1, p3

    .line 289
    const-string v2, "commentThreadRenderer"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "engagementToolbarStateEntityPayload"

    const-string v5, "toolbarStateKey"

    const-string v6, "commentEntityPayload"

    const-string v7, "commentKey"

    const-string v8, "commentRenderer"

    const-string v9, ""

    const-string v10, "commentViewModel"

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v10}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "commentRepliesRenderer"

    const-string v11, "replies"

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v0, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 296
    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;

    .line 298
    invoke-virtual {v0, v11}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 301
    invoke-virtual {v2, v7, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-direct {p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 302
    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 304
    invoke-virtual {v2, v5, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-direct {p0, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 305
    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    move-object/from16 v7, p4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 296
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void

    :cond_0
    move-object/from16 v2, p4

    move-object/from16 v12, p5

    .line 308
    const-string p1, "comment"

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;

    .line 310
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 311
    invoke-virtual {p1, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 312
    invoke-virtual {v0, v11}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-direct {v4, p1, v0, v2, v12}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 309
    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void

    :cond_1
    move-object/from16 v2, p4

    move-object/from16 v12, p5

    .line 317
    invoke-virtual {p2, v10}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-virtual {p2, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 319
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;

    .line 323
    invoke-virtual {v3, v7, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 324
    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 326
    invoke-virtual {v3, v5, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-direct {p0, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 327
    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v7, p4

    move-object v5, v0

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 319
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void

    :cond_2
    move-object v7, v2

    .line 330
    invoke-virtual {p2, v8}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 334
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;

    .line 335
    invoke-virtual {p2, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v7, v12}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 334
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    :cond_3
    return-void
.end method

.method private collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 9

    .line 231
    const-string v0, "onResponseReceivedEndpoints"

    .line 232
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 242
    const-string v1, "reloadContinuationItemsCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "reloadContinuationItemsCommand.continuationItems"

    goto :goto_0

    .line 244
    :cond_1
    const-string v1, "appendContinuationItemsAction"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const-string v1, "appendContinuationItemsAction.continuationItems"

    .line 255
    :goto_0
    :try_start_0
    new-instance v2, Lcom/grack/nanojson/JsonArray;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/grack/nanojson/JsonArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 262
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "continuationItemRenderer"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 268
    :cond_2
    const-string v0, "frameworkUpdates"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "entityBatchUpdate"

    .line 269
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "mutations"

    .line 270
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    .line 271
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v8

    .line 274
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 275
    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-nez v1, :cond_3

    goto :goto_1

    .line 279
    :cond_3
    move-object v5, v0

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->collectCommentItem(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method

.method private extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 2

    .line 221
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    .line 222
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 223
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    .line 224
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getNextPage(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method private findInitialCommentsToken(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    .line 73
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getJsonContents(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 82
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 83
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 85
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 95
    invoke-virtual {p1, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    return-object p1
.end method

.method private getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    .line 142
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    return-object v0
.end method

.method private getJsonContents(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 118
    :try_start_0
    const-string v0, "contents.twoColumnWatchNextResults.results.results.contents"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 129
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 130
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 131
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 135
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    const-string p2, "payload"

    .line 137
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method private getNextPage(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    .line 147
    const-string v0, "onResponseReceivedEndpoints"

    .line 148
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 159
    const-string v0, "reloadContinuationItemsCommand"

    const-string v2, "appendContinuationItemsAction"

    .line 161
    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 160
    invoke-virtual {p1, v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationItems"

    .line 162
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationItemRenderer"

    .line 173
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 175
    const-string v0, "button"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "button.buttonRenderer.command.continuationCommand.token"

    goto :goto_0

    .line 177
    :cond_2
    const-string v0, "continuationEndpoint.continuationCommand.token"

    .line 181
    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getNextPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v1
.end method

.method private getNextPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;
    .locals 2

    .line 190
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 3

    .line 380
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 382
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "onResponseReceivedEndpoints"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "reloadContinuationItemsCommand"

    .line 388
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "continuationItems"

    .line 389
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commentsHeaderRenderer"

    .line 391
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "countText"

    .line 392
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 396
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 399
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Unable to get comments count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    .line 197
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "continuation"

    .line 209
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    .line 207
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 211
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 214
    const-string v1, "next"

    invoke-static {v1, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t have the continuation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 5

    .line 345
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    .line 348
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "videoId"

    .line 349
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 355
    const-string v2, "next"

    invoke-static {v2, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->findInitialCommentsToken(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v3

    const-string v4, "continuation"

    .line 364
    invoke-virtual {v3, v4, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 369
    invoke-static {v2, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
