.class public final Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
.super Ljava/lang/Object;
.source "NotificationModeConfigAdapter.kt"


# instance fields
.field private final id:J

.field private final notificationMode:I

.field private final serviceId:I

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 87
    iput-object p3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 88
    iput p4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 90
    iput p5, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 91
    iput-object p6, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;JLjava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
    .locals 7

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    :cond_2
    move v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget p5, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    :cond_3
    move v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    :cond_4
    move-object v0, p0

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->copy(JLjava/lang/String;IILjava/lang/String;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNotificationMode$annotations()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    return v0
.end method

.method public final component4()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;IILjava/lang/String;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
    .locals 8

    .line 0
    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    iget-wide v3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    iget-wide v5, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    iget v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    return-wide v0
.end method

.method public final getNotificationMode()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    return v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    iget-object v2, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    iget v3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    iget v4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    iget-object v5, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubscriptionItem(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationMode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
