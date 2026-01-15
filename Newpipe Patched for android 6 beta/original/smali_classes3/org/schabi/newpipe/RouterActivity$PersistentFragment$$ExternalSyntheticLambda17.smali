.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda17;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda17;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda17;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda17;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->$r8$lambda$oalGgXnTtXnODd9zc0877GIH03w(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
