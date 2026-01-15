.class public final synthetic Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/fragment/app/Fragment;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$1:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$1:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->$r8$lambda$EW_3uSjuD2kFKgmtF8ycs__TrqY(Ljava/util/List;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
