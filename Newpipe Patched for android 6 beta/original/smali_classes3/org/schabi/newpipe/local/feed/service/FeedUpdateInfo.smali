.class public final Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;
.super Ljava/lang/Object;
.source "FeedUpdateInfo.kt"


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final errors:Ljava/util/List;

.field private final name:Ljava/lang/String;

.field public newStreams:Ljava/util/List;

.field private final notificationMode:I

.field private final serviceId:I

.field private final streams:Ljava/util/List;

.field private final subscriberCount:Ljava/lang/Long;

.field private final uid:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streams"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errors"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 18
    iput p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 20
    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 23
    iput p7, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 25
    iput-object p8, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 27
    iput-object p10, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 28
    iput-object p11, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/extractor/Info;Ljava/util/List;Ljava/util/List;)V
    .locals 14

    move-object/from16 v0, p2

    const-string v1, "subscription"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streams"

    move-object/from16 v12, p3

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errors"

    move-object/from16 v13, p4

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v3

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getNotificationMode()I

    move-result v5

    .line 38
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "getName(...)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v1, v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v0

    check-cast v7, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 41
    invoke-static {v7}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 42
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    .line 43
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string p1, "getUrl(...)"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v9

    if-eqz v1, :cond_3

    .line 46
    move-object p1, v0

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    goto :goto_2

    :cond_4
    move-object v10, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 47
    move-object p1, v0

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_6
    move-object v11, v2

    move-object v2, p0

    .line 35
    invoke-direct/range {v2 .. v13}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrors()Ljava/util/List;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewStreams()Ljava/util/List;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->newStreams:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "newStreams"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPseudoId()I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    return v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final getSubscriberCount()Ljava/lang/Long;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setNewStreams(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->newStreams:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    iget v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    iget v6, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    iget-object v8, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    iget-object v9, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    iget-object v10, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FeedUpdateInfo(uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", notificationMode="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", avatarUrl="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subscriberCount="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streams="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errors="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
