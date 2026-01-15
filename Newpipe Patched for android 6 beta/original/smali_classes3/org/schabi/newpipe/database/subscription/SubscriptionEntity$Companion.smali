.class public final Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;
.super Ljava/lang/Object;
.source "SubscriptionEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 13

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v4

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    move-wide v2, v0

    .line 77
    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v11, 0x81

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    .line 77
    invoke-direct/range {v1 .. v12}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
