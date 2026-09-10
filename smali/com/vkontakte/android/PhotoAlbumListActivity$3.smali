.class Lcom/vkontakte/android/PhotoAlbumListActivity$3;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->showEditAlbumDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

.field private final synthetic val$descr:Landroid/widget/EditText;

.field private final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$response:Landroid/os/Bundle;

.field private final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/os/Bundle;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$response:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$title:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$descr:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$response:Landroid/os/Bundle;

    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$response:Landroid/os/Bundle;

    const-string v1, "descr"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$descr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$response:Landroid/os/Bundle;

    const-string v1, "privacy"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$2(Lcom/vkontakte/android/PhotoAlbumListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 116
    return-void
.end method
