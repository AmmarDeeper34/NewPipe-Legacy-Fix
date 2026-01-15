.class public final synthetic Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$lambda$MhFgJnenVGoUMXMF5CiMtwtEGLs(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
