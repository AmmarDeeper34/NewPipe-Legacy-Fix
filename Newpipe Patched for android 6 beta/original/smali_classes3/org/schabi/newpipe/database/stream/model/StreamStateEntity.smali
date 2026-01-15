.class public final Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;
.super Ljava/lang/Object;
.source "StreamStateEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;


# instance fields
.field private final progressMillis:J

.field private final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->Companion:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity$Companion;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 35
    iput-wide p3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getProgressMillis()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    return-wide v0
.end method

.method public final getStreamUid()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFinished(J)Z
    .locals 5

    .line 59
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    const-wide/32 v2, 0xea60

    sub-long v2, p1, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x3

    int-to-long v2, v2

    mul-long p1, p1, v2

    const/4 v2, 0x4

    int-to-long v2, v2

    .line 60
    div-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isValid(J)Z
    .locals 5

    .line 45
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    const/4 v2, 0x4

    int-to-long v2, v2

    .line 46
    div-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StreamStateEntity(streamUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", progressMillis="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
