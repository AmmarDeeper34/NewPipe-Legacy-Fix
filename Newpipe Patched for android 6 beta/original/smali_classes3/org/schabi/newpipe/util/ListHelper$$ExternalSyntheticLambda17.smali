.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {p1}, Lorg/schabi/newpipe/util/ListHelper;->$r8$lambda$H2z7gYTDbN7nqtc_eq90hqokK8Y(Lorg/schabi/newpipe/extractor/stream/VideoStream;)I

    move-result p1

    return p1
.end method
