.class Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoAlbumListActivity$2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$privacyBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity$2;Landroid/widget/Button;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumListActivity$2;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->val$privacyBtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->val$context:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->val$privacyBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$2$1;->this$1:Lcom/vkontakte/android/PhotoAlbumListActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumListActivity$2;->access$0(Lcom/vkontakte/android/PhotoAlbumListActivity$2;)Lcom/vkontakte/android/PhotoAlbumListActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$1(Lcom/vkontakte/android/PhotoAlbumListActivity;I)V

    .line 99
    return-void
.end method
