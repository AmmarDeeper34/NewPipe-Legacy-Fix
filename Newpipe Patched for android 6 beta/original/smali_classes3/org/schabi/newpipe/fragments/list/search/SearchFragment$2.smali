.class Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSearchListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionItemInserted(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$fgetsearchEditText(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$fgetsearchEditText(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$fgetsearchEditText(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onSuggestionItemLongClick(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 1

    .line 591
    iget-boolean v0, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$mshowDeleteSuggestionDialog(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    :cond_0
    return-void
.end method

.method public onSuggestionItemSelected(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 4

    .line 579
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$msearch(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$fgetsearchEditText(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
