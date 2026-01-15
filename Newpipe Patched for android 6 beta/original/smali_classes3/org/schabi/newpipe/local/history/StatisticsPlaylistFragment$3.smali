.class abstract synthetic Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$3;
.super Ljava/lang/Object;
.source "StatisticsPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$local$history$StatisticsPlaylistFragment$StatisticSortMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    invoke-static {}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->values()[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$3;->$SwitchMap$org$schabi$newpipe$local$history$StatisticsPlaylistFragment$StatisticSortMode:[I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$3;->$SwitchMap$org$schabi$newpipe$local$history$StatisticsPlaylistFragment$StatisticSortMode:[I

    sget-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->MOST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
