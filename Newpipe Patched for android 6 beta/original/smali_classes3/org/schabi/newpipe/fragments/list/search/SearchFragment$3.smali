.class Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 600
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 616
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 617
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$mgetSearchEditString(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 621
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->-$$Nest$fgetsuggestionPublisher(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
