.class public abstract Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;
.super Ljava/lang/Object;
.source "VideoDetailPlayerCrasher.java"


# static fields
.field private static final AVAILABLE_EXCEPTION_TYPES:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$3I5R0eAt8nLspGFWYV94-DyzxeU()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dummy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$53PBvmfR9sWXvS6eFaRnkB9MgDA()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 7

    .line 53
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Dummy"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0xfa3

    const-string v1, "Dummy renderer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LsxUv0bLtF24jLcANI9ghsJf5zk(Lorg/schabi/newpipe/player/Player;Landroid/util/Pair;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->tryCrashPlayerWith(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 119
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$pNS6pAawBre0fMbdi-goK-Dlmjo()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Dummy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$yCQWrgqjlgu3xibIfR-H8O_2V5U()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 66
    const-string v0, "Dummy"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRemote(Ljava/lang/String;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "Source"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "Renderer"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "Unexpected"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda3;-><init>()V

    const-string v5, "Remote"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->AVAILABLE_EXCEPTION_TYPES:Ljava/util/List;

    return-void
.end method

.method private static getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 74
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 76
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f130177

    goto :goto_0

    :cond_0
    const v1, 0x7f130149

    .line 78
    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static onCrashThePlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/Player;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    const-string p1, "VideoDetPlayerCrasher"

    const-string v1, "Player is not available"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;

    move-result-object v2

    .line 100
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "Choose an exception"

    .line 101
    invoke-virtual {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v3, 0x1

    .line 103
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v3, 0x7f120070

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 107
    sget-object v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->AVAILABLE_EXCEPTION_TYPES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 108
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->getRoot()Landroid/widget/RadioButton;

    move-result-object v5

    .line 109
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v6, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;

    invoke-direct {v6, p1, v4, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/player/Player;Landroid/util/Pair;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v4, v2, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->list:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static tryCrashPlayerWith(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 137
    const-string v0, "Crashing the player using player.onPlayerError(ex)"

    const-string v1, "VideoDetPlayerCrasher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 141
    const-string p1, "Run into an exception while crashing the player:"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
