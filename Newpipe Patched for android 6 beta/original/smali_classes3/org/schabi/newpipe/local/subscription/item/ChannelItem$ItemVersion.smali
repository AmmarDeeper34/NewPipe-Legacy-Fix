.class public final enum Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;
.super Ljava/lang/Enum;
.source "ChannelItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/item/ChannelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemVersion"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

.field public static final enum GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

.field public static final enum MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

.field public static final enum NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    sget-object v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const-string v1, "MINI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const-string v1, "GRID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    invoke-static {}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->$values()[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->$VALUES:[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->$VALUES:[Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    return-object v0
.end method
