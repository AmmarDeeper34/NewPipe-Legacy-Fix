.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 85
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->access$getSearchLayoutBinding(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    iput-object p1, p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 87
    invoke-static {p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->access$getViewModel$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "viewModel"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptionsBy(Ljava/lang/String;)V

    return-void
.end method
