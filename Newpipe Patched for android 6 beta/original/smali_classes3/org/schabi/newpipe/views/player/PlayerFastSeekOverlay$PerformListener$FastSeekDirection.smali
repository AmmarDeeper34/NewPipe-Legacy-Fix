.class public final enum Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
.super Ljava/lang/Enum;
.source "PlayerFastSeekOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FastSeekDirection"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;


# instance fields
.field private final directionAsBoolean:Ljava/lang/Boolean;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    sget-object v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 133
    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 134
    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "FORWARD"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 135
    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "BACKWARD"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    invoke-static {}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$values()[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->directionAsBoolean:Ljava/lang/Boolean;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    return-object v0
.end method


# virtual methods
.method public final getDirectionAsBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->directionAsBoolean:Ljava/lang/Boolean;

    return-object v0
.end method
