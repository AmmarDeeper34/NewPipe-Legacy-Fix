.class public final enum Lorg/schabi/newpipe/player/gesture/DisplayPortion;
.super Ljava/lang/Enum;
.source "DisplayPortion.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/gesture/DisplayPortion;

.field public static final enum LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

.field public static final enum LEFT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

.field public static final enum MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

.field public static final enum RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

.field public static final enum RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    sget-object v1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    new-instance v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    new-instance v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    new-instance v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const-string v1, "LEFT_HALF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    new-instance v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const-string v1, "RIGHT_HALF"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    invoke-static {}, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->$values()[Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->$VALUES:[Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->$VALUES:[Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object v0
.end method
