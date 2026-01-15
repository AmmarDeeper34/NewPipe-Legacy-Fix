.class public final synthetic Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lokhttp3/Request$Builder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request$Builder;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$0:Lokhttp3/Request$Builder;

    iput-object p2, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$0:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/DownloaderImpl;->$r8$lambda$itw8KeL-_jtcLpiu-p6jIs5GGlU(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
