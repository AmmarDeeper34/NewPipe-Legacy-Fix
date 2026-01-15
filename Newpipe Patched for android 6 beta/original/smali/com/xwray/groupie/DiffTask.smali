.class Lcom/xwray/groupie/DiffTask;
.super Landroid/os/AsyncTask;
.source "DiffTask.java"


# instance fields
.field private final asyncListDiffer:Ljava/lang/ref/WeakReference;

.field private backgroundException:Ljava/lang/Exception;

.field private final detectMoves:Z

.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

.field private final runGeneration:I


# direct methods
.method constructor <init>(Lcom/xwray/groupie/AsyncDiffUtil;Landroidx/recyclerview/widget/DiffUtil$Callback;IZLcom/xwray/groupie/OnAsyncUpdateListener;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    .line 31
    iput-object p2, p0, Lcom/xwray/groupie/DiffTask;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 32
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xwray/groupie/DiffTask;->asyncListDiffer:Ljava/lang/ref/WeakReference;

    .line 33
    iput p3, p0, Lcom/xwray/groupie/DiffTask;->runGeneration:I

    .line 34
    iput-boolean p4, p0, Lcom/xwray/groupie/DiffTask;->detectMoves:Z

    if-eqz p5, :cond_0

    .line 36
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xwray/groupie/DiffTask;->onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private shouldDispatchResult(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Lcom/xwray/groupie/AsyncDiffUtil;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 67
    iget p1, p0, Lcom/xwray/groupie/DiffTask;->runGeneration:I

    invoke-virtual {p2}, Lcom/xwray/groupie/AsyncDiffUtil;->getMaxScheduledGeneration()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/xwray/groupie/DiffTask;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    iget-boolean v0, p0, Lcom/xwray/groupie/DiffTask;->detectMoves:Z

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    iput-object p1, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xwray/groupie/DiffTask;->doInBackground([Ljava/lang/Void;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xwray/groupie/DiffTask;->asyncListDiffer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xwray/groupie/AsyncDiffUtil;

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/xwray/groupie/DiffTask;->shouldDispatchResult(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Lcom/xwray/groupie/AsyncDiffUtil;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xwray/groupie/AsyncDiffUtil;->getAsyncDiffUtilCallback()Lcom/xwray/groupie/AsyncDiffUtil$Callback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xwray/groupie/AsyncDiffUtil;->getGroups()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xwray/groupie/AsyncDiffUtil$Callback;->onDispatchAsyncResult(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v0}, Lcom/xwray/groupie/AsyncDiffUtil;->getAsyncDiffUtilCallback()Lcom/xwray/groupie/AsyncDiffUtil$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 60
    iget-object p1, p0, Lcom/xwray/groupie/DiffTask;->onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/xwray/groupie/DiffTask;->onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xwray/groupie/OnAsyncUpdateListener;

    invoke-interface {p1}, Lcom/xwray/groupie/OnAsyncUpdateListener;->onUpdateComplete()V

    :cond_0
    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v0, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-virtual {p0, p1}, Lcom/xwray/groupie/DiffTask;->onPostExecute(Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    return-void
.end method
