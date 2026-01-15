.class public abstract Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalItemHolder.java"


# instance fields
.field protected final itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    return-void
.end method


# virtual methods
.method public abstract updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
.end method

.method public updateState(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 0

    .line 0
    return-void
.end method
