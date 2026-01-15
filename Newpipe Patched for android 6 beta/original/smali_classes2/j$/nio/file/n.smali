.class public final synthetic Lj$/nio/file/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/p;


# instance fields
.field public final synthetic a:Ljava/nio/file/OpenOption;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/OpenOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/n;->a:Ljava/nio/file/OpenOption;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/OpenOption;)Lj$/nio/file/p;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/o;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/o;

    iget-object p0, p0, Lj$/nio/file/o;->a:Lj$/nio/file/p;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/LinkOption;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/LinkOption;

    .line 0
    sget-object p0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object p0

    .line 0
    :cond_2
    instance-of v0, p0, Lj$/nio/file/a0;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/a0;

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->s(Lj$/nio/file/a0;)Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/n;

    invoke-direct {v0, p0}, Lj$/nio/file/n;-><init>(Ljava/nio/file/OpenOption;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/n;->a:Ljava/nio/file/OpenOption;

    instance-of v1, p1, Lj$/nio/file/n;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/n;

    iget-object p1, p1, Lj$/nio/file/n;->a:Ljava/nio/file/OpenOption;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/n;->a:Ljava/nio/file/OpenOption;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
