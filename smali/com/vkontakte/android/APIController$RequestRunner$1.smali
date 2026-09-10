.class Lcom/vkontakte/android/APIController$RequestRunner$1;
.super Ljava/lang/Object;
.source "APIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIController$RequestRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/APIController$RequestRunner;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIController$RequestRunner;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iput-object p2, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v2, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    :cond_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v3, -0x3

    const-string v4, "Callback invocation failed (parse error?)"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v3, -0x2

    const-string v4, "Response parse failed"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
