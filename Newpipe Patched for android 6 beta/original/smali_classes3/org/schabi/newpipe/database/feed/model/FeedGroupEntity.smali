.class public final Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;
.super Ljava/lang/Object;
.source "FeedGroupEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity$Companion;


# instance fields
.field private icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field private name:Ljava/lang/String;

.field private sortOrder:J

.field private final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->Companion:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 20
    iput-object p3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 26
    iput-wide p5, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const-wide/16 p5, -0x1

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 15
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iget-object v3, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    return-wide v0
.end method

.method public final getUid()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSortOrder(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iget-wide v4, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FeedGroupEntity(uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sortOrder="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
