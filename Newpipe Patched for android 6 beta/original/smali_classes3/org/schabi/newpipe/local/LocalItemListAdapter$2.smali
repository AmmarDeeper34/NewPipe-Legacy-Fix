.class abstract synthetic Lorg/schabi/newpipe/local/LocalItemListAdapter$2;
.super Ljava/lang/Object;
.source "LocalItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/LocalItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 267
    invoke-static {}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->values()[Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$2;->$SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$2;->$SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$2;->$SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/schabi/newpipe/local/LocalItemListAdapter$2;->$SwitchMap$org$schabi$newpipe$database$LocalItem$LocalItemType:[I

    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
