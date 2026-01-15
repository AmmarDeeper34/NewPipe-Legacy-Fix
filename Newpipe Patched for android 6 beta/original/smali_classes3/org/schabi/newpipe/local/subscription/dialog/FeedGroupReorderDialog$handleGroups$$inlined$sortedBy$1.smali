.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->handleGroups(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 102
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$handleGroups$$inlined$sortedBy$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
