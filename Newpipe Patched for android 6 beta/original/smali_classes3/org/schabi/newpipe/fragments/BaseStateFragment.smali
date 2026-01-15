.class public abstract Lorg/schabi/newpipe/fragments/BaseStateFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "BaseStateFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/schabi/newpipe/BaseFragment;"
    }
.end annotation


# instance fields
.field protected emptyStateMessageView:Landroid/widget/TextView;

.field protected emptyStateView:Landroid/view/View;

.field private errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

.field protected isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field protected wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    return-void
.end method

.method public handleError()V
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->getInstance()Lorg/schabi/newpipe/util/InfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x96

    .line 162
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 165
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_1
    return-void
.end method

.method public handleResult(Ljava/lang/Object;)V
    .locals 3

    .line 151
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    return-void
.end method

.method public final hideErrorPanel()V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->hide()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    return-void
.end method

.method public hideLoading()V
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x96

    .line 129
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 132
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a013b

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    const p2, 0x7f0a013a

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    const p2, 0x7f0a020e

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 74
    new-instance p2, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    new-instance v0, Lorg/schabi/newpipe/fragments/BaseStateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/BaseStateFragment;)V

    invoke-direct {p2, p0, p1, v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    return-void
.end method

.method public final isErrorPanelVisible()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 84
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method protected onRetryButtonClicked()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->reloadContent()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->doInitialLoadLogic()V

    return-void
.end method

.method public reloadContent()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    return-void
.end method

.method protected setEmptyStateMessage(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public showEmptyState()V
    .locals 5

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    .line 141
    invoke-static {v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 144
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    return-void
.end method

.method public final showError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 184
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    return-void

    .line 177
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showError() is detached or removing = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    .line 118
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    .line 121
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    return-void
.end method

.method public showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 3

    .line 222
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSnackBarError() called with: errorInfo = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public final showTextError(Ljava/lang/String;)V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showTextError(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTextError() is detached or removing = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected startLoading(Z)V
    .locals 3

    .line 104
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoading() called with: forceLoad = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 108
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
