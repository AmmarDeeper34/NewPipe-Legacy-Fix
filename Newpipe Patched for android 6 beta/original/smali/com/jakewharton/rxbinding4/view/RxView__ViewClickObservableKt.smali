.class abstract synthetic Lcom/jakewharton/rxbinding4/view/RxView__ViewClickObservableKt;
.super Ljava/lang/Object;
.source "ViewClickObservable.kt"


# direct methods
.method public static final clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1

    const-string v0, "$this$clicks"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Landroid/view/View;)V

    return-object v0
.end method
