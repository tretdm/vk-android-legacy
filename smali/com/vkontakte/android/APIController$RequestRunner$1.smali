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

.field private final synthetic val$networkFail:Z

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIController$RequestRunner;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iput-object p2, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$networkFail:Z

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0xe

    .line 320
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    check-cast v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    iget v1, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    if-ne v1, v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/16 v3, 0xe

    const-string v4, "Flood control"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
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

    .line 341
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 342
    :cond_0
    return-void

    .line 325
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v2, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Callback exception"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v3, -0x3

    const-string v4, "Callback invocation failed (parse error?)"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_2
    iget-boolean v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->val$networkFail:Z

    if-eqz v1, :cond_4

    .line 333
    sget-boolean v1, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Request "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed with network error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v3, -0x1

    const-string v4, "I/O Error"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_4
    sget-boolean v1, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Request "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v1, v1, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed with other error (malformed response?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/APIController$RequestRunner$1;->this$1:Lcom/vkontakte/android/APIController$RequestRunner;

    iget-object v1, v1, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    new-instance v2, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v3, -0x2

    const-string v4, "Response parse failed"

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
