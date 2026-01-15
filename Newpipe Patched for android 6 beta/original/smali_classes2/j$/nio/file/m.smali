.class public final Lj$/nio/file/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# static fields
.field public static final a:Lj$/nio/file/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 433
    new-instance v0, Lj$/nio/file/m;

    .line 428
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 433
    sput-object v0, Lj$/nio/file/m;->a:Lj$/nio/file/m;

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    .line 425
    check-cast p1, Lj$/nio/file/Path;

    const/4 p1, 0x1

    return p1
.end method
