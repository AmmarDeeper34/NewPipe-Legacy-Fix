.class public final Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;
.super Ljava/lang/Object;
.source "ScheduleOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;


# instance fields
.field private final interval:J

.field private final isRequireNonMeteredNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    .line 14
    iput-boolean p3, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

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
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInterval()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRequireNonMeteredNetwork()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->interval:J

    iget-boolean v2, p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->isRequireNonMeteredNetwork:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScheduleOptions(interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isRequireNonMeteredNetwork="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
