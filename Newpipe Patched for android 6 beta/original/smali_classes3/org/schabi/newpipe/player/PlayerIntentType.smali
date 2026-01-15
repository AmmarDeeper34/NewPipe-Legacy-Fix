.class public final enum Lorg/schabi/newpipe/player/PlayerIntentType;
.super Ljava/lang/Enum;
.source "PlayerIntentType.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/PlayerIntentType;

.field public static final enum AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

.field public static final enum Enqueue:Lorg/schabi/newpipe/player/PlayerIntentType;

.field public static final enum EnqueueNext:Lorg/schabi/newpipe/player/PlayerIntentType;

.field public static final enum TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/player/PlayerIntentType;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/schabi/newpipe/player/PlayerIntentType;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->Enqueue:Lorg/schabi/newpipe/player/PlayerIntentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->EnqueueNext:Lorg/schabi/newpipe/player/PlayerIntentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    const-string v1, "Enqueue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->Enqueue:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 11
    new-instance v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    const-string v1, "EnqueueNext"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->EnqueueNext:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 12
    new-instance v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    const-string v1, "TimestampChange"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 13
    new-instance v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    const-string v1, "AllOthers"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/PlayerIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {}, Lorg/schabi/newpipe/player/PlayerIntentType;->$values()[Lorg/schabi/newpipe/player/PlayerIntentType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->$VALUES:[Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/PlayerIntentType;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/PlayerIntentType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/PlayerIntentType;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->$VALUES:[Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/PlayerIntentType;

    return-object v0
.end method
