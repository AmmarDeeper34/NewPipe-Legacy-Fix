.class public final enum Lorg/schabi/newpipe/info_list/ItemViewMode;
.super Ljava/lang/Enum;
.source "ItemViewMode.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public static final enum AUTO:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public static final enum CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public static final enum GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public static final enum LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 3

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lorg/schabi/newpipe/info_list/ItemViewMode;

    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->AUTO:Lorg/schabi/newpipe/info_list/ItemViewMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/info_list/ItemViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->AUTO:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 14
    new-instance v0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    const-string v1, "LIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/info_list/ItemViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 18
    new-instance v0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    const-string v1, "GRID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/info_list/ItemViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 22
    new-instance v0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    const-string v1, "CARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/info_list/ItemViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 6
    invoke-static {}, Lorg/schabi/newpipe/info_list/ItemViewMode;->$values()[Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->$VALUES:[Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 1

    .line 6
    const-class v0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 1

    .line 6
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->$VALUES:[Lorg/schabi/newpipe/info_list/ItemViewMode;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/info_list/ItemViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object v0
.end method
