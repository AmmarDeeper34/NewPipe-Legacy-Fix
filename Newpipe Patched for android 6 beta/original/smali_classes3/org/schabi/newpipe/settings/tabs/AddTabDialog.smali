.class public final Lorg/schabi/newpipe/settings/tabs/AddTabDialog;
.super Ljava/lang/Object;
.source "AddTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;,
        Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;
    }
.end annotation


# instance fields
.field private final dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120480

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;-><init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Lorg/schabi/newpipe/settings/tabs/AddTabDialog-IA;)V

    .line 26
    invoke-virtual {v0, v1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
