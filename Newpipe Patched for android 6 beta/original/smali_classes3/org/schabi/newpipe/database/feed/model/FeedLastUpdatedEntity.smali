.class public final Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;
.super Ljava/lang/Object;
.source "FeedLastUpdatedEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity$Companion;


# instance fields
.field private lastUpdated:Lj$/time/OffsetDateTime;

.field private subscriptionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->Companion:Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity$Companion;

    return-void
.end method

.method public constructor <init>(JLj$/time/OffsetDateTime;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    .line 28
    iput-object p3, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    iget-object p1, p1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLastUpdated()Lj$/time/OffsetDateTime;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public final getSubscriptionId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeedLastUpdatedEntity(subscriptionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", lastUpdated="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
