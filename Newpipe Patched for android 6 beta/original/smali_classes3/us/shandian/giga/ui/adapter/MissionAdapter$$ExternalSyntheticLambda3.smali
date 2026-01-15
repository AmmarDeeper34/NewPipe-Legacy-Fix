.class public final synthetic Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/streams/io/StoredFileHelper;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iput p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->$r8$lambda$emuUWZdZhoZXSjh77UP1B3iJ2GA(Lorg/schabi/newpipe/streams/io/StoredFileHelper;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
