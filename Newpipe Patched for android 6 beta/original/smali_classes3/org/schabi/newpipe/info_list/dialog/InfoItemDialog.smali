.class public final Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;
.super Ljava/lang/Object;
.source "InfoItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$EW_3uSjuD2kFKgmtF8ycs__TrqY(Ljava/util/List;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    iget-object p0, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    invoke-interface {p0, p1, p2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;->onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GvWkkXCusVmKaVLy9Hx72RGomUw(I)[Ljava/lang/String;
    .locals 0

    .line 72
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$_w_mXzew8AWa2ExP1nKymvGWLM4(Landroid/app/Activity;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/List;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0a01e7

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01de

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    invoke-static {p4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 72
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 75
    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p4, p2, p3}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 78
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/List;Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
