.class Lcom/vkontakte/android/UploadErrorActivity$1;
.super Ljava/lang/Object;
.source "UploadErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UploadErrorActivity;->makeDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UploadErrorActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploadErrorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UploadErrorActivity$1;->this$0:Lcom/vkontakte/android/UploadErrorActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/UploadErrorActivity$1;->this$0:Lcom/vkontakte/android/UploadErrorActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/UploadErrorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 34
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 35
    iget-object v2, p0, Lcom/vkontakte/android/UploadErrorActivity$1;->this$0:Lcom/vkontakte/android/UploadErrorActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/UploadErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "idx"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "idx":I
    sget-object v2, Lcom/vkontakte/android/Global;->errPosts:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewPostActivity;->post()V

    .line 40
    return-void
.end method
