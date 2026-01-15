.class public final enum Lus/shandian/giga/util/Utility$FileType;
.super Ljava/lang/Enum;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/util/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/shandian/giga/util/Utility$FileType;

.field public static final enum MUSIC:Lus/shandian/giga/util/Utility$FileType;

.field public static final enum SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

.field public static final enum UNKNOWN:Lus/shandian/giga/util/Utility$FileType;

.field public static final enum VIDEO:Lus/shandian/giga/util/Utility$FileType;


# direct methods
.method private static synthetic $values()[Lus/shandian/giga/util/Utility$FileType;
    .locals 3

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lus/shandian/giga/util/Utility$FileType;

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->VIDEO:Lus/shandian/giga/util/Utility$FileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->MUSIC:Lus/shandian/giga/util/Utility$FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->UNKNOWN:Lus/shandian/giga/util/Utility$FileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lus/shandian/giga/util/Utility$FileType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/util/Utility$FileType;->VIDEO:Lus/shandian/giga/util/Utility$FileType;

    .line 38
    new-instance v0, Lus/shandian/giga/util/Utility$FileType;

    const-string v1, "MUSIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/util/Utility$FileType;->MUSIC:Lus/shandian/giga/util/Utility$FileType;

    .line 39
    new-instance v0, Lus/shandian/giga/util/Utility$FileType;

    const-string v1, "SUBTITLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/util/Utility$FileType;->SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

    .line 40
    new-instance v0, Lus/shandian/giga/util/Utility$FileType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/util/Utility$FileType;->UNKNOWN:Lus/shandian/giga/util/Utility$FileType;

    .line 36
    invoke-static {}, Lus/shandian/giga/util/Utility$FileType;->$values()[Lus/shandian/giga/util/Utility$FileType;

    move-result-object v0

    sput-object v0, Lus/shandian/giga/util/Utility$FileType;->$VALUES:[Lus/shandian/giga/util/Utility$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/shandian/giga/util/Utility$FileType;
    .locals 1

    .line 36
    const-class v0, Lus/shandian/giga/util/Utility$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/shandian/giga/util/Utility$FileType;

    return-object p0
.end method

.method public static values()[Lus/shandian/giga/util/Utility$FileType;
    .locals 1

    .line 36
    sget-object v0, Lus/shandian/giga/util/Utility$FileType;->$VALUES:[Lus/shandian/giga/util/Utility$FileType;

    invoke-virtual {v0}, [Lus/shandian/giga/util/Utility$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/shandian/giga/util/Utility$FileType;

    return-object v0
.end method
