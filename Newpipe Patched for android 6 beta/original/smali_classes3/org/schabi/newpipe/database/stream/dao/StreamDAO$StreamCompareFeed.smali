.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
.super Ljava/lang/Object;
.source "StreamDAO.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/database/stream/dao/StreamDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamCompareFeed"
.end annotation


# instance fields
.field private duration:J

.field private isUploadDateApproximation:Ljava/lang/Boolean;

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private uid:J

.field private uploadDate:Lj$/time/OffsetDateTime;


# direct methods
.method public constructor <init>(JLorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;J)V
    .locals 1

    const-string v0, "streamType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    .line 134
    iput-object p3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 137
    iput-object p4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 143
    iput-object p6, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 146
    iput-wide p7, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    return-wide v0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    return-wide v0
.end method

.method public final getUploadDate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isUploadDateApproximation()Ljava/lang/Boolean;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    iget-object v5, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    iget-wide v6, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StreamCompareFeed(uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streamType="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", textualUploadDate="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uploadDate="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isUploadDateApproximation="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
