.class public final enum Lus/shandian/giga/service/MissionState;
.super Ljava/lang/Enum;
.source "MissionState.java"


# static fields
.field private static final synthetic $VALUES:[Lus/shandian/giga/service/MissionState;

.field public static final enum Finished:Lus/shandian/giga/service/MissionState;

.field public static final enum None:Lus/shandian/giga/service/MissionState;

.field public static final enum Pending:Lus/shandian/giga/service/MissionState;

.field public static final enum PendingRunning:Lus/shandian/giga/service/MissionState;


# direct methods
.method private static synthetic $values()[Lus/shandian/giga/service/MissionState;
    .locals 3

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lus/shandian/giga/service/MissionState;

    sget-object v1, Lus/shandian/giga/service/MissionState;->None:Lus/shandian/giga/service/MissionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/service/MissionState;->Pending:Lus/shandian/giga/service/MissionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/service/MissionState;->PendingRunning:Lus/shandian/giga/service/MissionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lus/shandian/giga/service/MissionState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/MissionState;->None:Lus/shandian/giga/service/MissionState;

    new-instance v0, Lus/shandian/giga/service/MissionState;

    const-string v1, "Pending"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/MissionState;->Pending:Lus/shandian/giga/service/MissionState;

    new-instance v0, Lus/shandian/giga/service/MissionState;

    const-string v1, "PendingRunning"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/MissionState;->PendingRunning:Lus/shandian/giga/service/MissionState;

    new-instance v0, Lus/shandian/giga/service/MissionState;

    const-string v1, "Finished"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    .line 3
    invoke-static {}, Lus/shandian/giga/service/MissionState;->$values()[Lus/shandian/giga/service/MissionState;

    move-result-object v0

    sput-object v0, Lus/shandian/giga/service/MissionState;->$VALUES:[Lus/shandian/giga/service/MissionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/shandian/giga/service/MissionState;
    .locals 1

    .line 3
    const-class v0, Lus/shandian/giga/service/MissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/shandian/giga/service/MissionState;

    return-object p0
.end method

.method public static values()[Lus/shandian/giga/service/MissionState;
    .locals 1

    .line 3
    sget-object v0, Lus/shandian/giga/service/MissionState;->$VALUES:[Lus/shandian/giga/service/MissionState;

    invoke-virtual {v0}, [Lus/shandian/giga/service/MissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/shandian/giga/service/MissionState;

    return-object v0
.end method
