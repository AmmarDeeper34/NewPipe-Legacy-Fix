.class public final Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
.super Ljava/lang/Object;
.source "SubscriptionEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private notificationMode:I

.field private serviceId:I

.field private subscriberCount:Ljava/lang/Long;

.field private uid:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 0
    const/16 v10, 0xff

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 32
    iput p3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 35
    iput-object p4, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 47
    iput-object p8, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 50
    iput p9, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    const/4 p3, -0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p1, v0, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    move-object v5, p2

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    move-object v6, p2

    goto :goto_3

    :cond_4
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    move-object v7, p2

    goto :goto_4

    :cond_5
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    move-object v8, p2

    goto :goto_5

    :cond_6
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v9, 0x0

    :goto_6
    move-object v0, p0

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    goto :goto_6

    .line 28
    :goto_7
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    iget p1, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationMode()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    return v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    return v0
.end method

.method public final getSubscriberCount()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationMode(I)V
    .locals 0

    .line 52
    iput p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    return-void
.end method

.method public final setServiceId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    return-void
.end method

.method public final setSubscriberCount(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    return-void
.end method

.method public final setUid(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public final toChannelInfoItem()Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    .locals 4

    .line 56
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    iget v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    .line 58
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setSubscriberCount(J)V

    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setDescription(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    iget v2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    iget-object v3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    iget-object v7, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    iget v8, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SubscriptionEntity(uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", avatarUrl="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subscriberCount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationMode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
