.class Lcom/xwray/groupie/AsyncDiffUtil;
.super Ljava/lang/Object;
.source "AsyncDiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xwray/groupie/AsyncDiffUtil$Callback;
    }
.end annotation


# instance fields
.field private final asyncDiffUtilCallback:Lcom/xwray/groupie/AsyncDiffUtil$Callback;

.field private groups:Ljava/util/Collection;

.field private maxScheduledGeneration:I


# direct methods
.method constructor <init>(Lcom/xwray/groupie/AsyncDiffUtil$Callback;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xwray/groupie/AsyncDiffUtil;->asyncDiffUtilCallback:Lcom/xwray/groupie/AsyncDiffUtil$Callback;

    return-void
.end method


# virtual methods
.method calculateDiff(Ljava/util/Collection;Landroidx/recyclerview/widget/DiffUtil$Callback;Lcom/xwray/groupie/OnAsyncUpdateListener;Z)V
    .locals 6

    .line 49
    iput-object p1, p0, Lcom/xwray/groupie/AsyncDiffUtil;->groups:Ljava/util/Collection;

    .line 51
    iget p1, p0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    .line 52
    new-instance v0, Lcom/xwray/groupie/DiffTask;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xwray/groupie/DiffTask;-><init>(Lcom/xwray/groupie/AsyncDiffUtil;Landroidx/recyclerview/widget/DiffUtil$Callback;IZLcom/xwray/groupie/OnAsyncUpdateListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method getAsyncDiffUtilCallback()Lcom/xwray/groupie/AsyncDiffUtil$Callback;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xwray/groupie/AsyncDiffUtil;->asyncDiffUtilCallback:Lcom/xwray/groupie/AsyncDiffUtil$Callback;

    return-object v0
.end method

.method getGroups()Ljava/util/Collection;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xwray/groupie/AsyncDiffUtil;->groups:Ljava/util/Collection;

    return-object v0
.end method

.method getMaxScheduledGeneration()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    return v0
.end method
