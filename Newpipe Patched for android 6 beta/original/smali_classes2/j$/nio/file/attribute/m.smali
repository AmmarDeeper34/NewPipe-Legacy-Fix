.class public final synthetic Lj$/nio/file/attribute/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/attribute/FileAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/n;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/attribute/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/n;

    return-void
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/n;

    instance-of v1, p1, Lj$/nio/file/attribute/m;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/m;

    iget-object p1, p1, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/n;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/n;

    invoke-interface {v0}, Lj$/nio/file/attribute/n;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
