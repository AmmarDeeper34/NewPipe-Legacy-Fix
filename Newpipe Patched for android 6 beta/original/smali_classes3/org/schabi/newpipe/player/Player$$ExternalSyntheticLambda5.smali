.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/TimestampChangeData;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/player/TimestampChangeData;

    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/player/TimestampChangeData;

    iget-boolean v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$2:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$HRdd8gx_C092aye61ADVk9ufirI(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/TimestampChangeData;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
