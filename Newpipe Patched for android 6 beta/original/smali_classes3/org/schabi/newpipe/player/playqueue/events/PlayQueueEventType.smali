.class public final enum Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
.super Ljava/lang/Enum;
.source "PlayQueueEventType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum APPEND:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum ERROR:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum INIT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum MOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum RECOVERY:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum REMOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum REORDER:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

.field public static final enum SELECT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 3

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->INIT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->SELECT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->APPEND:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->REMOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->MOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->REORDER:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->RECOVERY:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->ERROR:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->INIT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 7
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "SELECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->SELECT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 10
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "APPEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->APPEND:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 13
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "REMOVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->REMOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 16
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "MOVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->MOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 19
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "REORDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->REORDER:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 22
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "RECOVERY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->RECOVERY:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 25
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->ERROR:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    .line 3
    invoke-static {}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->$values()[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->$VALUES:[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 3
    const-class v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 3
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->$VALUES:[Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
