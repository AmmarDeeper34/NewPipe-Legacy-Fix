.class public final Lorg/schabi/newpipe/database/feed/model/FeedEntity;
.super Ljava/lang/Object;
.source "FeedEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/feed/model/FeedEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/model/FeedEntity$Companion;


# instance fields
.field private streamId:J

.field private subscriptionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/feed/model/FeedEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/feed/model/FeedEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->Companion:Lorg/schabi/newpipe/database/feed/model/FeedEntity$Companion;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    .line 36
    iput-wide p3, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStreamId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    return-wide v0
.end method

.method public final getSubscriptionId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    iget-wide v2, p0, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeedEntity(streamId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", subscriptionId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
