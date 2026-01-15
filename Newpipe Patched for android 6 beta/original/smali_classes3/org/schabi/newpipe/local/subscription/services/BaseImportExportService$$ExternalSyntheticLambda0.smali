.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/reactivex/rxjava3/core/Flowable;

    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->$r8$lambda$hyuQR1PlTOSUBCB5q2ynygg42A4(Lio/reactivex/rxjava3/core/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
