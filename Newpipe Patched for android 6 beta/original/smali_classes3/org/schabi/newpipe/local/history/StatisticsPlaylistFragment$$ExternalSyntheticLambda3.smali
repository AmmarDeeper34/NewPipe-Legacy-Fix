.class public final synthetic Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->$r8$lambda$SPRPsPfLJCEn3FbB_QJRZ_13vC0(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method
