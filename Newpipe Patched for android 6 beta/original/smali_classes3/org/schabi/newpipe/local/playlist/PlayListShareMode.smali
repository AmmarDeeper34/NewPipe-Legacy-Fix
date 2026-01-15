.class public final enum Lorg/schabi/newpipe/local/playlist/PlayListShareMode;
.super Ljava/lang/Enum;
.source "PlayListShareMode.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

.field public static final enum JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

.field public static final enum WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

.field public static final enum YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;
    .locals 3

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const-string v1, "JUST_URLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 6
    new-instance v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const-string v1, "WITH_TITLES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 7
    new-instance v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    const-string v1, "YOUTUBE_TEMP_PLAYLIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 3
    invoke-static {}, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->$values()[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->$VALUES:[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/local/playlist/PlayListShareMode;
    .locals 1

    .line 3
    const-class v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;
    .locals 1

    .line 3
    sget-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->$VALUES:[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    return-object v0
.end method
