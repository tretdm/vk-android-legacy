.class Lcom/vkontakte/android/WallView$26;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->doShowUploadPhotosDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$28(Lcom/vkontakte/android/WallView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iput v1, v0, Lcom/vkontakte/android/WallActivity;->uploadAlbumID:I

    .line 1229
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallActivity;->showUploadPhotoBox()V

    .line 1230
    return-void
.end method
