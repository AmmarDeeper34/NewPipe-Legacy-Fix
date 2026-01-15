.class public final enum Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
.super Ljava/lang/Enum;
.source "LocalItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/database/LocalItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalItemType"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field public static final enum PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field public static final enum PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field public static final enum PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field public static final enum STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 3

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const-string v1, "PLAYLIST_LOCAL_ITEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 14
    new-instance v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const-string v1, "PLAYLIST_REMOTE_ITEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 16
    new-instance v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const-string v1, "PLAYLIST_STREAM_ITEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 17
    new-instance v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const-string v1, "STATISTIC_STREAM_ITEM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-static {}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->$values()[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->$VALUES:[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->$VALUES:[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method
