.class public final synthetic Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/views/player/SecondsView;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/views/player/SecondsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->$r8$lambda$dh8O9apc2Z9aA1VJulHTSrVG0NA(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
