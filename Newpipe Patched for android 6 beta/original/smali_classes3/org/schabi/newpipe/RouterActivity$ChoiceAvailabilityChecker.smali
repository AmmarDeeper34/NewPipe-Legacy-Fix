.class Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;
.super Ljava/lang/Object;
.source "RouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/RouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChoiceAvailabilityChecker"
.end annotation


# instance fields
.field private final availableChoices:Ljava/util/List;

.field private final selectedChoiceKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/schabi/newpipe/RouterActivity;


# direct methods
.method public static synthetic $r8$lambda$0WUbnSI7eltuF-_SGTB5gJFQwCQ(Ljava/lang/String;Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;)Z
    .locals 0

    .line 409
    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/RouterActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->this$0:Lorg/schabi/newpipe/RouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->availableChoices:Ljava/util/List;

    .line 387
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->selectedChoiceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailableChoices()Ljava/util/List;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->availableChoices:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedChoiceKey()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->selectedChoiceKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableAndSelected(I)Z
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->this$0:Lorg/schabi/newpipe/RouterActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->selectedChoiceKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;->availableChoices:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public varargs isAvailableAndSelected([I)Z
    .locals 1

    .line 399
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker;)V

    invoke-interface {p1, v0}, Lj$/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method
