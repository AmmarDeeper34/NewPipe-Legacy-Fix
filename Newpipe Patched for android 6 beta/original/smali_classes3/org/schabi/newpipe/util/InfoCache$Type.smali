.class public final enum Lorg/schabi/newpipe/util/InfoCache$Type;
.super Ljava/lang/Enum;
.source "InfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/InfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum CHANNEL:Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum CHANNEL_TAB:Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum COMMENTS:Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum KIOSK:Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum PLAYLIST:Lorg/schabi/newpipe/util/InfoCache$Type;

.field public static final enum STREAM:Lorg/schabi/newpipe/util/InfoCache$Type;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/util/InfoCache$Type;
    .locals 3

    const/4 v0, 0x6

    .line 53
    new-array v0, v0, [Lorg/schabi/newpipe/util/InfoCache$Type;

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->STREAM:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL_TAB:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->COMMENTS:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->PLAYLIST:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->KIOSK:Lorg/schabi/newpipe/util/InfoCache$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->STREAM:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 55
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "CHANNEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 56
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "CHANNEL_TAB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL_TAB:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 57
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "COMMENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->COMMENTS:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 58
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->PLAYLIST:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 59
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    const-string v1, "KIOSK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/InfoCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->KIOSK:Lorg/schabi/newpipe/util/InfoCache$Type;

    .line 53
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache$Type;->$values()[Lorg/schabi/newpipe/util/InfoCache$Type;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->$VALUES:[Lorg/schabi/newpipe/util/InfoCache$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/util/InfoCache$Type;
    .locals 1

    .line 53
    const-class v0, Lorg/schabi/newpipe/util/InfoCache$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/util/InfoCache$Type;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/util/InfoCache$Type;
    .locals 1

    .line 53
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->$VALUES:[Lorg/schabi/newpipe/util/InfoCache$Type;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/util/InfoCache$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/util/InfoCache$Type;

    return-object v0
.end method
