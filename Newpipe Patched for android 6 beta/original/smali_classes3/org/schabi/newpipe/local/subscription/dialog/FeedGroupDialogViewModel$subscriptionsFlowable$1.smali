.class final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;
.super Ljava/lang/Object;
.source "FeedGroupDialogViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->apply(Ljava/lang/String;Z)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;Z)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;
    .locals 1

    const-string v0, "t1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
