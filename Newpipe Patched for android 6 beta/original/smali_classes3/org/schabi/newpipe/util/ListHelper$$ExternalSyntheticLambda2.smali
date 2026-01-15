.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->$r8$lambda$nlc0XXRsDCyj0xxGpbt2iWOtBRw(ZLorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)I

    move-result p1

    return p1
.end method
