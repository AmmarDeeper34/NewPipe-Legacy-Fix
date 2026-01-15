.class public final synthetic Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->$r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
