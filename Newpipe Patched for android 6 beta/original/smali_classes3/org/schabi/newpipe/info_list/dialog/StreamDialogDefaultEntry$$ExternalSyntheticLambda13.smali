.class public final synthetic Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/Fragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;->f$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;->f$0:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$r8$lambda$9AQkpPhMyzu-eHW11HLwlOGa8IE(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
