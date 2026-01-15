.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;
.super Ljava/lang/Object;
.source "FeedGroupDialogViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation


# instance fields
.field private final query:Ljava/lang/String;

.field private final showOnlyUngrouped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter(query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showOnlyUngrouped="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
