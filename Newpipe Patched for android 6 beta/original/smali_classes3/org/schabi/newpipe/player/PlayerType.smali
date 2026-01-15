.class public final enum Lorg/schabi/newpipe/player/PlayerType;
.super Ljava/lang/Enum;
.source "PlayerType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/PlayerType;

.field public static final enum AUDIO:Lorg/schabi/newpipe/player/PlayerType;

.field public static final enum MAIN:Lorg/schabi/newpipe/player/PlayerType;

.field public static final enum POPUP:Lorg/schabi/newpipe/player/PlayerType;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/player/PlayerType;
    .locals 3

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lorg/schabi/newpipe/player/PlayerType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/PlayerType;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 5
    new-instance v0, Lorg/schabi/newpipe/player/PlayerType;

    const-string v1, "AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 6
    new-instance v0, Lorg/schabi/newpipe/player/PlayerType;

    const-string v1, "POPUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 3
    invoke-static {}, Lorg/schabi/newpipe/player/PlayerType;->$values()[Lorg/schabi/newpipe/player/PlayerType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/PlayerType;->$VALUES:[Lorg/schabi/newpipe/player/PlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/PlayerType;
    .locals 1

    .line 3
    const-class v0, Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/PlayerType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/PlayerType;
    .locals 1

    .line 3
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->$VALUES:[Lorg/schabi/newpipe/player/PlayerType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/player/PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/PlayerType;

    return-object v0
.end method
