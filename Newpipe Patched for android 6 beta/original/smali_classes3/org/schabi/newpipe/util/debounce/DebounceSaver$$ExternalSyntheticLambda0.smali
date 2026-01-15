.class public final synthetic Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/debounce/DebounceSaver;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/debounce/DebounceSaver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->$r8$lambda$1YsdjZk3KscteZM21ZBlBvBeymI(Lorg/schabi/newpipe/util/debounce/DebounceSaver;Ljava/lang/Long;)V

    return-void
.end method
