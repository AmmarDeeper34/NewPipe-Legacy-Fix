.class Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;
.super Ljava/lang/Object;
.source "ChannelFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0f0004

    .line 144
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-static {}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->access$100(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() called with: menu = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], inflater = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    return v2

    .line 184
    :sswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {v3}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v3

    .line 185
    invoke-static {p1, v2, v0, v3}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 173
    :sswitch_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :sswitch_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetcurrentInfo(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :sswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 166
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 167
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$msetNotify(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Z)V

    goto :goto_0

    .line 170
    :sswitch_4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSettings(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0053 -> :sswitch_4
        0x7f0a023b -> :sswitch_3
        0x7f0a023c -> :sswitch_2
        0x7f0a0242 -> :sswitch_1
        0x7f0a0243 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    const v1, 0x7f0a0242

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fputmenuRssButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/MenuItem;)V

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    const v1, 0x7f0a023b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fputmenuNotifyButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Landroid/view/MenuItem;)V

    .line 157
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$mupdateRssButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 158
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$fgetchannelSubscription(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->-$$Nest$mupdateNotifyButton(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-void
.end method
