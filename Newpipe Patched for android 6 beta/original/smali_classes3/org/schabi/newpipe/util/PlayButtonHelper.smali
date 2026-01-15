.class public abstract Lorg/schabi/newpipe/util/PlayButtonHelper;
.super Ljava/lang/Object;
.source "PlayButtonHelper.java"


# direct methods
.method public static synthetic $r8$lambda$7kpLf1QKJiqrVSQ4jtG7AU6e2Oc(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->showHoldToAppendToastIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpAzOzbpXTiUckg7AJCUWvmDuiQ(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 54
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$NBjefrB0PphhjVzWriII7S1jziw(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 58
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$TH4mW-9Z-GUCEqU8zGg1i_fJZ0A(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnMainPlayer(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 41
    invoke-static {p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->showHoldToAppendToastIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XK2hNh7vfBddsDoN_tzbKCw4auI(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 45
    invoke-static {p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->showHoldToAppendToastIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqWxMG8HX2VD30kbMForY4r3QMQ(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 62
    invoke-interface {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V
    .locals 2

    .line 39
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayAllButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayPopupButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayBgButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayAllButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayPopupButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda4;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->playlistCtrlPlayBgButton:Landroid/widget/LinearLayout;

    new-instance v0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static shouldShowHoldToAppendTip(Landroid/content/Context;)Z
    .locals 2

    .line 91
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120430

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static showHoldToAppendToastIfNeeded(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-static {p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->shouldShowHoldToAppendTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1201ee

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
