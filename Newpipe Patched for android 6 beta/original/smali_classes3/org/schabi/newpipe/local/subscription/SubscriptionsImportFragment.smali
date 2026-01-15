.class public Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "SubscriptionsImportFragment.java"


# instance fields
.field currentServiceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private infoTextView:Landroid/widget/TextView;

.field private inputButton:Landroid/widget/Button;

.field private inputText:Landroid/widget/EditText;

.field private instructionsString:I

.field private relatedUrl:Ljava/lang/String;

.field private final requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private supportedSources:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$5XI1IVI6YWumpsIV3GCbRidXomE(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->requestImportFileResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RxC3whzAM032XPq4umlzTxNovOk(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->lambda$initListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 67
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;)V

    .line 68
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static getInstance(I)Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;
    .locals 1

    .line 71
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;-><init>()V

    .line 72
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInitialData(I)V

    return-object v0
.end method

.method private synthetic lambda$initListeners$0(Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->onImportClicked()V

    return-void
.end method

.method private onImportClicked()V
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->onImportUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->onImportFile()V

    return-void
.end method

.method private requestImportFileResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    .line 189
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_mode"

    const/4 v2, 0x1

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_service_id"

    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setInfoText(Ljava/lang/String;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;I)Z

    return-void
.end method

.method private setInitialData(I)V
    .locals 0

    .line 77
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    return-void
.end method

.method private setupServiceVariables()V
    .locals 2

    .line 207
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 209
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->getSupportedSources()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    .line 212
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->getRelatedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    .line 213
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getImportInstructions(I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 219
    :catch_0
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    return-void
.end method


# virtual methods
.method protected initListeners()V
    .locals 2

    .line 155
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a01d2

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    const p2, 0x7f0a01d3

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    const p2, 0x7f0a01d1

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->infoTextView:Landroid/widget/TextView;

    .line 128
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    sget-object p2, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const v0, 0x7f12020d

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getImportInstructionsHint(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputButton:Landroid/widget/Button;

    const v1, 0x7f120204

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :goto_0
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_1
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->instructionsString:I

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->relatedUrl:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, p2

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_2
    const-string p1, ""

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setInfoText(Ljava/lang/String;)V

    .line 146
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 149
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->setupServiceVariables()V

    .line 89
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->supportedSources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    iget v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f1201e1

    const-string v3, "Service does not support importing subscriptions"

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 90
    invoke-static {p1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onImportFile()V
    .locals 4

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "*/*"

    .line 182
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 178
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onImportUrl(Ljava/lang/String;)V
    .locals 3

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_mode"

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_value"

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_service_id"

    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const v0, 0x7f12020d

    .line 102
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
