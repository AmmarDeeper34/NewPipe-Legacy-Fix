.class public final Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
.super Ljava/lang/Object;
.source "SearchHistoryEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry$Companion;


# instance fields
.field private creationDate:Lj$/time/OffsetDateTime;

.field private final id:J

.field private final search:Ljava/lang/String;

.field private final serviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->Companion:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry$Companion;

    return-void
.end method

.method public constructor <init>(Lj$/time/OffsetDateTime;ILjava/lang/String;)V
    .locals 8

    .line 0
    const/16 v6, 0x8

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lj$/time/OffsetDateTime;ILjava/lang/String;J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    .line 24
    iput p2, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    .line 27
    iput-object p3, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    return-void
.end method

.method public synthetic constructor <init>(Lj$/time/OffsetDateTime;ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;J)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreationDate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    return-wide v0
.end method

.method public final getSearch()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    return v0
.end method

.method public final hasEqualValues(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)Z
    .locals 2

    const-string v0, "otherEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    iget v1, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCreationDate(Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    iget v1, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchHistoryEntry(creationDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", search="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
