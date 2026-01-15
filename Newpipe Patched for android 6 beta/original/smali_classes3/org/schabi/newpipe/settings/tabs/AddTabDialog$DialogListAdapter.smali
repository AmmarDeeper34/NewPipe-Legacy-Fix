.class final Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/AddTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogListAdapter"
.end annotation


# instance fields
.field private final fallbackIcon:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private final items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 61
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    const p1, 0x7f080167

    .line 62
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->fallbackIcon:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Lorg/schabi/newpipe/settings/tabs/AddTabDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;-><init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->getItem(I)Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->items:[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 77
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->getItem(I)Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    move-result-object p1

    iget p1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 84
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0078

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->getItem(I)Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    move-result-object p1

    const p3, 0x7f0a03b5

    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0a03b7

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    iget v1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemIcon:I

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;->fallbackIcon:I

    :goto_0
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
