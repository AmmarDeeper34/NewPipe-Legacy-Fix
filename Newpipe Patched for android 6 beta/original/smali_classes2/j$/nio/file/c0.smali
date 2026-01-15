.class public abstract Lj$/nio/file/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/nio/file/b0;

.field public static final b:Lj$/nio/file/b0;

.field public static final c:Lj$/nio/file/b0;

.field public static final d:Lj$/nio/file/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lj$/nio/file/b0;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "OVERFLOW"

    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lj$/nio/file/c0;->a:Lj$/nio/file/b0;

    .line 58
    new-instance v0, Lj$/nio/file/b0;

    const-class v1, Lj$/nio/file/Path;

    const-string v3, "ENTRY_CREATE"

    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lj$/nio/file/c0;->b:Lj$/nio/file/b0;

    .line 69
    new-instance v0, Lj$/nio/file/b0;

    const-class v1, Lj$/nio/file/Path;

    const-string v3, "ENTRY_DELETE"

    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lj$/nio/file/c0;->c:Lj$/nio/file/b0;

    .line 80
    new-instance v0, Lj$/nio/file/b0;

    const-class v1, Lj$/nio/file/Path;

    const-string v3, "ENTRY_MODIFY"

    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lj$/nio/file/c0;->d:Lj$/nio/file/b0;

    return-void
.end method
