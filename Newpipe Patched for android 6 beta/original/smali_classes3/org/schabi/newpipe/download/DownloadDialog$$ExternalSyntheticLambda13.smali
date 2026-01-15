.class public final synthetic Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/download/DownloadDialog;

.field public final synthetic f$1:Lorg/schabi/newpipe/streams/io/StoredFileHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$lambda$5jmW7T85huIL5w7M2laOAnFXqOw(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
