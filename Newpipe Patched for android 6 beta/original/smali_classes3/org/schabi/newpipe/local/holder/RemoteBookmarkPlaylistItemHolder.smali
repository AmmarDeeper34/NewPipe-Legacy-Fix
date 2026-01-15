.class public Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;
.source "RemoteBookmarkPlaylistItemHolder.java"


# instance fields
.field private final itemHandleView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$x-EAHntzOIWv_y_VFsYYseIq7R0(Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->lambda$getOnTouchListener$0(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->itemHandleView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d007c

    .line 20
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getOnTouchListener(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 44
    new-instance v0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    return-object v0
.end method

.method private synthetic lambda$getOnTouchListener$0(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 46
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lorg/schabi/newpipe/util/OnClickGesture;->drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
    .locals 2

    .line 33
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->itemHandleView:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->getOnTouchListener(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/RemotePlaylistItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V

    return-void
.end method
