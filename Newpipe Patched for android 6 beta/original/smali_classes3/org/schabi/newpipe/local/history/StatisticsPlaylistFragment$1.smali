.class Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;
.super Ljava/lang/Object;
.source "StatisticsPlaylistFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$drag(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->held(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public held(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 1

    .line 154
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$mshowInfoItemDialog(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic selected(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->selected(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public selected(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 8

    .line 144
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 146
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->access$000(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 147
    invoke-static/range {v1 .. v7}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_0
    return-void
.end method
