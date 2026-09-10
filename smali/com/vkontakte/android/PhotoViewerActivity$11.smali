.class Lcom/vkontakte/android/PhotoViewerActivity$11;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->doDeletePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->val$pdlg:Landroid/app/ProgressDialog;

    .line 331
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.PHOTO_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "aid"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->finish()V

    .line 340
    return-void
.end method
