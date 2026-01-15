.class public abstract synthetic Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$WhenMappings;
.super Ljava/lang/Object;
.source "ExportPlaylist.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    invoke-static {}, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->values()[Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
