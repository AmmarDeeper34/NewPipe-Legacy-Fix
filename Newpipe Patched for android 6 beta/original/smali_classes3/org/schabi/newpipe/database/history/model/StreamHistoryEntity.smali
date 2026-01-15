.class public final Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
.super Ljava/lang/Object;
.source "StreamHistoryEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;


# instance fields
.field private accessDate:Lj$/time/OffsetDateTime;

.field private repeatCount:J

.field private final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->Companion:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity$Companion;

    return-void
.end method

.method public constructor <init>(JLj$/time/OffsetDateTime;J)V
    .locals 1

    const-string v0, "accessDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 44
    iput-object p3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 47
    iput-wide p4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAccessDate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public final getRepeatCount()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    return-wide v0
.end method

.method public final getStreamUid()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAccessDate(Lj$/time/OffsetDateTime;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public final setRepeatCount(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StreamHistoryEntity(streamUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", accessDate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", repeatCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
