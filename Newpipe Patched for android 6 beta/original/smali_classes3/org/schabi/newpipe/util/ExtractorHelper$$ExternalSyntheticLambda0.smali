.class public final synthetic Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Supplier;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/schabi/newpipe/util/InfoCache$Type;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/util/InfoCache$Type;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/util/InfoCache$Type;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->$r8$lambda$r-4UjdLJNmu87LXGAoTOS6t7QRU(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lio/reactivex/rxjava3/core/MaybeSource;

    move-result-object v0

    return-object v0
.end method
