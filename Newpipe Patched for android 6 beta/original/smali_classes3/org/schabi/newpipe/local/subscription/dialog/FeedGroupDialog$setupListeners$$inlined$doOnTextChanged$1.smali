.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;
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

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

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
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-static {p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->access$getFeedGroupCreateBinding(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->access$getFeedGroupCreateBinding(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
