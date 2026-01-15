.class final enum Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;
.super Ljava/lang/Enum;
.source "VideoPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayButtonAction"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

.field public static final enum PAUSE:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

.field public static final enum PLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

.field public static final enum REPLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;
    .locals 3

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    sget-object v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PAUSE:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->REPLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const-string v1, "PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const-string v1, "PAUSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PAUSE:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    const-string v1, "REPLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->REPLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    .line 107
    invoke-static {}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->$values()[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->$VALUES:[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;
    .locals 1

    .line 107
    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;
    .locals 1

    .line 107
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->$VALUES:[Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    return-object v0
.end method
