.class Lorg/schabi/newpipe/info_list/InfoListAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "InfoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/info_list/InfoListAdapter;->getSpanSizeLookup(I)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/info_list/InfoListAdapter;

.field final synthetic val$spanCount:I


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/info_list/InfoListAdapter;I)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->this$0:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    iput p2, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->val$spanCount:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->this$0:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 348
    :cond_1
    :goto_0
    iget p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->val$spanCount:I

    return p1
.end method
