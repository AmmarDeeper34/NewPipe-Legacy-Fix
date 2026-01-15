.class final enum Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;
.super Ljava/lang/Enum;
.source "StatisticsPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatisticSortMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

.field public static final enum LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

.field public static final enum MOST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;
    .locals 3

    const/4 v0, 0x2

    .line 387
    new-array v0, v0, [Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    sget-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->MOST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 388
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    const-string v1, "LAST_PLAYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    .line 389
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    const-string v1, "MOST_PLAYED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->MOST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    .line 387
    invoke-static {}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->$values()[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->$VALUES:[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;
    .locals 1

    .line 387
    const-class v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;
    .locals 1

    .line 387
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->$VALUES:[Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    return-object v0
.end method
