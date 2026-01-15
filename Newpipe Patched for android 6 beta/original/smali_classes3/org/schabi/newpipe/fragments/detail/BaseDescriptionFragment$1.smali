.class Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "BaseDescriptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

.field final synthetic val$image:Lorg/schabi/newpipe/extractor/Image;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Lorg/schabi/newpipe/extractor/Image;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->val$image:Lorg/schabi/newpipe/extractor/Image;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->val$image:Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
