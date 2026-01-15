.class public final synthetic Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final acceptStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->$r8$lambda$IgW3_UBr7XfEymN8SvL2yhtEQg4(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V

    return-void
.end method
