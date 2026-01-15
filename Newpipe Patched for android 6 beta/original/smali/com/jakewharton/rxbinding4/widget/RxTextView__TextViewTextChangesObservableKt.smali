.class abstract synthetic Lcom/jakewharton/rxbinding4/widget/RxTextView__TextViewTextChangesObservableKt;
.super Ljava/lang/Object;
.source "TextViewTextChangesObservable.kt"


# direct methods
.method public static final textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding4/InitialValueObservable;
    .locals 1

    const-string v0, "$this$textChanges"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method
