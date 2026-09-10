.class Lcom/vkontakte/android/PhotoAlbumListActivity$2;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$privacyBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->val$privacyBtn:Landroid/widget/Button;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumListActivity$2;)Lcom/vkontakte/android/PhotoAlbumListActivity;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    const v1, 0x7f0a0017

    new-instance v2, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->val$privacyBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity$2;Landroid/widget/Button;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method
