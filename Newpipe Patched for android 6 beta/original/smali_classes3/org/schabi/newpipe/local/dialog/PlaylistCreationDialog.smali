.class public final Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;
.super Lorg/schabi/newpipe/local/dialog/PlaylistDialog;
.source "PlaylistCreationDialog.java"


# direct methods
.method public static synthetic $r8$lambda$NAMj_qZBLggTL5La-w8Rnk-kxT4(Landroid/widget/Toast;Ljava/util/List;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$i7zeukCwk8I8LNb2F7QoVkzgsRw(Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;->lambda$onCreateDialog$1(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 61
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f120376

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    .line 68
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->createPlaylist(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 69
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Toast;)V

    .line 70
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;
    .locals 1

    .line 32
    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;-><init>()V

    .line 33
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->setStreamEntities(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogEditTextBinding;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/ThemeHelper;->getDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 51
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const v1, 0x7f1202e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 52
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 54
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ThemeHelper;->getDialogTheme(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1200c4

    .line 56
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;)V

    const p1, 0x7f1200c1

    .line 60
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
