.class public abstract Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InfoItemHolder.java"


# instance fields
.field protected final itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    return-void
.end method


# virtual methods
.method public abstract updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
.end method
